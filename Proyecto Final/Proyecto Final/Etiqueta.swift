//
//  Etiqueta.swift
//  Proyecto Final
//
//  Created by MacBook on 11/16/18.
//  Copyright © 2018 ioslab. All rights reserved.
//

import UIKit

class Etiqueta: UILabel {

    override func awakeFromNib() {
        self.textColor = UIColor.blue
        layer.borderWidth = 3.0
        layer.borderColor = UIColor.black.cgColor
        layer.cornerRadius = 9.0
        self.textAlignment = .center
    }
    
}
