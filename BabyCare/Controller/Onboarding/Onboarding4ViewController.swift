//
//  Onboarding4ViewController.swift
//  BabyCare
//
//  Created by Jason Yang on 07/12/20.
//

import UIKit

class Onboarding4ViewController: UIViewController {

    @IBOutlet weak var checkBox1: CheckBox!
    @IBOutlet weak var checkBox2: CheckBox!
    @IBOutlet weak var checkBox3: CheckBox!
    @IBOutlet weak var checkBox4: CheckBox!
    @IBOutlet weak var checkBox5: CheckBox!
    @IBOutlet weak var button: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        checkBox1.style = .tick
        checkBox1.borderStyle = .roundedSquare(radius: 2)
        checkBox2.style = .tick
        checkBox2.borderStyle = .roundedSquare(radius: 2)
        checkBox3.style = .tick
        checkBox3.borderStyle = .roundedSquare(radius: 2)
        checkBox4.style = .tick
        checkBox4.borderStyle = .roundedSquare(radius: 2)
        checkBox5.style = .tick
        checkBox5.borderStyle = .roundedSquare(radius: 2)
        
        button.layer.cornerRadius = 10
    }
    
    @IBAction func button(_ sender: UIButton) {
        if checkBox1.isChecked == true && checkBox2.isChecked == true && checkBox3.isChecked == true && checkBox4.isChecked == true && checkBox5.isChecked == true {
            performSegue(withIdentifier: "goToQR", sender: nil)
        }
    }
    
}
