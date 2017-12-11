//
//  PJTableViewController.swift
//  Bearcat FM
//
//  Created by Lohita Reddy Vanga on 3/6/17.
//  Copyright © 2017 Lohita Reddy Vanga. All rights reserved.
//

import UIKit

class PJTableViewController: UITableViewController {
    var types : [String]!
    var Pizza : [String]!
    var Sides : [String]!
    var Drinks: [String]!
    var Desserts: [String]!
    var pcost : [Double]!
    var sCost : [Double]!
    var drCost : [Double]!
    var deCost : [Double]!

    override func viewDidLoad() {
        types = ["Pizza","Sides","Desserts"," Drinks" ]
        Pizza = ["Pepperoni", "Sausage", "Cheese"]
        pcost = [10.0, 10.0, 8.0]
        Sides = ["Garlic Knots", "Bread Sticks", "Cheese Sticks"]
        sCost = [2.0, 3.0, 2.5]
         Drinks = ["Pepsi", "Mountain Dew", "Twix"]
        drCost = [2.2, 2.2, 2.2]
        Desserts = ["Cinnamon Pull Aparts", "Chocolate Chip Cookie", "Chocolate Chip Brownie"]
        deCost = [1.5, 1.5, 1.5]
        super.viewDidLoad()
        
   self.navigationItem.rightBarButtonItem = UIBarButtonItem(barButtonSystemItem: .done, target: self, action: #selector(PJTableViewController.showOffers))
    
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
            let cell = tableView.dequeueReusableCell(withIdentifier: "PJCell", for: indexPath)
            cell.textLabel?.text = Pizza[indexPath.row]
            cell.detailTextLabel?.text = String(pcost[indexPath.row])
            return cell
            
        case 1:
            let cell = tableView.dequeueReusableCell(withIdentifier: "PJCell", for: indexPath)
            cell.textLabel?.text = Sides[indexPath.row]
            cell.detailTextLabel?.text = String(sCost[indexPath.row])
            return cell
        case 2:
            let cell = tableView.dequeueReusableCell(withIdentifier: "PJCell", for: indexPath)
            cell.textLabel?.text = Desserts[indexPath.row]
            cell.detailTextLabel?.text = String(deCost[indexPath.row])
            return cell
        case 3:
            let cell = tableView.dequeueReusableCell(withIdentifier: "PJCell", for: indexPath)
            cell.textLabel?.text = Drinks[indexPath.row]
            cell.detailTextLabel?.text = String(drCost[indexPath.row])
            return cell
            
        default : break
            
            // Configure the cell...
        }
        return tableView.dequeueReusableCell(withIdentifier: "PJCell", for: indexPath)
    }
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        switch section
        {
        case 0 : return "Pizza"
        case 1 : return "Sides"
        case 2 : return  "Desserts"
        case 3 : return "Drinks"
        default : return " "
        }

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

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    func showOffers() {
        //let PJOffers = OffersViewController()
        //self.navigationController?.pushViewController(PJOffers, animated: true)

    }
}
