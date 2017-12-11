//
//  ZenOffersViewController.swift
//  Bearcat FM
//
//  Created by Lohita Reddy Vanga on 3/6/17.
//  Copyright © 2017 Lohita Reddy Vanga. All rights reserved.
//

import UIKit

// This class was defined but was later removed to reduce redundancy. 
class ZenOffersViewController: UIViewController {
    var b : bearcat = bearcat()
    var add : Int!
    var alreadyAdded:Bool = false
    var item : String!
    

    @IBOutlet weak var qty: UITextField!
    @IBOutlet weak var cartLabel: UILabel!
    
    override func viewDidLoad(){
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        b = (UIApplication.shared.delegate as! AppDelegate).bearCat
    }
    
    
    @IBAction func addCart(_ sender: Any) {
        //b.increment()
        //b.numItems = b.numItems + Int(qty.text!)!
        let quant = Int(self.qty.text!)!
        b.zen[item] = quant
        
        
        if quant == 1 {
            self.cartLabel.text! = " 1 item Added to the Cart"
            self.view.backgroundColor = UIColor.yellow
        }
        else
        {
            self.cartLabel.text! = " \(quant) items added to the cart"
            self.view.backgroundColor = UIColor.green
        }
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
}
