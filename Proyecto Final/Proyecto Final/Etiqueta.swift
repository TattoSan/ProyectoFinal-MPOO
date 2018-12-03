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
        layer.colors = [UIColor.orange.cgColor, UIColor.red.cgColor]
        return layer
    }
    
    override func awakeFromNib() {
        self.textColor = UIColor.white
        layer.insertSublayer(gradient(frame: layer.bounds), at: 0)
        layer.borderWidth = 2
        layer.borderColor = UIColor.red.cgColor
        layer.cornerRadius = 4
        self.textAlignment = .center
        layer.masksToBounds = true
        textColor = UIColor.white
    }
    
}
