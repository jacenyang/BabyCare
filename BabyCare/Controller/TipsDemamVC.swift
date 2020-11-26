//
//  TipsDemamVC.swift
//  BabyCare
//
//  Created by Muhammad Syabran on 26/11/20.
//

import UIKit

class TipsDemamVC: UIViewController {
    
    
    @IBOutlet weak var label1: UILabel!
    @IBOutlet weak var label2: UILabel!
    @IBOutlet weak var label3: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        label1.text = "Bayi Premature dikatakan demam apabila suhu badan lebih dari 37,5º"
        label2.text = "Yang Harus Dilakukan: "
        label3.text = "1. Kompres"
    }
    @IBAction func buttonTutup(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
}
