//
//  MapEBBViewController.swift
//  Bearcat FM
//
//  Created by Lohita Reddy Vanga on 4/14/17.
//  Copyright © 2017 Lohita Reddy Vanga. All rights reserved.
//

import UIKit
import MapKit

//This class is for map of Einstein Bros & Bagels.

class MapEBBViewController: UIViewController {
    
    @IBOutlet var mapEBB: MKMapView!
    override func viewDidLoad() {
        super.viewDidLoad()
        self.mapEBB.region = MKCoordinateRegion( center: CLLocationCoordinate2D(latitude: 40.3, longitude: -94.9),          span:MKCoordinateSpan(latitudeDelta: 1.0, longitudeDelta: 2.0))
        
        let center = MKPointAnnotation()
        center.coordinate = CLLocationCoordinate2D(latitude: 40.351679, longitude: -94.883337)
        
        center.title = "Einstein Bro's& Bagels"
        center.subtitle = "Student union,NWMSU"
        mapEBB.addAnnotation(center)
        
        
        // Do any additional setup after loading the view.
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
