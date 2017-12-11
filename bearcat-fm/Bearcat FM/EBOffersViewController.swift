//
//  EBOffersViewController.swift
//  Bearcat FM
//
//  Created by Lohita Reddy Vanga on 3/6/17.
//  Copyright © 2017 Lohita Reddy Vanga. All rights reserved.
//

import UIKit

// This class was defined but was later removed to reduce redundancy. 
class EBOffersViewController: UIViewController {
    var b : bearcat = bearcat()
    var add : Int!
    var item : String!
    var alreadyAdded:Bool = false

    
    @IBOutlet weak var qty: UITextField!
    @IBOutlet weak var numIT: UITextField!
    @IBOutlet weak var cartlable: UILabel!
    override func viewDidLoad(){
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        b = (UIApplication.shared.delegate as! AppDelegate).bearCat
        
    }
    @IBAction func addCart(_ sender: Any) {
        let quant = Int(self.qty.text!)!
        b.eb[item] = quant
        if quant == 1 {
            self.cartlable.text! = " 1 item Added to the Cart"
            self.view.backgroundColor = UIColor.yellow
        }
        else
        {
            self.cartlable.text! = " \(quant) items added to the cart"
            self.view.backgroundColor = UIColor.green
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}
