//
//  TipsTskikardiaVC.swift
//  BabyCare
//
//  Created by Muhammad Syabran on 29/11/20.
//

import UIKit

class TipsTakikardiaVC: UIViewController {
    
    @IBOutlet weak var scrollView: UIScrollView!
    @IBOutlet weak var contentView: UIView!
    @IBOutlet weak var titleLabel: UILabel!
    
    @IBOutlet weak var label1: UILabel!
    @IBOutlet weak var tipsImage: UIImageView!
    
    @IBOutlet weak var label2: UILabel!
    @IBOutlet weak var label3: UILabel!
    
    @IBOutlet weak var label4: UILabel!
    @IBOutlet weak var label5: UILabel!

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        titleLabel.text = "Takikardia"
        titleLabel.preferredMaxLayoutWidth = 100
        
        label1.text = "TAKIKARDIA merupakan kondisi dimana bayi menunjukkan gejala denyut nadi yang lebih cepat dari pada kondisi seharusnya."
        label1.preferredMaxLayoutWidth = 322
        
        tipsImage.image = UIImage(named: "takikardia")
        
        label2.text = "Penyebab: "
        label3.text = "1. Infeksi. \n2. Ketidakseimbangan senyawa kimia. \n3. Demam. \n4. Efek samping obat. "
        label3.preferredMaxLayoutWidth = 322
        
        label4.text = "Pertolongan Pertama: "
        label5.text = "Takikardia yang hanya ditandai dengan percepatan detak jantung tidak selalu membutuhkan pengobatan. Kondisi ini biasanya ditandai dengan wajah menjadi pucat serta kesulitan menyusu. Adapun Langkah penanganan yang dapat dilakukan adalah dengan cara menekan daerah leher. Penekanan ini akan mempengaruhi saraf vagus sehingga akan memperlambat detak jantung. Jika kasus berlangsung lebih dari 20 menit, segera bawa bayi ke dokter untuk mendapatkan perawatan intensif. "
        label5.preferredMaxLayoutWidth = 322
        
//        scrollView.contentLayoutGuide.bottomAnchor.constraint(equalTo: label5.bottomAnchor).isActive = true


    }
    @IBAction func buttonTutup(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
}
