//
//  product.swift
//  Bearcat FM
//
//  Created by Lohita Reddy Vanga on 4/19/17.
//  Copyright © 2017 Lohita Reddy Vanga. All rights reserved.
//

import Foundation

//This class is used to define model of an item.

class Product {
    
    var name:String!
    var price:Double!
    var quantity:Int!
    init(name:String, price:Double, quantity:Int){
        self.name = name
        self.price = price
        self.quantity = quantity
    }
}
