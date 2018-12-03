//
//  Botoncito.swift
//  Proyecto Final
//
//  Created by MacBook on 11/16/18.
//  Copyright © 2018 ioslab. All rights reserved.
//

import UIKit

class Botoncito: UIButton {
    
    var iconos = [UIImage(named: "favoritos"), UIImage(named: "perfil")]
    
    func gradient(frame:CGRect) -> CAGradientLayer {
        let layer = CAGradientLayer()
        layer.frame = frame
        layer.startPoint = CGPoint(x: 0.5, y: 0)
        layer.endPoint = CGPoint(x: 0.5, y: 1)
        layer.colors = [UIColor.orange.cgColor, UIColor.red.cgColor]
        return layer
    }

    override func awakeFromNib() {
        layer.insertSublayer(gradient(frame: layer.bounds), at: 0)
        layer.borderWidth = 2
        layer.borderColor = UIColor.red.cgColor
        layer.cornerRadius = 5
        self.setTitleColor(UIColor.white, for: .normal)
        self.titleLabel?.font = UIFont.systemFont(ofSize: 20)
        self.titleLabel?.textAlignment = .right
    }

}
