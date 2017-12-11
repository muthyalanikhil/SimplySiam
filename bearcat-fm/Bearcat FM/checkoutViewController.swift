//
//  checkoutViewController.swift
//  Bearcat FM
//
//  Created by Lohita Reddy Vanga on 4/19/17.
//  Copyright © 2017 Lohita Reddy Vanga. All rights reserved.
//

import UIKit

//This class is used to get user inputs like name phone number and address.

class checkoutViewController: UIViewController {

    @IBOutlet weak var mobnumTXT: UITextField!
    @IBOutlet weak var addressVW: UITextView!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBAction func submitBT(_ sender: Any) {
        if ((mobnumTXT.text?.isEmpty)!||((mobnumTXT.text?.characters.count)!<10))
        {
            self.alertMessage(msg: "Enter valid Mobile number")
        }else
        {
            if (addressVW.text?.isEmpty)! {
                self.alertMessage(msg: "Please enter your address")
            }
            else{
                self.alertMessage(msg: "Order succesful")
            }
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
    func alertMessage(msg: String){
        let myAlert = UIAlertController(title: "Alert", message:msg, preferredStyle: UIAlertControllerStyle.alert)
        let okAction = UIAlertAction(title:"Ok", style:UIAlertActionStyle.default, handler:nil)
        myAlert.addAction(okAction)
        self.present(myAlert,animated: true,completion: nil)
        
    }

    

}
