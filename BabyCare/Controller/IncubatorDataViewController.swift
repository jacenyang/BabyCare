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
    
    @IBOutlet weak var firstViewButton: UIButton!
    @IBOutlet weak var secondViewButton: UIButton!
    @IBOutlet weak var thirdViewButton: UIButton!
    @IBOutlet weak var fourthViewButton: UIButton!
    @IBOutlet weak var fifthViewButton: UIButton!
    
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
        firstViewButton.layer.cornerRadius = 15
        firstViewButton.layer.opacity = 0.5
        
        secondView.layer.cornerRadius = 15
        secondViewButton.layer.cornerRadius = 15
        secondViewButton.layer.opacity = 0.5
        
        thirdView.layer.cornerRadius = 15
        thirdViewButton.layer.cornerRadius = 15
        thirdViewButton.layer.opacity = 0.5
        
        fourthView.layer.cornerRadius = 15
        fourthViewButton.layer.cornerRadius = 15
        fourthViewButton.layer.opacity = 0.5
        
        fifthView.layer.cornerRadius = 15
        fifthViewButton.layer.cornerRadius = 15
        fifthViewButton.layer.opacity = 0.5
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
