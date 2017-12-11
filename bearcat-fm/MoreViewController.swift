//
//  MoreViewController.swift
//  Bearcat FM
//
//  Created by Lohita Reddy Vanga on 4/2/17.
//  Copyright © 2017 Lohita Reddy Vanga. All rights reserved.
//

import UIKit
import MapKit
import CoreData

class MoreViewController: UIViewController,MKMapViewDelegate, UITableViewDelegate, UITableViewDataSource{
    
    @IBOutlet weak var CartItemsTV: UITextView!
    @IBOutlet weak var fprice: UILabel!
    var totalPrice:Double = 0.0
    @IBOutlet weak var tableView: UITableView!
    @IBAction func Logout(_ sender: Any) {
        
    }
    
    @IBOutlet weak var qty: UILabel!
    var b = bearcat()
    var totalQty = 0
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 3
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        switch section {
        case 0:
            return b.chic.keys.count
            print("chic count",b.chic.keys.count)
        case 1:
            return b.zen.keys.count
        case 2:
            return b.eb.keys.count
        default:
            return 0
        }
    }
    
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        switch section {
        case 0:
            return "Starters"
            print("chic count",b.chic.keys.count)
        case 1:
            return "Main Course"
        case 2:
            return "Desserts"
        default:
            return "Main Course"
        }
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell{
        let cell = self.tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! CartTableViewCell
        var i = 0
        switch indexPath.section {
        case 0:
            for product in b.chic.keys {
                
                if i == indexPath.row {
                    print("chcik cell")
                    cell.name.text = product
                    cell.price.text = "$"+String(describing: b.chicPrices[product]!)
                    cell.qty.text = String(describing: b.chic[product]!) + " qty"
                    cell.shop.text = "chick filla"
                    cell.itemTtlPrice.text = "$"+String( Double(b.chic[product]!) * b.chicPrices[product]!)
                }
                i = i + 1
            }
            
        case 1:
            for product in b.zen.keys {
                 if i == indexPath.row {
                     print("zen cell2")
                    cell.name.text = product
                    cell.price.text = String(describing: b.zenPrices[product]!)
                    cell.qty.text = String(describing: b.zen[product]!)
                    cell.shop.text = "zen"
                    cell.itemTtlPrice.text = String( Double(b.zen[product]!) * b.zenPrices[product]!)

                }
                i = i + 1

            }
            
        case 2:
            for product in b.eb.keys {
                
                if i == indexPath.row {
                     print("eb cell3")
                    cell.name.text = product
                    cell.price.text = String(describing: b.ebPrices[product]!)
                    cell.qty.text = String(describing: b.eb[product]!)
                    cell.shop.text = "eb"
                    cell.itemTtlPrice.text = String( Double(b.eb[product]!) * b.ebPrices[product]!)
                }
                i = i + 1

            }
        default:
            break
        }
        i = 0
        return cell
        
        
    }
    
    
    @IBAction func checout(_ sender: Any) {
        if totalPrice==0.0
        {
            self.alertMessage(msg: "Please, add items to cart.")
        }
        else{
            /*let storyBoard : UIStoryboard = UIStoryboard(name: "Main", bundle:nil)
            
            let nextViewController = storyBoard.instantiateViewController(withIdentifier: "nextView") as! checkoutViewController
            self.present(nextViewController, animated:true, completion:nil)*/
            
        }
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    override func viewDidLoad() {
        b = (UIApplication.shared.delegate as! AppDelegate).bearCat
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        totalPrice = 0.0
        CartItemsTV.text = " "
        for product in b.chic.keys {
            print("\(product) - chic")
            CartItemsTV.text.append(" chic \(product) - \(b.chic[product]!)  - Price: \(Double(b.chic[product]!) * b.chicPrices[product]! ) \n")
            totalQty += b.chic[product]!
            totalPrice += (Double(b.chic[product]!) * b.chicPrices[product]! )
        }
        for product in b.zen.keys {
            CartItemsTV.text.append(" zen \(product) - \(b.zen[product]!) \n")
            totalQty += b.zen[product]!
            totalPrice += (Double(b.zen[product]!) * b.zenPrices[product]! )
        }
        for product in b.eb.keys {
            CartItemsTV.text.append(" ebbb \(product) - \(b.eb[product]!) \n")
            totalQty += b.eb[product]!
            totalPrice += (Double(b.eb[product]!) * b.ebPrices[product]! )
        }
        
        qty.text = String(totalQty)
        //fprice.text = String(ChickCartViewController.tprice)
        fprice.text = String(totalPrice)
        tableView.reloadData()
    }
    func alertMessage(msg: String){
        let myAlert = UIAlertController(title: "Alert", message:msg, preferredStyle: UIAlertControllerStyle.alert)
        let okAction = UIAlertAction(title:"Ok", style:UIAlertActionStyle.default, handler:nil)
        myAlert.addAction(okAction)
        self.present(myAlert,animated: true,completion: nil)
        
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
