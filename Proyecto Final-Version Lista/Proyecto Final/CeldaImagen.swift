//
//  CeldaImagen.swift
//  Proyecto Final
//
//  Created by macbook on 11/28/18.
//  Copyright © 2018 ioslab. All rights reserved.
//

import UIKit

class CeldaImagen: UICollectionViewCell {
    
    override func awakeFromNib() {
        super.awakeFromNib()
        layer.borderWidth = 3.0
        layer.borderColor = UIColor.black.cgColor
        layer.cornerRadius = 9.0
    }
    
}
