//
//  ListTipsVC.swift
//  BabyCare
//
//  Created by Muhammad Syabran on 26/11/20.
//

import UIKit

class ListTipsVC: UIViewController {
    
    
    @IBOutlet weak var tips1VIew: UIView!
    @IBOutlet weak var tips1Label: UILabel!
    @IBOutlet weak var tips1Image: UIImageView!
    @IBOutlet weak var tips1Button: UIButton!
    
    @IBOutlet weak var tips2View: UIView!
    @IBOutlet weak var tips2Label: UILabel!
    @IBOutlet weak var tips2Image: UIImageView!
    @IBOutlet weak var tips2Button: UIButton!
    
    @IBOutlet weak var tips3View: UIView!
    @IBOutlet weak var tips3Label: UILabel!
    @IBOutlet weak var tips3Image: UIImageView!
    @IBOutlet weak var tips3Button: UIButton!
    
    @IBOutlet weak var tips4View: UIView!
    @IBOutlet weak var tips4Label: UILabel!
    @IBOutlet weak var tips4Image: UIImageView!
    @IBOutlet weak var tpis4Button: UIButton!
    
    @IBOutlet weak var tips5View: UIView!
    @IBOutlet weak var tips5Label: UILabel!
    @IBOutlet weak var tips5Image: UIImageView!
    @IBOutlet weak var tpis5Button: UIButton!
    
    @IBOutlet weak var tips6View: UIView!
    @IBOutlet weak var tips6Label: UILabel!
    @IBOutlet weak var tips6Image: UIImageView!
    @IBOutlet weak var tips6Button: UIButton!
    
    @IBOutlet weak var tips7View: UIView!
    @IBOutlet weak var tips7Label: UILabel!
    @IBOutlet weak var tips7Image: UIImageView!
    @IBOutlet weak var tips7Button: UIButton!
    
    @IBOutlet weak var tips8View: UIView!
    @IBOutlet weak var tips8Label: UILabel!
    @IBOutlet weak var tips8Image: UIImageView!
    @IBOutlet weak var tips8Button: UIButton!
    
    @IBOutlet weak var tips9View: UIView!
    @IBOutlet weak var tips9Label: UILabel!
    @IBOutlet weak var tips9Image: UIImageView!
    @IBOutlet weak var tips9Button: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = "Tips"
        
        navigationController?.navigationBar.prefersLargeTitles = true
        
        demam()
        tips2()
        tips3()
        tips4()
        tips5()
        tips6()
        tips7()
        tips8()
        tips9()
        
    }
    func demam() {
        tips1VIew.layer.cornerRadius = 15
        tips1VIew.layer.shadowColor = UIColor.black.cgColor
        tips1VIew.layer.shadowOffset = CGSize(width: 0, height: 0)
        tips1VIew.layer.shadowOpacity = 0.3
        tips1VIew.layer.shadowRadius = 4.0
        tips1Button.layer.cornerRadius = 15
        tips1Button.layer.opacity = 0.5
        
        tips1Label.text = "Demam Pada Bayi"
        tips1Image.image = UIImage(named: "demam")
//        tips1Image.translatesAutoresizingMaskIntoConstraints = false
    }
    
    func tips2() {
        tips2View.layer.cornerRadius = 15
        tips2View.layer.shadowColor = UIColor.black.cgColor
        tips2View.layer.shadowOffset = CGSize(width: 0, height: 0)
        tips2View.layer.shadowOpacity = 0.3
        tips2View.layer.shadowRadius = 4.0
        tips2Button.layer.cornerRadius = 15
        tips2Button.layer.opacity = 0.5
        
        tips2Label.text = "Bradicardia"
        tips2Image.image = UIImage(named: "bradicardia")
//        tips2Image.translatesAutoresizingMaskIntoConstraints = false
    }
    
    func tips3() {
        tips3View.layer.cornerRadius = 15
        tips3View.layer.shadowColor = UIColor.black.cgColor
        tips3View.layer.shadowOffset = CGSize(width: 0, height: 0)
        tips3View.layer.shadowOpacity = 0.3
        tips3View.layer.shadowRadius = 4.0
        tips3Button.layer.cornerRadius = 15
        tips3Button.layer.opacity = 0.5
        
        tips3Label.text = "Hipothermia"
        tips3Image.image = UIImage(named: "hipothermia")
//        tips3Image.translatesAutoresizingMaskIntoConstraints = false
    }
    
    func tips4() {
        tips4View.layer.cornerRadius = 15
        tips4View.layer.shadowColor = UIColor.black.cgColor
        tips4View.layer.shadowOffset = CGSize(width: 0, height: 0)
        tips4View.layer.shadowOpacity = 0.3
        tips4View.layer.shadowRadius = 4.0
        tpis4Button.layer.cornerRadius = 15
        tpis4Button.layer.opacity = 0.5
        
        tips4Label.text = "Takikardia"
        tips4Image.image = UIImage(named: "takikardia")
//        tips4Image.translatesAutoresizingMaskIntoConstraints = false
    }
    
    func tips5() {
        tips5View.layer.cornerRadius = 15
        tips5View.layer.shadowColor = UIColor.black.cgColor
        tips5View.layer.shadowOffset = CGSize(width: 0, height: 0)
        tips5View.layer.shadowOpacity = 0.3
        tips5View.layer.shadowRadius = 4.0
        tpis5Button.layer.cornerRadius = 15
        tpis5Button.layer.opacity = 0.5
        
        tips5Label.text = "Berat Badan Lahir Rendah (BBLR)"
        tips5Image.image = UIImage(named: "beratBadanLahirRendah")
//        tips5Image.translatesAutoresizingMaskIntoConstraints = false
    }
    
    func tips6() {
        tips6View.layer.cornerRadius = 15
        tips6View.layer.shadowColor = UIColor.black.cgColor
        tips6View.layer.shadowOffset = CGSize(width: 0, height: 0)
        tips6View.layer.shadowOpacity = 0.3
        tips6View.layer.shadowRadius = 4.0
        tips6Button.layer.cornerRadius = 15
        tips6Button.layer.opacity = 0.5
        
        tips6Label.text = "Humidity Kabin Tinggi"
        tips6Image.image = UIImage(named: "humidityKabinTinggi")
//        tips6Image.translatesAutoresizingMaskIntoConstraints = false
    }
    
    func tips7() {
        tips7View.layer.cornerRadius = 15
        tips7View.layer.shadowColor = UIColor.black.cgColor
        tips7View.layer.shadowOffset = CGSize(width: 0, height: 0)
        tips7View.layer.shadowOpacity = 0.3
        tips7View.layer.shadowRadius = 4.0
        tips7Button.layer.cornerRadius = 15
        tips7Button.layer.opacity = 0.5
        
        tips7Label.text = "Humidity Kabin Rendah"
        tips7Image.image = UIImage(named: "humidityRendah")
//        tips7Image.translatesAutoresizingMaskIntoConstraints = false
    }
    
    func tips8() {
        tips8View.layer.cornerRadius = 15
        tips8View.layer.shadowColor = UIColor.black.cgColor
        tips8View.layer.shadowOffset = CGSize(width: 0, height: 0)
        tips8View.layer.shadowOpacity = 0.3
        tips8View.layer.shadowRadius = 4.0
        tips8Button.layer.cornerRadius = 15
        tips8Button.layer.opacity = 0.5
        
        tips8Label.text = "Temperatur Kabin Tinggi"
        tips8Image.image = UIImage(named: "temperatureKabinTinggi")
//        tips8Image.translatesAutoresizingMaskIntoConstraints = false
    }
    
    func tips9() {
        tips9View.layer.cornerRadius = 15
        tips9View.layer.shadowColor = UIColor.black.cgColor
        tips9View.layer.shadowOffset = CGSize(width: 0, height: 0)
        tips9View.layer.shadowOpacity = 0.3
        tips9View.layer.shadowRadius = 4.0
        tips9Button.layer.cornerRadius = 15
        tips9Button.layer.opacity = 0.5
        
        tips9Label.text = "Temperature Kabin Rendah"
        tips9Image.image = UIImage(named: "temperatureKabinRendah")
//        tips9Image.translatesAutoresizingMaskIntoConstraints = false
    }
    
}
