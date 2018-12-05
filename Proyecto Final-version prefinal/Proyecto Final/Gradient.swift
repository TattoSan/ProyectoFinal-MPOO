//
//  Gradient.swift
//  Proyecto Final
//
//  Created by Christian Hernández on 11/29/18.
//  Copyright © 2018 ioslab. All rights reserved.
//

import UIKit

class Gradient:UIView {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        
        if let layer = self.layer as? CAGradientLayer {
            layer.colors = [
                UIColor.init(red: 255/255, green: 200/255, blue: 32/255, alpha: 1).cgColor,
                UIColor.init(red: 255/255, green: 0, blue: 0, alpha: 1).cgColor
            ]
            layer.locations = [0.0, 1.2]
            layer.endPoint = CGPoint(x: -0.8, y: 0.3)
        }
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    override class var layerClass: AnyClass {
        return CAGradientLayer.self
    }
}

