//
//  OnboardingViewController.swift
//  BabyCare
//
//  Created by Jason Yang on 23/11/20.
//

import UIKit

class OnboardingViewController: UIViewController {
    
    @IBOutlet weak var holderView: UIView!
    
    let scrollView = UIScrollView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        configure()
    }
    
    private func configure() {
        // Set up scrollView
        scrollView.frame = holderView.bounds
        holderView.addSubview(scrollView)
        
        let titles = ["Pasang Plug Inkubator ke Terminal Listrik", "Tombol Sisi On Pada Sisi Inkubator", "Pastikan Indikator Power Menyala"]
        let guides = ["• Konfirmasi plug terpasang", "• Konfirmasi tombol power \"on\"", "• Konfirmasi indikator menyala"]
        
        for x in 0..<3 {
            let pageView = UIView(frame: CGRect(x: CGFloat(x) * holderView.frame.width, y: 0, width: holderView.frame.width, height: holderView.frame.height))
            scrollView.addSubview(pageView)
            
            // Set up title, image, button
            let titleLabel = UILabel(frame: CGRect(x: 45, y: 45, width: pageView.frame.width-90, height: 120))
            let imageView = UIImageView(frame: CGRect(x: 45, y: 45+120+45, width: pageView.frame.size.width-90, height: pageView.frame.size.width-90))
            let guideLabel = UILabel(frame: CGRect(x: 90, y: pageView.frame.size.height-60-45, width: pageView.frame.size.width-180, height: 30))
            let button = UIButton(frame: CGRect(x: 75, y: pageView.frame.size.height-60, width: pageView.frame.width-150, height: 45))
            
            // Set up title
            titleLabel.textAlignment = .left
            titleLabel.font = UIFont(name: "HelveticaNeue-Bold", size: 30)
            titleLabel.textColor = UIColor(red: 56/255, green: 87/255, blue: 81/255, alpha: 1)
            titleLabel.numberOfLines = 0
            titleLabel.text = titles[x]
            pageView.addSubview(titleLabel)
            
            // Set up image
            imageView.contentMode = .scaleAspectFit
            imageView.image = UIImage(named: "onboarding/\(x+1)")
            pageView.addSubview(imageView)
            
            // Set up guide
            guideLabel.textAlignment = .center
            guideLabel.font = UIFont(name: "HelveticaNeue-Medium", size: 10)
            guideLabel.textColor = UIColor(red: 56/255, green: 87/255, blue: 81/255, alpha: 1)
            guideLabel.text = guides[x]
            pageView.addSubview(guideLabel)
            
            // Set up button
            button.setTitleColor(.white, for: .normal)
            button.backgroundColor = UIColor(red: 56/255, green: 87/255, blue: 81/255, alpha: 1)
            button.layer.cornerRadius = 10
            button.setTitle("Selanjutnya", for: .normal)
            if x == 2 {
                button.setTitle("Mulai", for: .normal)
            }
            button.addTarget(self , action: #selector(didTapButton(_:)), for: .touchUpInside)
            button.tag = x+1
            pageView.addSubview(button)
        }
        
        scrollView.contentSize = CGSize(width: holderView.frame.size.width*3, height: 0)
        scrollView.isPagingEnabled = true
    }
    
    @objc func didTapButton(_ button: UIButton) {
        guard button.tag < 3 else {
            // Dismiss
            Core.shared.setIsNotNewUser()
            performSegue(withIdentifier: "goToQR", sender: nil)
            return
        }
        //Scroll to next page
        scrollView.setContentOffset(CGPoint(x: holderView.frame.size.width * CGFloat(button.tag), y: 0), animated: true)
    }
    
}
