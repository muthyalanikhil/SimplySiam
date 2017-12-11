//
//  ChickCartViewController.swift
//  Bearcat FM
//
//  Created by Lohita Reddy Vanga on 4/1/17.
//  Copyright © 2017 Lohita Reddy Vanga. All rights reserved.
//

import UIKit

/*This class is defined to view all the items added to cart, perform increment and decrement of items and view calories, image of item and add to cart.*/
class ChickCartViewController: UIViewController {
    var b : bearcat = bearcat()
    var add : Int!
    var alreadyAdded:Bool = false
    var item : String!
    var price:Double!
    var store:String = "chic"
    static var tprice:Double!
    var index:Int = 0
    
    var sandimages = [#imageLiteral(resourceName: "CFA"), #imageLiteral(resourceName: "spicy cfa"), #imageLiteral(resourceName: "grilledcfa"),#imageLiteral(resourceName: "wafflefries"),#imageLiteral(resourceName: "nuggets"), #imageLiteral(resourceName: "Sauces"), #imageLiteral(resourceName: "lemonade"), #imageLiteral(resourceName: "sweettea"), #imageLiteral(resourceName: "pepsi"), #imageLiteral(resourceName: "oreo milk shake"), #imageLiteral(resourceName: "strawberry milk SHAKE"),#imageLiteral(resourceName: "vanilla milk shake")]
    var zenimages = [#imageLiteral(resourceName: "tori kimidori"),#imageLiteral(resourceName: "shake sharada"), #imageLiteral(resourceName: "cooludon"),#imageLiteral(resourceName: "edamame"), #imageLiteral(resourceName: "Kale-Salad"),#imageLiteral(resourceName: "almondchicken"), #imageLiteral(resourceName: "california roll"), #imageLiteral(resourceName: "spicytunaroll"), #imageLiteral(resourceName: "spicysalmonrole"),#imageLiteral(resourceName: "chickenteriyake"),#imageLiteral(resourceName: "spicychicken"), #imageLiteral(resourceName: "chickenbroccoli"),]
    var ebimages = [#imageLiteral(resourceName: "blueberry"), #imageLiteral(resourceName: "cranberry"), #imageLiteral(resourceName: "garlicbagel"), #imageLiteral(resourceName: "BakersDozenbox"), #imageLiteral(resourceName: "half dozen"), #imageLiteral(resourceName: "coffee"), #imageLiteral(resourceName: "honeyalmond"), #imageLiteral(resourceName: "EinsteinSpicyDevil"), #imageLiteral(resourceName: "spicysalmonrole"),#imageLiteral(resourceName: "cheese hash brown"),#imageLiteral(resourceName: "sixcheese"),#imageLiteral(resourceName: "green chilli")]
    
    @IBOutlet weak var resultimgview: UIImageView!
    @IBOutlet weak var cartLable: UILabel!
    @IBOutlet weak var qty: UITextField!
    @IBOutlet weak var minusBtn: UIButton!
    
    override func viewDidLoad(){
        super.viewDidLoad()
    //inc = self.del.increment
        // Do any additional setup after loading the view.
        minusBtn.isEnabled = false
        b = (UIApplication.shared.delegate as! AppDelegate).bearCat
        //print(price)
    }
    override func viewWillAppear(_ animated: Bool) {
        if (store == "chic"){
            resultimgview.image = sandimages[index]
        }
        else if (store == "zen"){
            resultimgview.image = zenimages[index]
        }
        else if (store == "eb"){
            resultimgview.image = ebimages[index]
        }
    }
    //apply decrement of item.
    @IBAction func minusBtnTapped(_ sender: Any) {
        let quantity : Int = Int(qty.text!)!
        
        if quantity != 0 {
            qty.text = (quantity-1).description
        }
        if qty.text == "0" {
            minusBtn.isEnabled = false
        }
    }
    //apply increment of item. 
    @IBAction func plusBtnTapped(_ sender: Any) {
        
        let quantity : Int = Int(qty.text!)!
            qty.text = (quantity+1).description
        minusBtn.isEnabled = true
    }
  
    @IBAction func addCart(_ sender: Any) {
               //b.increment()
        let quant = Int(self.qty.text!)!
        if (store == "chic"){
            b.chic[item] = quant
        }
        else if (store == "zen"){
            b.zen[item] = quant
        }
        else if (store == "eb"){
            b.eb[item] = quant
        }
        
        if quant == 1 {
            self.cartLable.text! = " 1 item Added to the Cart"
            //self.view.backgroundColor = UIColor.yellow
        }
        else
        {
            self.cartLable.text! = " \(quant) items added to the cart"
           // self.view.backgroundColor = UIColor.green
        }
        //ChickCartViewController.tprice = Double(quant) * price
        print(ChickCartViewController.tprice)
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        //let vc = segue.destination as! MoreViewController
        //vc.totalPrice = tprice
        //vc.fprice.text! = String(tprice)
        
    }

}
