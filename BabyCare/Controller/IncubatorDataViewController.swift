//
//  IndicatorsViewController.swift
//  BabyCare
//
//  Created by Jason Yang on 26/11/20.
//

import UIKit

class IncubatorDataViewController: UIViewController {

    @IBOutlet weak var firstView: UIView!
    @IBOutlet weak var secondView: UIView!
    @IBOutlet weak var thirdView: UIView!
    @IBOutlet weak var fourthView: UIView!
    @IBOutlet weak var fifthView: UIView!
    
    @IBOutlet weak var babyTempLabel: UILabel!
    @IBOutlet weak var pulseLabel: UILabel!
    @IBOutlet weak var cabinTempLabel: UILabel!
    @IBOutlet weak var humidityLabel: UILabel!
    @IBOutlet weak var weightLabel: UILabel!
    
    var sensorManager = SensorManager()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setup()
    }
    
    func setup() {
        title = "Data Inkubator"
        
        sensorManager.delegate = self
        sensorManager.fetchSensor()
        
        firstView.layer.cornerRadius = 15
        secondView.layer.cornerRadius = 15
        thirdView.layer.cornerRadius = 15
        fourthView.layer.cornerRadius = 15
        fifthView.layer.cornerRadius = 15
    }
    
}

//MARK: - SensorManagerDelegate

extension IncubatorDataViewController: SensorManagerDelegate {
    
    func didUpdateSensor(_ sensorManager: SensorManager, sensor: SensorModel) {
        DispatchQueue.main.async {
            self.babyTempLabel.text = sensor.babyTempString
            self.pulseLabel.text = sensor.pulseString
            self.cabinTempLabel.text = sensor.cabinTempString
            self.humidityLabel.text = sensor.humidityString
            self.weightLabel.text = sensor.weightToKgString
        }
    }
    
    func didFailWithError(error: Error) {
        print(error)
    }
    
}
