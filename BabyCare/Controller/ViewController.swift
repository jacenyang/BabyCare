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
    @IBOutlet weak var tempImageView: UIImageView!
    @IBOutlet weak var pulseImageView: UIImageView!
    @IBOutlet weak var tempLabel: UILabel!
    @IBOutlet weak var pulseLabel: UILabel!
    @IBOutlet weak var conditionLabel: UILabel!
    
    let defaults = UserDefaults.standard
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = "Hai Bunda!"
        bigView.layer.cornerRadius = 15
        smallView.layer.cornerRadius = 15
        
        conditionLabel.textColor = UIColor(red: 56/255, green: 87/255, blue: 81/255, alpha: 1.0)
        conditionLabel.text = "Bunda, suhu Bubu meningkat nih, tolong cek ya Bun!"
        
        tempLabel.textColor = .systemRed
        tempLabel.text = "Meningkat"
        
        pulseLabel.textColor = .systemRed
        pulseLabel.text = "Meningkat"
        
        tempImageView.animationImages = animatedImages(for: "highTemp")
        tempImageView.animationDuration = 1
        tempImageView.animationRepeatCount = 0
        tempImageView.image = tempImageView.animationImages?.first
        tempImageView.startAnimating()
        
        pulseImageView.animationImages = animatedImages(for: "highPulse")
        pulseImageView.animationDuration = 1
        pulseImageView.animationRepeatCount = 0
        pulseImageView.image = tempImageView.animationImages?.first
        pulseImageView.startAnimating()
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

//extension ViewController: SensorManagerDelegate {
//
//    func didUpdateSensor(_ sensorManager: SensorManager, sensor: SensorModel) {
//        <#code#>
//    }
//    
//    func didFailWithError(error: Error) {
//        <#code#>
//    }
//
//}

//MARK: - Core

class Core {
    
    static let shared = Core()
    let defaults = UserDefaults.standard
    
    func isNewUser() -> Bool {
        return !defaults.bool(forKey: "isNewUser")
    }
    
    func setIsNotNewUser() {
        defaults.set(true, forKey: "isNewUser")
    }
    
}
