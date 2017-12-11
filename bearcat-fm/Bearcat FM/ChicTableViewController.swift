//
//  ChicTableViewController.swift
//  Bearcat FM
//
//  Created by Lohita Reddy Vanga on 3/6/17.
//  Copyright © 2017 Lohita Reddy Vanga. All rights reserved.
//

import UIKit
//This class is defined to create a view for Chic menu.

class ChicTableViewController: UITableViewController {
    var del = UIApplication.shared.delegate as! AppDelegate
    var inc:Int!
    var types : [String]!
    var Sandwiches : [String]!
    var Sides : [String]!
    var Drinks : [String]!
    var Shakes : [String]!
    var SaCost : [Double]!
    var SiCost : [Double]!
    var DCost : [Double]!
    var ShCost : [Double]!
    var sandimages : [UIImage]!
    
    
    @IBAction func Map(_ sender: UIBarButtonItem) {
        
        let storyBoard : UIStoryboard = UIStoryboard(name: "Main", bundle:nil)
        let nextViewController = storyBoard.instantiateViewController(withIdentifier: "map")
        self.present(nextViewController, animated:true, completion:nil)
        
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        types = ["Sandwiches","Sides" , "Drinks", "Shakes"]
        Sandwiches = ["CFA", "Spicy CFA", "Grilled CFA"]
        SaCost = [3.0, 4.2, 5.2]
        Sides = ["Waffle Fries", "Nuggets", "Sauces"]
        SiCost = [2.2, 3.4, 1.0]
        Drinks = ["Lemonade", "Sweet Tea", "Fountain Pepsi"]
        DCost = [2.5, 2.5, 2.0]
        Shakes = ["Oreo Milkshake", "Strawberry Milkshake", "Vanilla Milkshake"]
        ShCost = [3.6, 3.6, 3.6]
        
        
        
        /*self.navigationItem.rightBarButtonItem = UIBarButtonItem( target: self, action: #selector(OffersTableViewController))*/
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    // MARK: - Table view data source
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return types.count
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return 3
    }
    
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        switch indexPath.section{
            
        case 0:
            let cell = tableView.dequeueReusableCell(withIdentifier: "chic", for: indexPath)
            cell.textLabel?.text = Sandwiches[indexPath.row]
            cell.detailTextLabel?.text = "$"+String(SaCost[indexPath.row])
            return cell
            
        case 1:
            let cell = tableView.dequeueReusableCell(withIdentifier: "chic", for: indexPath)
            cell.textLabel?.text = Sides[indexPath.row]
            cell.detailTextLabel?.text = "$"+String(SiCost[indexPath.row])
            return cell
        case 2:
            let cell = tableView.dequeueReusableCell(withIdentifier: "chic", for: indexPath)
            cell.textLabel?.text = Drinks[indexPath.row]
            cell.detailTextLabel?.text = "$"+String(DCost[indexPath.row])
            return cell
        case 3:
            let cell = tableView.dequeueReusableCell(withIdentifier: "chic", for: indexPath)
            cell.textLabel?.text = Shakes[indexPath.row]
            cell.detailTextLabel?.text = "$"+String(ShCost[indexPath.row])
            return cell
            
        default : break
            
            // Configure the cell...
        }
        return tableView.dequeueReusableCell(withIdentifier: "chic", for: indexPath)
    }
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        switch section{
        case 0: return"Sandwiches"
        case 1: return"Sides"
        case 2: return"Drinks"
        case 3: return"Shakes"
        default : return " "
            
            
        }
        
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        inc = self.del.increment
        inc = inc+1
        print(inc)
        self.del.increment = self.del.increment+1
        // performSegue(withIdentifier: "segChick", sender: self)
        
        
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let vc = segue.destination as! ChickCartViewController
        vc.store = "chic"
        let category = types[(tableView.indexPathForSelectedRow?.section)!]
        
        
        switch(category){
        case "Sandwiches" :
            
            vc.item = Sandwiches[(tableView.indexPathForSelectedRow?.row)!]
            //vc.resultimgview.image = sandimages[(tableView.indexPathForSelectedRow?.row)!]
            vc.price = SaCost[((tableView.indexPathForSelectedRow?.row)!)]
            vc.index = (tableView.indexPathForSelectedRow?.row)!
            
            
            
        case "Sides" : vc.item = Sides[(tableView.indexPathForSelectedRow?.row)!]
        vc.index = (tableView.indexPathForSelectedRow?.row)! + 3
            
            //vc.resultimgview.image = sandimages[(tableView.indexPathForSelectedRow?.row)!]
            
        case "Drinks" : vc.item = Drinks[(tableView.indexPathForSelectedRow?.row)!]
        vc.index = (tableView.indexPathForSelectedRow?.row)! + 6
            
            //  vc.resultimgview.image = sandimages[(tableView.indexPathForSelectedRow?.row)!]
            
        case "Shakes" : vc.item = Shakes[(tableView.indexPathForSelectedRow?.row)!]
        vc.index = (tableView.indexPathForSelectedRow?.row)! + 9
            
            //   vc.resultimgview.image = sandimages[(tableView.indexPathForSelectedRow?.row)!]
            
        default:
            break
            
        }
        
        
        
    }
    @IBAction func backtochic(sender : UIStoryboardSegue)
    {
        
    }
    
    /*
     // Override to support conditional editing of the table view.
     override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
     // Return false if you do not want the specified item to be editable.
     return true
     }
     */
    
    /*
     // Override to support editing the table view.
     override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
     if editingStyle == .delete {
     // Delete the row from the data source
     tableView.deleteRows(at: [indexPath], with: .fade)
     } else if editingStyle == .insert {
     // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
     }
     }
     */
    
    /*
     // Override to support rearranging the table view.
     override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {
     
     }
     */
    
    /*
     // Override to support conditional rearranging of the table view.
     override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
     // Return false if you do not want the item to be re-orderable.
     return true
     }
     */
    
    func showOffers() {
        let ChicOffers = ChicTableViewController()
        self.navigationController?.pushViewController(ChicOffers, animated: true)
    }
    
}
