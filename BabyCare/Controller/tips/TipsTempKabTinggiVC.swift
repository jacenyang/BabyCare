//
//  TipsTempKabTinggiVC.swift
//  BabyCare
//
//  Created by Muhammad Syabran on 29/11/20.
//

import UIKit

class TipsTempKabTinggiVC: UIViewController {
    
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
        
        titleLabel.text = "Temp. Kabin Tinggi"
        titleLabel.preferredMaxLayoutWidth = 100
        
        label1.text = "Temperatur kabin merupakan ukuran panas atau dinginnya suhu di dalam kabin inkubator."
        label1.preferredMaxLayoutWidth = 322
        
        tipsImage.image = UIImage(named: "temperatureKabinTinggi")
        
        label2.text = "Penyebab: "
        label3.text = "Temperatur kabin yang tinggi dapat disebabkan oleh buruknya sirkulasi udara di dalam ruang dimana inkubator ditempatkan. Apalagi disertai kondisi humidity yang tinggi sehingga hal ini memicu perasaan panas/gerah pada bayi. "
        label3.preferredMaxLayoutWidth = 322
        
        label4.text = "Pertolongan Pertama: "
        label5.text = "1. Menempatkan inkubator di dalam ruang yang memiliki sirkulasi udara yang baik. \n2. Ganjal pintu kabin inkubator untuk membantu sirkulasi udara kabin dan ruangan. \n3. Pastikan penunjukan indikator temperatur kabin Kembali ke ambang batas seharusnya."
        label5.preferredMaxLayoutWidth = 322
        
//        scrollView.contentLayoutGuide.bottomAnchor.constraint(equalTo: label5.bottomAnchor).isActive = true


    }
    @IBAction func buttonTutup(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
}
