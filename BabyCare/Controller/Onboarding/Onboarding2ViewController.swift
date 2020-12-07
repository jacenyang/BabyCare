//
//  Onboarding2ViewController.swift
//  BabyCare
//
//  Created by Jason Yang on 07/12/20.
//

import UIKit

class Onboarding2ViewController: UIViewController {

    @IBOutlet weak var button: UIButton!
    @IBOutlet weak var checkBox: CheckBox!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        checkBox.style = .tick
        checkBox.borderStyle = .roundedSquare(radius: 2)
        
        button.layer.cornerRadius = 10
    }
    
    @IBAction func button(_ sender: UIButton) {
        if checkBox.isChecked == true {
            performSegue(withIdentifier: "goToOnboarding3", sender: nil)
        }
    }

}
