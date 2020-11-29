//
//  TipsBeratBadanRendahVC.swift
//  BabyCare
//
//  Created by Muhammad Syabran on 29/11/20.
//

import UIKit

class TipsBeratBadanRendahVC: UIViewController {
    
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
        
        titleLabel.text = "BBLR"
        titleLabel.preferredMaxLayoutWidth = 100
        
        label1.text = "Berat Badan Lahir Rendah merupakan kondisi dimana bayi lahir dengan berat badan lebih rendah dari berat badan bayi rata-rata yaitu kurang dari 2.5 kg."
        label1.preferredMaxLayoutWidth = 322
        
        tipsImage.image = UIImage(named: "beratBadanLahirRendah")
        
        label2.text = "Penyebab: "
        label3.text = "1. Lahir pada saat masa kehamilan kurang dari 37 minggu. \n2. Gangguan perkembangan dalam kandungan. \n3. Bayi kembar. \n4. Malnutrisi selama kehamilan. "
        label3.preferredMaxLayoutWidth = 322
        
        label4.text = "Pertolongan Pertama: "
        label5.text = "1. Pastikan kondisi bayi selalu dalam keadaan hangat. \n2. Pemberian ASI intensif. \n3. Jika ASI tidak bisa diberikan maka dapatkan ASI dari donor. \n4. Gunakan susu formula untuk BBLR sebagai opsi terakhir. \n5. Pastikan selama bayi belum mencapai berat 2.5 kg tidak terdapat komplikasi. \n6. Jika terjadi komplikasi segera hubungi dokter atau faskes terdekat."
        label5.preferredMaxLayoutWidth = 322
        
//        scrollView.contentLayoutGuide.bottomAnchor.constraint(equalTo: label5.bottomAnchor).isActive = true


    }
    @IBAction func buttonTutup(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
}
