//
//  Etiqueta.swift
//  Proyecto Final
//
//  Created by MacBook on 11/16/18.
//  Copyright © 2018 ioslab. All rights reserved.
//

import UIKit

class Etiqueta: UILabel {

    func gradient(frame:CGRect) -> CAGradientLayer {
        let layer = CAGradientLayer()
        layer.frame = frame
        layer.startPoint = CGPoint(x: 0.5, y: 0)
        layer.endPoint = CGPoint(x: 0.5, y: 1)
        layer.colors = [UIColor.orange.cgColor, UIColor.yellow.cgColor]
        return layer
    }
    
    override func awakeFromNib() {
        layer.insertSublayer(gradient(frame: layer.bounds), at: 0)
        layer.borderWidth = 1
        layer.borderColor = UIColor.orange.cgColor
        layer.cornerRadius = 3
        self.textColor = UIColor.white
        self.textAlignment = .left
        self.font = UIFont.italicSystemFont(ofSize: 10)
        layer.masksToBounds = true
    }
    
}
