//
//  Botoncito.swift
//  Proyecto Final
//
//  Created by MacBook on 11/16/18.
//  Copyright © 2018 ioslab. All rights reserved.
//

import UIKit

class Botoncito: UIButton {

    override func awakeFromNib() {
        layer.borderWidth = 3.0
        layer.borderColor = UIColor.black.cgColor
        layer.cornerRadius = 9.0
        layer.backgroundColor = UIColor.blue.cgColor
       self.setTitleColor(UIColor.white, for: .normal)
    
    }

}
