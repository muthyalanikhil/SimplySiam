//
//  ForgotPasswordViewController.swift
//  Bearcat FM
//
//  Created by Lohita Reddy Vanga on 4/17/17.
//  Copyright © 2017 Lohita Reddy Vanga. All rights reserved.
//

import UIKit
import Parse
import Bolts

/*This class was defined for registration, 
 but we killed as early registration must die.*/

class ForgotPasswordViewController: UIViewController {
    
    
    @IBAction func OK(_ sender: Any) {
        
        self.alertMessage(msg: "Check your mail for OTP.")
        
    }
    @IBOutlet weak var Email: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        
        let tapper = UITapGestureRecognizer(target: self, action:#selector(ForgotPasswordViewController.dismissKeyboard))
        
        tapper.cancelsTouchesInView = false
        
        view.addGestureRecognizer(tapper)
        
    }
    func dismissKeyboard() {
        
        //Causes the view (or one of its embedded text fields) to resign the first responder status.
        
        view.endEditing(true)
        
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func alertMessage(msg: String){
        let myAlert = UIAlertController(title: "Alert", message:msg, preferredStyle: UIAlertControllerStyle.alert)
        let okAction = UIAlertAction(title:"Ok", style:UIAlertActionStyle.default, handler:nil)
        myAlert.addAction(okAction)
        self.present(myAlert,animated: true,completion: nil)
        
    }
  
    
}
