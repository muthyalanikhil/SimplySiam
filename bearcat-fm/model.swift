//
//  model.swift
//  Bearcat FM
//
//  Created by Lohita Reddy Vanga on 4/11/17.
//  Copyright © 2017 Lohita Reddy Vanga. All rights reserved.
//

import Foundation
class bearcat {
    
    var numItems:Int = 0
    /*
     {
     'zen' : {
                'pepperFries': 2,
                    'asfsd': 4
                    },
     'chickfil': {
     
                    }
     }
    */
    //var cart:[Product]!
    
    var chic:[String:Int] = [:]
    var zen:[String:Int] = [:]
    var eb:[String:Int] = [:]
    var chicPrices:[String : Double] = [ "CFA" : 3.0, "Spicy CFA" : 4.2, "Grilled CFA" : 5.2, "Waffle Fries" : 2.2, "Nuggets" :3.4, "Sauces" : 1.0, "Lemonade" : 2.5, "Sweet Tea" : 2.5, "Fountain Pepsi" : 2.0, "Oreo Milkshake": 3.6, "Strawberry Milkshake":3.6, "Vanilla Milkshake": 3.6]
    var zenPrices:[String : Double] = ["Edamame":2.50, "Milso Soup" : 2.25, "Kale Crush Salad" :5.0,"Tori Kimidori" : 8.25, "Sake Sarada" : 9.25, "Cool Udon Almond Chicken" :7.95, "California Roll": 2.99, "Spicy Tuna Roll": 2.99, "Spicy Salmon Roll": 2.99, "Chicken Teriyake": 4.95, "Spicy Chicken":4.95, "White Chicken and Brocolli": 6.50]
    var ebPrices:[String: Double] = ["Blue Berry":2.50, "Cranberry":2.25, "Garlic":5.0, "Bakers Dozen Box": 8.25, "Bakers Half Dozen box": 9.25, "Coffee to go":7.95, "Honey Almond":2.99, "Spicy Devil":2.99, "Smoked Salmon":2.99, "Cheese hash brown":4.95, " six cheese":4.95, "Green chile":6.50]
    
    init() {
    }
    
    var a : Int = 0
    func increment() {
        a = a+1
            }
    
    
}
