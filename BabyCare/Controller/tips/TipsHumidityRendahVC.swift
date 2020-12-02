//
//  TipsHumidityRendahVC.swift
//  BabyCare
//
//  Created by Muhammad Syabran on 29/11/20.
//

import UIKit

class TipsHumidityRendahVC: UIViewController {
    
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
        
        titleLabel.text = "Humidity Rendah"
        titleLabel.preferredMaxLayoutWidth = 100
        
        label1.text = "Humidity kabin merupakan ukuran kelembaban udara di dalam kabin inkubator."
        label1.preferredMaxLayoutWidth = 322
        
        tipsImage.image = UIImage(named: "humidityRendah")
        
        label2.text = "Penyebab: "
        label3.text = "Humidity kabin yang rendah dapat disebabkan oleh penempatan inkubator di ruang tertutup ber AC/pendingin udara dalam jangka waktu yang lama. Kelembaban yang rendah dapat memicu keringnya lender pada hidung yang berfungsi untuk menangkap virus/bakteri yang terhirup. Akibatnya resiko flu dan batuk menjadi lebih tinggi. "
        label3.preferredMaxLayoutWidth = 322
        
        label4.text = "Pertolongan Pertama: "
        label5.text = "1. Menempatkan inkubator di dalam ruang yang memiliki sirkulasi udara yang baik. \n2. Matikan AC atau kipas angin pada saat inkubator dioperasikan. \n3. Jika perlu tambahkan alat dehumidifier yang berfungsi menyaring uap air di udara. \n4. Pastikan penunjukan indikator humidity kembali ke ambang batas seharusnya."
        label5.preferredMaxLayoutWidth = 322
        
//        scrollView.contentLayoutGuide.bottomAnchor.constraint(equalTo: label5.bottomAnchor).isActive = true


    }
    @IBAction func buttonTutup(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
}
