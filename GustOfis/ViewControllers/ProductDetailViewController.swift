//
//  ProductDetailViewController.swift
//  GustOfis
//
//  Created by Cihangir Sungur on 17/04/2018.
//  Copyright © 2018 Cihangir Sungur. All rights reserved.
//

import UIKit
import GMStepper

class ProductDetailViewController: ViewController, UIScrollViewDelegate {
    
    @IBOutlet weak var innerScrollView: UIScrollView!
    //@IBOutlet weak var innerView: UIView!
    var innerView: UIView!
    @IBOutlet weak var stepper: GMStepper!
    @IBOutlet weak var addToBasketButton: UIButton!
    @IBOutlet weak var addToHealthAppButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
//        self.addToBasketButton.layer.cornerRadius = 15
//        
//        self.stepper.layer.cornerRadius = 15
//        self.stepper.layer.borderWidth = 1
//        self.stepper.layer.borderColor = UIColor.gray.cgColor
//        self.stepper.buttonsBackgroundColor = UIColor.white
//        self.stepper.buttonsTextColor = UIColor.gray
//        self.stepper.labelBackgroundColor = UIColor.white
//        self.stepper.labelTextColor = UIColor.black
        // Do any additional setup after loading the view.
    }

    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()

        self.innerScrollView.contentSize = CGSize(width: 335, height: 760 + 275)

//        print("innerScrollView before: \(self.innerScrollView.frame)")
//        print("innerView before: \(self.innerView.frame)")

        self.view.layoutIfNeeded()
        
        self.innerView = InnerView(frame: CGRect(origin: CGPoint(x: 0,y :275), size: CGSize(width: 335, height: self.innerScrollView.contentSize.height - 275)))
        self.innerView.backgroundColor = UIColor(red: 245/255, green: 242/255, blue: 242/255, alpha: 1.0)
        self.innerView.layoutIfNeeded()
       //self.innerView.translatesAutoresizingMaskIntoConstraints = false
        self.innerScrollView.addSubview(self.innerView)
//        print("innerScrollView after: \(self.innerScrollView.frame)")
//        print("innerView after: \(self.innerView.frame)")
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
