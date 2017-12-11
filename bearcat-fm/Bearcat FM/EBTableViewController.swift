//
//  EBTableViewController.swift
//  Bearcat FM
//
//  Created by Lohita Reddy Vanga on 3/6/17.
//  Copyright © 2017 Lohita Reddy Vanga. All rights reserved.
//

import UIKit
//This class is defined to create a view for Einsteins menu.

class EBTableViewController: UITableViewController {
    var del = UIApplication.shared.delegate as! AppDelegate
    var inc:Int!
    var types : [String]!
    var Bagels : [String]!
    var BagelBoxes : [String]!
    var shmear : [String]!
    var GourmetBagels: [String]!
    var baCost : [Double]!
    var bbCost : [Double]!
    var shCost : [Double]!
    var goCost : [Double]!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        types = ["Bagels","BagelBoxes","shmear"," GourmetBagels" ]
        Bagels = ["Blue Berry", "Cranberry", "Garlic"]
        baCost = [2.50, 2.25, 5.0]
        BagelBoxes = ["Bakers Dozen Box", "Bakers Half Dozen box", "Coffee to go"]
        bbCost = [8.25, 9.25, 7.95]
        shmear = ["Honey Almond", "Spicy Devil", "Smoked Salmon"]
        shCost = [2.99, 2.99, 2.99]
        GourmetBagels = ["Cheese hash brown", " six cheese", "Green chile"]
        goCost = [4.95, 4.95, 6.50]

/*self.navigationItem.rightBarButtonItem = UIBarButtonItem(barButtonSystemItem: .offers, target: self, action: #selector(EBTableViewController.showOffers))*/
    }
    
    @IBAction func mapEB(_ sender: Any) {
        let storyBoard : UIStoryboard = UIStoryboard(name: "Main", bundle:nil)
        let nextViewController = storyBoard.instantiateViewController(withIdentifier: "mappp")
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
            let cell = tableView.dequeueReusableCell(withIdentifier: "ECell", for: indexPath)
            cell.textLabel?.text = Bagels[indexPath.row]
            cell.detailTextLabel?.text = "$"+String(baCost[indexPath.row])
            return cell
            
        case 1:
            let cell = tableView.dequeueReusableCell(withIdentifier: "ECell", for: indexPath)
            cell.textLabel?.text = BagelBoxes[indexPath.row]
            cell.detailTextLabel?.text = "$"+String(bbCost[indexPath.row])
            return cell
        case 2:
            let cell = tableView.dequeueReusableCell(withIdentifier: "ECell", for: indexPath)
            cell.textLabel?.text = shmear[indexPath.row]
            cell.detailTextLabel?.text = "$"+String(shCost[indexPath.row])
            return cell
        case 3:
            let cell = tableView.dequeueReusableCell(withIdentifier: "ECell", for: indexPath)
            cell.textLabel?.text = GourmetBagels[indexPath.row]
            cell.detailTextLabel?.text = "$"+String(goCost[indexPath.row])
            return cell
            
        default : break
            
            // Configure the cell...
        }
        return tableView.dequeueReusableCell(withIdentifier: "ECell", for: indexPath)
    }
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        switch section
        {
        case 0 : return "Bagels"
        case 1 : return "BagelBoxes"
        case 2 : return  "Shmear"
        case 3 : return "GourmetBagels"
        default : return " "
        }

    }
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        inc = self.del.increment
        inc = inc+1
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
    @IBAction func returnmapppEB(sender : UIStoryboardSegue) {
        
    }

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
        let vc = segue.destination as! ChickCartViewController
        vc.store = "eb"
        let category = types[(tableView.indexPathForSelectedRow?.section)!]
        
        switch(category){
        case "Bagels" :
            vc.item = Bagels[(tableView.indexPathForSelectedRow?.row)!]
            vc.index = (tableView.indexPathForSelectedRow?.row)!

            
        case "BagelBoxes" : vc.item = BagelBoxes[(tableView.indexPathForSelectedRow?.row)!]
        vc.index = (tableView.indexPathForSelectedRow?.row)!+3

            
        case "shmear" : vc.item = shmear[(tableView.indexPathForSelectedRow?.row)!]
        vc.index = (tableView.indexPathForSelectedRow?.row)!+6

            
        case "GourmetBagels" : vc.item = GourmetBagels[(tableView.indexPathForSelectedRow?.row)!]
        vc.index = (tableView.indexPathForSelectedRow?.row)!+9

            
        default:
            break
            
        }
        
    }
    func showOffers() {
        let EBOffers = EBOffersViewController()
        self.navigationController?.pushViewController(EBOffers, animated: true)
    }


}
