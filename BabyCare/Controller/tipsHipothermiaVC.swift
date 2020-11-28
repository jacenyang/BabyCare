//
//  tipsHipothermiaVC.swift
//  BabyCare
//
//  Created by Muhammad Syabran on 28/11/20.
//

import UIKit

class tipsHipothermiaVC: UIViewController {
    
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
        
        titleLabel.text = "Hipothermia"
        titleLabel.preferredMaxLayoutWidth = 100
        
        label1.text = "Hipothermia merupakan kondisi dimana suhu badan bayi turun di bawah 36.5 oC sehingga bayi mengalami kedinginan hebat."
        label1.preferredMaxLayoutWidth = 322
        
        tipsImage.image = UIImage(named: "hipothermia")
        
        label2.text = "Penyebab: "
        label3.text = "1. Kurangnya lemak pada tubuh bayi premature. \n2. Sistem saraf belum matang sehingga belum mampu mengontrol suhu tubuh. \n3. Hipoglikemia/kekurangan gula darah dalam tubuh. \n4. Infeksi serius. "
        label3.preferredMaxLayoutWidth = 322
        
        label4.text = "Pertolongan Pertama: "
        label5.text = "1. Jangan biarkan kulit bayi basah . \n2. Gunakan selimut atau skin to skin contact dengan ibu untuk menghangatkan bayi. \n3. Tambahkan kehangatan dengan lampu atau bed warmer. \n4. Berikan asupan ASI secara intensif untuk menjaga kadar gula darah bayi. \n6. Segera bawa bayi ke dokter untuk  mendapatkan penanganan intensif. "
        label5.preferredMaxLayoutWidth = 322
        
//        scrollView.contentLayoutGuide.bottomAnchor.constraint(equalTo: label5.bottomAnchor).isActive = true


    }
    @IBAction func buttonTutup(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
}
