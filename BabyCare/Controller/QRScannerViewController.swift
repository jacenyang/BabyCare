//
//  QRScannerViewController.swift
//  BabyCare
//
//  Created by Jason Yang on 03/12/20.
//

import UIKit

import UIKit

class QRScannerViewController: UIViewController {
    
    @IBOutlet weak var scannerView: QRScannerView! {
        didSet {
            scannerView.delegate = self
        }
    }
    
    var qrData: QRData? = nil {
        didSet {
            if qrData != nil {
                performSegue(withIdentifier: "mainSegue", sender: nil)
            }
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)

        if !scannerView.isRunning {
            scannerView.startScanning()
        }
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        if !scannerView.isRunning {
            scannerView.stopScanning()
        }
    }

}

//MARK: - QRScannerViewDelegate

extension QRScannerViewController: QRScannerViewDelegate {
    
    func qrScanningDidFail() {
        presentAlert(withTitle: "Error", message: "Scan gagal. Mohon dicoba lagi.")
    }
    
    func qrScanningSucceededWithCode(_ str: String?) {
        self.qrData = QRData(codeString: str)
        UserDefaults.standard.set(str, forKey: "sensorURL")
    }
    
}
