//
//  TipsDemamVC.swift
//  BabyCare
//
//  Created by Muhammad Syabran on 26/11/20.
//

import UIKit

class TipsDemamVC: UIViewController {
    
    @IBOutlet weak var scrollView: UIScrollView!
    @IBOutlet weak var contentView: UIView!
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
        
        titleLabel.text = "Demam"
        titleLabel.preferredMaxLayoutWidth = 100
        
        label1.text = "Demam adalah keadaan Ketika suhu badan lebih dari 37.5ºC dan dapat menjadi gejala dari masalah yang lebih serius"
        label1.preferredMaxLayoutWidth = 322
        
        tipsImage.image = UIImage(named: "demam")
        
        label2.text = "Yang Harus Dilakukan: "
        label3.text = "1. Perhatikan tanda-tanda dehidrasi pada bayi seperti menangis tanpa air mata dan mulut kering. \n2. Berikan ASI lebih sering untuk menghindari dehidrasi pada bayi. \n3. Cuci tangan dan peralatan yang digunakan untuk mencegah penyebaran infeksi. \n4. Dapatkan penanganan intensif dari dokter. "
        label3.preferredMaxLayoutWidth = 322
        
        label4.text = "Yang Harus DIhindari: "
        label5.text = "1. Menggunakan obat rumahan. \n2. Mengompres bayi dengan air dingin karena menyebabkan bayi menggigil. \n3. Berhenti menyusui bayi karena bayi demam lebih cepat dehidrasi. \n4. Memberikan obat tanpa anjuran dari dokter. \n5. Membawa bayi ke area umum. \n6. Memakaikan baju yang tebal karena justru mencegah penurunan panas. "
        label5.preferredMaxLayoutWidth = 322
        
        label6.text = "Penyakit Lain: "
        label7.text = "Demam pada bayi biasanya terkait dengan infeksi akibat penyakit berikut:\n1. Infeksi pada saluran pernafasan atas. \n2. Pneumonia. \n3. Infeksi telinga. \n4. Flu. \n5. Pilek. \n6. Radang tenggorokan. \n7. Infeksi saluran kencing. \n8. Meningitis"
        label7.preferredMaxLayoutWidth = 322
        
//        scrollView.contentLayoutGuide.bottomAnchor.constraint(equalTo: label7.bottomAnchor).isActive = true


    }
    @IBAction func buttonTutup(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
}
