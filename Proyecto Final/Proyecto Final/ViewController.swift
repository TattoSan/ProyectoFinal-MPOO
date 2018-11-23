//
//  ViewController.swift
//  Proyecto Final
//
//  Created by MacBook on 11/16/18.
//  Copyright © 2018 ioslab. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    @IBOutlet weak var instrucciones: Etiqueta!
    @IBOutlet weak var botonSalir: Botoncito!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        instrucciones.text = "Ingrese la palabra que desea buscar"
        botonSalir.setTitle("Regresar", for: .normal)
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 2
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ResultadoBusqueda", for: indexPath)
        
        return cell
    }
    
    
}

