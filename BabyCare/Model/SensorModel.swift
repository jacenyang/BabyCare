//
//  SensorModel.swift
//  BabyCare
//
//  Created by Jason Yang on 25/11/20.
//

import UIKit

struct SensorModel {
    
    var isoDate: String
    let cabinTemp: String
    let humidity: String
    let pulse: String
    let babyTemp: String
    let weight: String
    
    var cabinTempString: String {
        let cabinTempDouble = Double(cabinTemp)
        return String(format: "%.1f", cabinTempDouble!) + " ℃"
    }
    
    var humidityString: String {
        let humidityDouble = Double(humidity)
        return String(format: "%.0f", humidityDouble!) + " %"
    }
    
    var pulseString: String {
        return pulse + " BPM"
    }
    
    var pulseDesc: String {
        let pulseNumber = Int(pulse)!
        switch pulseNumber {
        case 1..<170:
            return "Melambat"
        case 170...190:
            return "Normal"
        case 191..<300:
            return "Meningkat"
        default:
            return "Diluar batas"
        }
    }
    
    var pulseColor: UIColor {
        let pulseNumber = Int(pulse)!
        switch pulseNumber {
        case 1..<170:
            return UIColor.red
        case 170...190:
            return UIColor.green
        case 191..<300:
            return UIColor.red
        default:
            return UIColor.red
        }
    }
    
    var pulseAnimation: String {
        let pulseRoundedDouble = Double(pulse)
        let pulseRoundedString = String(format: "%0.0f", pulseRoundedDouble!)
        let pulseNumber = Double(pulseRoundedString)!
        switch pulseNumber {
        case 1..<170:
            return "lowPulse"
        case 170...190:
            return "normalPulse"
        case 191..<300:
            return "highPulse"
        default:
            return "highPulse"
        }
    }
    
    var babyTempString: String {
        let babyTempDouble = Double(babyTemp)
        return String(format: "%.1f", babyTempDouble!) + " ℃"
    }
    
    var babyTempDesc: String {
        let babyTempRoundedDouble = Double(babyTemp)
        let babyTempRoundedString = String(format: "%0.1f", babyTempRoundedDouble!)
        let babyTempNumber = Double(babyTempRoundedString)!
        switch babyTempNumber {
        case 0.1..<36.5:
            return "Menurun"
        case 36.5...37.5:
            return "Normal"
        case 37.6..<40:
            return "Meningkat"
        default:
            return "Diluar batas"
        }
    }
    
    var babyTempColor: UIColor {
        let babyTempRoundedDouble = Double(babyTemp)
        let babyTempRoundedString = String(format: "%0.1f", babyTempRoundedDouble!)
        let babyTempNumber = Double(babyTempRoundedString)!
        switch babyTempNumber {
        case 0.1..<36.5:
            return UIColor.red
        case 36.5...37.5:
            return UIColor.green
        case 37.6..<40:
            return UIColor.red
        default:
            return UIColor.red
        }
    }
    
    var babyTempAnimation: String {
        let babyTempRoundedDouble = Double(babyTemp)
        let babyTempRoundedString = String(format: "%0.1f", babyTempRoundedDouble!)
        let babyTempNumber = Double(babyTempRoundedString)!
        switch babyTempNumber {
        case 0.1..<36.5:
            return "lowTemp"
        case 36.5...37.5:
            return "normalTemp"
        case 37.6..<40:
            return "highTemp"
        default:
            return "highTemp"
        }
    }
    
    var weightToKgString: String {
        let weightToKgDouble = Double(weight)! / 1000
        return String(format: "%.1f", weightToKgDouble) + " kg"
    }
    
    var date: String {
        let splitDate = isoDate.split(separator: "T")
        return String(splitDate[0])
    }
    
    var time: String {
        let splitTime = isoDate.split(separator: "T")
        return String(splitTime[1].dropLast())
    }
    
    var dateFormat: Date {
        let dateFormatter = ISO8601DateFormatter()
        let date = dateFormatter.date(from: isoDate)!
        let calendar = Calendar.current
        let components = calendar.dateComponents([.year, .month, .day, .hour], from: date)
        let finalDate = calendar.date(from: components)!
        return finalDate
    }
    
}
