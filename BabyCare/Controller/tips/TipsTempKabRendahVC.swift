//
//  TipsTempKabRendahVC.swift
//  BabyCare
//
//  Created by Muhammad Syabran on 29/11/20.
//

import UIKit

class TipsTempKabRendahVC: UIViewController {
    
    @IBOutlet weak var scrollView: UIScrollView!
    @IBOutlet weak var titleLabel: UILabel!
    
    @IBOutlet weak var label1: UILabel!
    @IBOutlet weak var tipsImage: UIImageView!
    
    @IBOutlet weak var label2: UILabel!
    @IBOutlet weak var label3: UILabel!
    
    @IBOutlet weak var label4: UILabel!
    @IBOutlet weak var label5: UILabel!

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        titleLabel.text = "Temp. Kabin Rendah"
        titleLabel.preferredMaxLayoutWidth = 100
        
        label1.text = "Temperatur kabin merupakan ukuran panas atau dinginnya suhu di dalam kabin inkubator."
        label1.preferredMaxLayoutWidth = 322
        
        tipsImage.image = UIImage(named: "temperatureKabinRendah")
        
        label2.text = "Penyebab: "
        label3.text = "Temperatur kabin yang rendah dapat disebabkan oleh: \n1. Gagal operasi pada sumber penghasil panas akibat kerusakan atau mati listrik. \n2. Jalur penghantaran panas ke kabin bayi terhambat."
        label3.preferredMaxLayoutWidth = 322
        
        label4.text = "Pertolongan Pertama: "
        label5.text = "1. Pastikan kedua bohlam penghasil panas beroperasi normal. \n2. Pada kasus mati listrik maka dapat menempatkan botol yang diisi dengan air hangat yang dibungkus dengan handuk dan ditempatkan pada jalur sirkulasi perambatan panas. \n3. Pastikan tidak ada objek atau material lain di dalam kabin yang menutupi jalur sirkulasi peraambatan panas."
        label5.preferredMaxLayoutWidth = 322
        
//        scrollView.contentLayoutGuide.bottomAnchor.constraint(equalTo: label5.bottomAnchor).isActive = true


    }
    @IBAction func buttonTutup(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
}
