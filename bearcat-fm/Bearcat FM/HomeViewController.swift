//
//  HomeViewController.swift
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

class HomeViewController: UIViewController {

    @IBAction func Forgot(_ sender: UIButton) {
    }
    @IBOutlet weak var email: UITextField!
    
    @IBOutlet weak var pswrd: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
//    @IBAction func logoutMe(sender: UIStoryboardSegue)
//    {
//        self.outlbl.text = " "
//    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
 var flag:Bool = false
    
    @IBOutlet weak var outlbl: UILabel!
    
    @IBAction func login(_ sender: Any) {
        
        
        if ((email.text?.isEmpty)! || (pswrd.text?.isEmpty)!)
       {
           outlbl.text = "please fill all the fields"
       } else{
            let q = PFQuery(className: "UserRegistered")
           q.findObjectsInBackground{(objects: [PFObject]?, error: Error?) in
               if error == nil{
                   print("successfully")
                
                   for i in objects!{
                       let emailId = i["emailId"] as? String
                      let pswd = i["password"] as? String
                    
                        if emailId == self.email.text! && pswd == self.pswrd.text!{
                           break
                        }
                   }
               }
               else{
                
                    self.alertMessage(msg: "Try Again")
                
                }
            
            }
            
       }
       
   }
                
        // used to display alert message.
    func alertMessage(msg: String){
        let myAlert = UIAlertController(title: "Alert", message:msg, preferredStyle: UIAlertControllerStyle.alert)
        let okAction = UIAlertAction(title:"Ok", style:UIAlertActionStyle.default, handler:nil)
        myAlert.addAction(okAction)
        self.present(myAlert,animated: true,completion: nil)
        
    }
    @IBAction func loginback(sender : UIStoryboardSegue)
    {
        
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
