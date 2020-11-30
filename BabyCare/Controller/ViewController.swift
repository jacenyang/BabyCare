//
//  ViewController.swift
//  BabyCare
//
//  Created by Jason Yang on 23/11/20.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var bigView: UIView!
    @IBOutlet weak var smallView: UIView!
    @IBOutlet weak var babyTempImageView: UIImageView!
    @IBOutlet weak var pulseImageView: UIImageView!
    @IBOutlet weak var babyTempLabel: UILabel!
    @IBOutlet weak var pulseLabel: UILabel!
    @IBOutlet weak var conditionLabel: UILabel!
    
    var sensorManager = SensorManager()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        sensorManager.delegate = self
        sensorManager.fetchSensor()
        setup()
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        if Core.shared.isNewUser(){
            let storyboard = UIStoryboard(name: "Onboarding", bundle: nil)
            let vc = storyboard.instantiateViewController(identifier: "onboarding") as! OnboardingViewController
            vc.modalPresentationStyle = .fullScreen
            present(vc, animated: true)
        }
    }
    
    func setup() {
        title = "Hai, Bunda!"
        bigView.layer.cornerRadius = 15
        smallView.layer.cornerRadius = 15
    }
    
    func animatedImages(for name: String) -> [UIImage] {
        
        var i = 0
        var images = [UIImage]()
        
        while let image = UIImage(named: "\(name)/\(i)") {
            images.append(image)
            i += 1
        }
        return images
        
    }
    
}

//MARK: - SensorManagerDelegate

extension ViewController: SensorManagerDelegate {
    
    func didUpdateSensor(_ sensorManager: SensorManager, sensor: SensorModel) {
        DispatchQueue.main.async {
            self.babyTempLabel.textColor = sensor.babyTempColor
            self.babyTempLabel.text = sensor.babyTempDesc
//            self.babyTempLabel.textColor = UIColor.red
//            self.babyTempLabel.text = "Menurun"
            
            self.pulseLabel.textColor = sensor.pulseColor
            self.pulseLabel.text = sensor.pulseDesc
//            self.pulseLabel.textColor = UIColor.red
//            self.pulseLabel.text = "Melambat"
            
            self.babyTempImageView.animationImages = self.animatedImages(for: sensor.babyTempAnimation)
//            self.babyTempImageView.animationImages = self.animatedImages(for: "lowTemp")
            self.babyTempImageView.animationDuration = 1
            self.babyTempImageView.animationRepeatCount = 0
            self.babyTempImageView.image = self.babyTempImageView.animationImages?.first
            self.babyTempImageView.startAnimating()
            
            self.pulseImageView.animationImages = self.animatedImages(for: sensor.pulseAnimation)
//            self.pulseImageView.animationImages = self.animatedImages(for: "lowPulse")
            self.pulseImageView.animationDuration = 1
            self.pulseImageView.animationRepeatCount = 0
            self.pulseImageView.image = self.babyTempImageView.animationImages?.first
            self.pulseImageView.startAnimating()
            
            self.conditionLabel.textColor = sensor.conditionColor
            self.conditionLabel.text = sensor.conditionString
//            self.conditionLabel.textColor = UIColor.red
//            self.conditionLabel.text = "Bunda suhu badan dan denyut jantung Bubu menurun nih, segera hubungi dokter ya Bun!"
        }
    }
    
    func didFailWithError(error: Error) {
        print(error)
    }

}

//MARK: - Core

class Core {
    
    static let shared = Core()
    
    func isNewUser() -> Bool {
        return !UserDefaults.standard.bool(forKey: "isNewUser")
    }
    
    func setIsNotNewUser() {
        UserDefaults.standard.set(true, forKey: "isNewUser")
    }
    
}
