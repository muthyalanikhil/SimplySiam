//
//  mapViewController.swift
//  Bearcat FM
//
//  Created by Lohita Reddy Vanga on 4/13/17.
//  Copyright © 2017 Lohita Reddy Vanga. All rights reserved.
//

import UIKit
import MapKit
import CoreData

//This class is defined to create map.

class mapViewController: UIViewController {
    
    
    @IBOutlet var mapVW: MKMapView!
    override func viewDidLoad() {
        super.viewDidLoad()
        self.mapVW.region = MKCoordinateRegion( center: CLLocationCoordinate2D(latitude: 40.3, longitude: -94.9),          span:MKCoordinateSpan(latitudeDelta: 1.0, longitudeDelta: 2.0))
        
        
        
        let center = MKPointAnnotation()
        center.coordinate = CLLocationCoordinate2D(latitude: 40.351679, longitude: -94.883337)
        
        center.title = "Chic-Fill-A"
        center.subtitle = "Student union,NWMSU"
        mapVW.addAnnotation(center)
        /*let colden = MKPointAnnotation()
         colden.coordinate = CLLocationCoordinate2D(latitude: 40.350736, longitude: -94.885858)
         colden.title  = "BearCat Stadium"
         colden.subtitle = "NWMSU"
         mapVW.addAnnotation(colden)
         let coldenhall = MKPointAnnotation()
         colden.coordinate = CLLocationCoordinate2D(latitude: 40.350736, longitude: -94.885858)
         coldenhall.title  = "BearCat Stadium"
         coldenhall.subtitle = "NWMSU"
         mapVW.addAnnotation(coldenhall)*/
        
        
        
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
