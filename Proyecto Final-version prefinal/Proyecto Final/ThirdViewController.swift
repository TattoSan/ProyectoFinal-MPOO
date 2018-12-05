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
    @IBOutlet weak var configuracion: Botoncito!
    
    var nombreImagen = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let defaults = UserDefaults.standard
        
        if let datoUno = defaults.object(forKey: "nombreUsuario") as? String{
            nombreUsuario.text = datoUno
        }else{
            nombreUsuario.text = "No hay nada"
        }
        
        if let datoDos = defaults.object(forKey: "nick") as? String{
            edadUsuario.text = datoDos
        }else{
            edadUsuario.text = "Sin registrar"
        }
        
        imagenUsuario.image = UIImage.init(named: nombreImagen)
        
        favoritos.setTitle("Ver favoritos", for: .normal)
        configuracion.setTitle("Modificar perfil", for: .normal)
        
    }
    

    @IBAction func unwindSecondView(segue: UIStoryboardSegue){
    }
}
