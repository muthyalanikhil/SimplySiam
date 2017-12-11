//
//  offersViewController.swift
//  Bearcat FM
//
//  Created by Lohita Reddy Vanga on 4/2/17.
//  Copyright © 2017 Lohita Reddy Vanga. All rights reserved.
//

import UIKit

//This class is created to apply offers and is future enhancement.
class offersViewController: UIViewController {

    @IBOutlet weak var labelOut: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    var b :Int = 0
    @IBAction func buttonPress(_ sender: Any) {
        b=b+1
        if b==1 {
            self.labelOut.text! = " 1 offer claimed"
            self.view.backgroundColor = UIColor.gray
        }
        else
        {
            self.labelOut.text! = " \(b) offers claimed"
            self.view.backgroundColor = UIColor.blue
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
