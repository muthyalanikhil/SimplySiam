//
//  initialViewController.swift
//  Bearcat FM
//
//  Created by Lohita Reddy Vanga on 4/19/17.
//  Copyright © 2017 Lohita Reddy Vanga. All rights reserved.
//

import UIKit

//This class is used to appear after launch screen.

class initialViewController: UIViewController {

    @IBOutlet weak var imagevw: UIImageView!
    @IBAction func continueBT(_ sender: Any) {
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        imagevw.image = #imageLiteral(resourceName: "initial")

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBAction func backtoinit (sender : UIStoryboardSegue){
        
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
