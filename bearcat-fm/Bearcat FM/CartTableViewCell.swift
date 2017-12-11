//
//  CartTableViewCell.swift
//  Bearcat FM
//
//  Created by Lohita Reddy Vanga on 4/19/17.
//  Copyright © 2017 Lohita Reddy Vanga. All rights reserved.
//

import UIKit

//This class is used to display cart review.

class CartTableViewCell: UITableViewCell {

    @IBOutlet weak var name: UILabel!
    @IBOutlet weak var price: UILabel!
    @IBOutlet weak var qty: UILabel!
    @IBOutlet weak var itemTtlPrice: UILabel!
    @IBOutlet weak var shop: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
