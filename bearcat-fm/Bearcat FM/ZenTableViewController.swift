//
//  ZenTableViewController.swift
//  Bearcat FM
//
//  Created by Lohita Reddy Vanga on 3/6/17.
//  Copyright © 2017 Lohita Reddy Vanga. All rights reserved.
//

import UIKit
//This class is defined to create a view for Zen menu.

class ZenTableViewController: UITableViewController {
    var del = UIApplication.shared.delegate as! AppDelegate
    var inc:Int!
    var types : [String]!
    var Salads : [String]!
    var Sides : [String]!
    var freshSushi : [String]!
    var budgetBowls : [String]!
    var SaCost : [Double]!
    var SiCost : [Double]!
    var fsCost : [Double]!
    var bBCost : [Double]!
    override func viewDidLoad() {
        super.viewDidLoad()
        types = ["Salads","Sides","freshSushi"," budgetBowls" ]
        Sides = ["Edamame", "Milso Soup", "Kale Crush Salad"]
        SiCost = [2.50, 2.25, 5.0]
        Salads = ["Tori Kimidori", "Sake Sarada", "Cool Udon Almond Chicken"]
        SaCost = [8.25, 9.25, 7.95]
        freshSushi = ["California Roll", "Spicy Tuna Roll", "Spicy Salmon Roll"]
        fsCost = [2, 2.99, 2.99]
        budgetBowls = ["Chicken Teriyake", "Spicy Chicken", "White Chicken and Brocolli"]
        bBCost = [4.95, 4, 6.0]


       /*self.navigationItem.rightBarButtonItem = UIBarButtonItem(barButtonSystemItem: .done, target: self, action: #selector(ZenTableViewController.showOffers)) */   }
    
    @IBAction func map(_ sender: UIBarButtonItem) {
        let storyBoard : UIStoryboard = UIStoryboard(name: "Main", bundle:nil)
        let nextViewController = storyBoard.instantiateViewController(withIdentifier: "mapp")
        self.present(nextViewController, animated:true, completion:nil)
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
            let cell = tableView.dequeueReusableCell(withIdentifier: "zenCell", for: indexPath)
            cell.textLabel?.text = Salads[indexPath.row]
            cell.detailTextLabel?.text = "$"+String(SaCost[indexPath.row])
            return cell
            
        case 1:
            let cell = tableView.dequeueReusableCell(withIdentifier: "zenCell", for: indexPath)
            cell.textLabel?.text = Sides[indexPath.row]
            cell.detailTextLabel?.text = "$"+String(SiCost[indexPath.row])
            return cell
        case 2:
            let cell = tableView.dequeueReusableCell(withIdentifier: "zenCell", for: indexPath)
            cell.textLabel?.text = freshSushi[indexPath.row]
            cell.detailTextLabel?.text = "$"+String(fsCost[indexPath.row])
            return cell
        case 3:
            let cell = tableView.dequeueReusableCell(withIdentifier: "zenCell", for: indexPath)
            cell.textLabel?.text = budgetBowls[indexPath.row]
            cell.detailTextLabel?.text = "$"+String(bBCost[indexPath.row])
            return cell
            
        default : break
            
            // Configure the cell...
        }
        return tableView.dequeueReusableCell(withIdentifier: "zenCell", for: indexPath)
    }
    
   override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
   switch section
   {
   case 0 : return "Salads"
   case 1 : return "Sides"
   case 2 : return "Fresh Sushi"
   case 3 : return " Budget Bowls"
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
    @IBAction func backFromMapzen(sender: UIStoryboardSegue)
    {
        
    }
    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
         //Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
        let vc = segue.destination as! ChickCartViewController
        vc.store = "zen"
        

       let category = types[(tableView.indexPathForSelectedRow?.section)!]
        
        switch(category){
            case "Salads" :
                vc.item = Salads[(tableView.indexPathForSelectedRow?.row)!]
                vc.index = (tableView.indexPathForSelectedRow?.row)!

            
        case "Sides" : vc.item = Sides[(tableView.indexPathForSelectedRow?.row)!]
               vc.index = (tableView.indexPathForSelectedRow?.row)!+3

            
        case "freshSushi" : vc.item = freshSushi[(tableView.indexPathForSelectedRow?.row)!]
        vc.index = (tableView.indexPathForSelectedRow?.row)!+6

            
        case "budgetBowls" : vc.item = budgetBowls[(tableView.indexPathForSelectedRow?.row)!]
        vc.index = (tableView.indexPathForSelectedRow?.row)!+9

            
        default:
            break
        
        }
        
        
        
    }
    func showOffers() {
        let ZenOffers = ZenOffersViewController()
        self.navigationController?.pushViewController(ZenOffers, animated: true)
    }


}
