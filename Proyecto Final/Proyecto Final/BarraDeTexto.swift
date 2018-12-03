//
//  BarraDeTexto.swift
//  Proyecto Final
//
//  Created by Macbook on 11/23/18.
//  Copyright © 2018 ioslab. All rights reserved.
//

import UIKit

class BarraDeTexto: UITextField {

    override func awakeFromNib() {
        layer.borderWidth = 2.0
        layer.borderColor = UIColor.black.cgColor
        layer.cornerRadius = 9.0
        backgroundColor = UIColor.cyan
    }

}
