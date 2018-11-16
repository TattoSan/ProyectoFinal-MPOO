//
//  ThirdViewController.swift
//  Proyecto Final
//
//  Created by MacBook on 11/16/18.
//  Copyright © 2018 ioslab. All rights reserved.
//

import UIKit

class ThirdViewController: UIViewController {

    @IBOutlet weak var imagenUsuario: UIImageView!
    @IBOutlet weak var nombreUsuario: Etiqueta!
    @IBOutlet weak var edadUsuario: Etiqueta!
    @IBOutlet weak var favoritos: Botoncito!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        favoritos.setTitle("Ver favoritos", for: .normal)
        
    }

}
