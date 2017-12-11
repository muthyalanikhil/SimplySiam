//
//  OffersTableViewController.swift
//  Bearcat FM
//
//  Created by Lohita Reddy Vanga on 4/2/17.
//  Copyright © 2017 Lohita Reddy Vanga. All rights reserved.
//

import UIKit

//This class is our future enhancement and is defined to apply offers.
class OffersTableViewController: UITableViewController {

    var rest : [String]!
    var eoffers :[String]!
    var chicoffers :[String]!
    var zenoffers :[String]!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        rest=["chic-fill-a","Zen","Einstien bagels"]
        chicoffers = ["flat 10% off on sanwiches" , "Half price on any salad" , "1+1 offer for shakes"]
        zenoffers = ["25% off on sides" , "10 dollars combo pack" , "2 budget bowls for $7"]
        eoffers = ["3 shmear for $6" , "10% student discount " , "Coffee to go @ 5"]
        
        
        
        // Do any additional setup after loading the view.
    }
    


    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return rest.count
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return 3
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        switch indexPath.section{
            
        case 0:
            let cell = tableView.dequeueReusableCell(withIdentifier: "ocell", for: indexPath)
            cell.textLabel?.text = chicoffers[indexPath.row]
            
            return cell
            
        case 1:
            let cell = tableView.dequeueReusableCell(withIdentifier: "ocell", for: indexPath)
            cell.textLabel?.text = zenoffers[indexPath.row]
            return cell
        case 2:
            let cell = tableView.dequeueReusableCell(withIdentifier: "ocell", for: indexPath)
            cell.textLabel?.text = eoffers[indexPath.row]
            
            return cell
            
        default : break
            
            // Configure the cell...
        }
        return tableView.dequeueReusableCell(withIdentifier: "ocell", for: indexPath)
        
    }
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        switch section{
        case 0 : return " Chic-fill-A Offers"
        case 2 : return " Einstien Bagels Offers"
        case 1 :return " Zen Offers"
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

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
