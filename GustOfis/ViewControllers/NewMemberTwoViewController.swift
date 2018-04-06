//
//  NewMemberTwoViewController.swift
//  GustOfis
//
//  Created by Cihangir Sungur on 04/04/2018.
//  Copyright © 2018 Cihangir Sungur. All rights reserved.
//

import UIKit

class NewMemberTwoViewController: ViewController {

    @IBOutlet weak var cameraButton: UIButton!
    @IBOutlet weak var photoUploadButton: UIButton!
    @IBOutlet weak var registerButton: UIButton!
    
    
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
    
    @IBAction func registerButtonTapped(_ sender: UIButton) {
        print("registerButtonTapped")
        self.navigationController?.pushViewController(ProfileViewController(), animated: true)
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
