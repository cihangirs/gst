//
//  FourthViewController.swift
//  GustOfis
//
//  Created by Cihangir Sungur on 28/03/2018.
//  Copyright © 2018 Cihangir Sungur. All rights reserved.
//

import UIKit
//import QRCodeReader
import AVFoundation

//class FourthViewController: ViewController, QRCodeReaderViewControllerDelegate {
class FourthViewController: ViewController {
    @IBOutlet weak var fourthTextView: UITextView!
    
    // Good practice: create the reader lazily to avoid cpu overload during the
    // initialization and each time we need to scan a QRCode
//    lazy var readerVC: QRCodeReaderViewController = {
//        let builder = QRCodeReaderViewControllerBuilder {
//            $0.reader = QRCodeReader(metadataObjectTypes: [.qr], captureDevicePosition: .back)
//        }
//
//        return QRCodeReaderViewController(builder: builder)
//    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()

//        self.readerVC.show(self, sender: self)
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
//    @IBAction func scanAction(_ sender: AnyObject) {
//        // Retrieve the QRCode content
//        // By using the delegate pattern
//        readerVC.delegate = self
//        
//        // Or by using the closure pattern
//        readerVC.completionBlock = { (result: QRCodeReaderResult?) in
//            print(result!)
//        }
//        
//        // Presents the readerVC as modal form sheet
//        readerVC.modalPresentationStyle = .formSheet
//        present(readerVC, animated: true, completion: nil)
//    }
//    
//    // MARK: - QRCodeReaderViewController Delegate Methods
//    
//    func reader(_ reader: QRCodeReaderViewController, didScanResult result: QRCodeReaderResult) {
//        reader.stopScanning()
//        
//        dismiss(animated: true, completion: nil)
//    }
//    
//    //This is an optional delegate method, that allows you to be notified when the user switches the cameraName
//    //By pressing on the switch camera button
//    func reader(_ reader: QRCodeReaderViewController, didSwitchCamera newCaptureDevice: AVCaptureDeviceInput) {
//        let cameraName = newCaptureDevice.device.localizedName
//        print("Switching capturing to: \(cameraName)")
//    }
//    
//    func readerDidCancel(_ reader: QRCodeReaderViewController) {
//        reader.stopScanning()
//        
//        dismiss(animated: true, completion: nil)
//    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
