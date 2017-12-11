//
//  RegisterViewController.swift
//  Bearcat FM
//
//  Created by Lohita Reddy Vanga on 4/1/17.
//  Copyright © 2017 Lohita Reddy Vanga. All rights reserved.
//

import UIKit
import Parse
import Bolts

/*This class was defined for registration,
 but we killed as early registration must die.*/

class RegisterViewController: UIViewController {

    @IBOutlet weak var UserEmail: UITextField!
    @IBOutlet weak var UserPassword: UITextField!    
    @IBOutlet weak var UserRepeatPassword: UITextField!
  
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        
        let tapper = UITapGestureRecognizer(target: self, action:#selector(RegisterViewController.dismissKeyboard))
        
        tapper.cancelsTouchesInView = false
        
        view.addGestureRecognizer(tapper)
        
    }
    
    func dismissKeyboard() {
        
        //Causes the view (or one of its embedded text fields) to resign the first responder status.
        
        view.endEditing(true)
        
    }


    
    
    @IBOutlet weak var Result: UILabel!
    
    
    @IBOutlet weak var HaveACC: UIButton!
   
    @IBAction func RegisterButton(_ sender: Any) {
        
        let userEmail = UserEmail.text
        let userPassword = UserPassword.text
        let userrepeatpaswd = UserRepeatPassword.text
        //check for empty text feilds
        if( (userEmail?.isEmpty)! || (userPassword?.isEmpty)! || ((UserRepeatPassword == nil)))
        {
            Result.text = "Please fill all the fields"
        }
        else if (userPassword==userrepeatpaswd) {
                        
           Result.text = "Signed up Succesfully"
         //  HaveACC.setTitle("LogIn", for: .normal)
            
            
        }
            else
            {
                Result.text = "Check Your password, re enter it again"
            }
        let userR = PFObject(className: "UserRegistered")
        userR["emailId"] = userEmail
        userR["password"] = userPassword
        userR["confirmPassword"] = userrepeatpaswd
        
        
        
        userR.saveInBackground{(success, error) -> Void in
            if success{
                self.alertMessage(msg: "Success")
            }
            else{
                print("err")
            }
            
        }
        }
    
    func alertMessage(msg: String){
        let myAlert = UIAlertController(title: "Alert", message:msg, preferredStyle: UIAlertControllerStyle.alert)
        let okAction = UIAlertAction(title:"Ok", style:UIAlertActionStyle.default, handler:nil)
        myAlert.addAction(okAction)
        self.present(myAlert,animated: true,completion: nil)
        
    }
    
        
        
        // store data
        
        // display alert message with confirmation
        
        
        
    }

