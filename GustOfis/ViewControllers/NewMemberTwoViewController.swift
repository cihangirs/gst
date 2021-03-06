//
//  NewMemberTwoViewController.swift
//  GustOfis
//
//  Created by Cihangir Sungur on 04/04/2018.
//  Copyright © 2018 Cihangir Sungur. All rights reserved.
//

import UIKit
import JGProgressHUD

class NewMemberTwoViewController: ViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate {

    @IBOutlet weak var cameraButton: UIButton!
    @IBOutlet weak var photoUploadButton: UIButton!
    @IBOutlet weak var registerButton: UIButton!
    @IBOutlet weak var imagePicked: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.cameraButton.layer.cornerRadius = 17.5
        self.photoUploadButton.layer.cornerRadius = 17.5
        self.registerButton.layer.cornerRadius = 17.5
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [String : Any]) {
        let image = info[UIImagePickerControllerOriginalImage] as! UIImage
        imagePicked.image = image
        dismiss(animated:true, completion: nil)
        
        let hud = JGProgressHUD(style: .dark)
        hud.textLabel.text = "Loading"
        hud.show(in: self.view)
        
        NetworkManager.shared().updateAvatar(image: image, completionHandler: { avatarUrl in
            AppManager.shared().avatarUrl = avatarUrl
            hud.dismiss()
        })
    }

    
    @IBAction func registerButtonTapped(_ sender: UIButton) {
        print("registerButtonTapped")
        self.navigationController?.pushViewController(HomeViewController(), animated: true)
//        let hud = JGProgressHUD(style: .dark)
//        hud.textLabel.text = "Loading"
//        hud.show(in: self.view)
//
//        NetworkManager.shared().createUser(user: AppManager.shared().currentUser, completionHandler: { response in
//            print("response: \(response)")
//            hud.dismiss()
//            self.navigationController?.pushViewController(HomeViewController(), animated: true)
//        })
    }
    
    @IBAction func openCameraButton(sender: AnyObject) {
        if UIImagePickerController.isSourceTypeAvailable(.camera) {
            let imagePicker = UIImagePickerController()
            imagePicker.delegate = self
            imagePicker.sourceType = .camera;
            imagePicker.allowsEditing = false
            self.present(imagePicker, animated: true, completion: nil)
        }
    }
    
    @IBAction func openPhotoLibraryButton(sender: AnyObject) {
        if UIImagePickerController.isSourceTypeAvailable(.photoLibrary) {
            let imagePicker = UIImagePickerController()
            imagePicker.delegate = self
            imagePicker.sourceType = .photoLibrary;
            imagePicker.allowsEditing = true
            self.present(imagePicker, animated: true, completion: nil)
        }
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
