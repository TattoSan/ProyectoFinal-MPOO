//
//  CeldaPersonalizada.swift
//  Proyecto Final
//
//  Created by MacBook on 11/21/18.
//  Copyright © 2018 ioslab. All rights reserved.
//

import UIKit

class CeldaPersonalizada: UITableViewCell {

    override func awakeFromNib() {
        super.awakeFromNib()
        layer.borderWidth = 3.0
        layer.borderColor = UIColor.black.cgColor
        layer.cornerRadius = 9.0
        layer.backgroundColor = UIColor.blue.cgColor
        textLabel?.textAlignment = .left
        textLabel?.sizeToFit()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

    }

}
