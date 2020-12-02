//
//  TipsBradikardiaVC.swift
//  BabyCare
//
//  Created by Muhammad Syabran on 28/11/20.
//

import UIKit

class TipsBradikardiaVC: UIViewController {
    
    @IBOutlet weak var scrollView: UIScrollView!
    @IBOutlet weak var titleLabel: UILabel!
    
    @IBOutlet weak var label1: UILabel!
    @IBOutlet weak var tipsImage: UIImageView!
    
    @IBOutlet weak var label2: UILabel!
    @IBOutlet weak var label3: UILabel!
    
    @IBOutlet weak var label4: UILabel!
    @IBOutlet weak var label5: UILabel!
    
    @IBOutlet weak var label6: UILabel!
    @IBOutlet weak var label7: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        titleLabel.text = "Bradikardia"
        titleLabel.preferredMaxLayoutWidth = 100
        
        label1.text = "BRADYCARDIA merupakan kondisi dimana bayi menunjukkan gejala denyut nadi rendah (<80 bpm) dan disertai nafas lambat."
        label1.preferredMaxLayoutWidth = 322
        
        tipsImage.image = UIImage(named: "bradicardia")
        
        label2.text = "Penyebab: "
        label3.text = "1. Kekurangan oksigen. \n2. Temperatur badan bayi rendah. \n3. Efek atau pengaruh obat. \n4. Penyakit jantung bawaan. "
        label3.preferredMaxLayoutWidth = 322
        
        label4.text = "Pertolongan Pertama: "
        label5.text = "Pastikan bahwa tidak ada kemungkinan jalan nafas bayi terhambat, seperti posisi dada yang tertekan, jalur nafas yang tertutup atau mungkin kondisi ruangan/ambient yang tidak nyaman, misalnya terlalu panas dan lembab. Segera bawa bayi ke dokter untuk  mendapatkan penanganan intensif! "
        label5.preferredMaxLayoutWidth = 322
        
        label6.text = "Yang Perlu Diketahui: "
        label7.text = "1. Denyut nadi bayi yang baru lahir s.d 1 bulan adalah 85 – 190 bpm (dalam kondisi bangun). \n2. Laju nafas adalah 30 – 60 kali per min. \n3. Denyut nadi bayi lebih cepat dari pada orang dewasa (60 – 100 bpm). Seperti halnya jika kita membayangkan bahwa otot jantung adalah sebuah karet gelang. Semakin kuat kita regangkan maka akan semakin keras pula lentingannya. Jika jantung bayi belum dapat meregang kuat karena jaringan otot yang masih muda maka untuk dapat mengalirkan darah ke seluruh tubuh, jantung bayi harus memompa lebih cepat. Sebagai akibatnya, denyut nadi bayi lebih cepat."
        label7.preferredMaxLayoutWidth = 322
        
//        scrollView.contentLayoutGuide.bottomAnchor.constraint(equalTo: label7.bottomAnchor).isActive = true


    }
    @IBAction func buttonTutup(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
}
