//
//  Tabla.swift
//  Proyecto Final
//
//  Created by MacBook on 11/21/18.
//  Copyright © 2018 ioslab. All rights reserved.
//

import UIKit

class Tabla: UITableViewController {
    
    var opciones: [String] = ["Cerca de mi", "Economicos", "Express", "Saludable", "Busqueda avanzada"]
    
    var colores: [UIColor] = [UIColor.blue,UIColor.yellow,UIColor.green,UIColor.red,UIColor.orange]
    
    let cellSpacingHeight: CGFloat = 50


    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
   /* override func numberOfSections(in tableView: UITableView) -> Int {
        return 3
    }
   */
 
    override func numberOfSections(in tableView: UITableView) -> Int {
        return self.opciones.count
    }
    
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Celda", for: indexPath)
        
        cell.textLabel?.text = opciones[indexPath.section]
        cell.backgroundColor = colores[indexPath.section]
        cell.layer.borderColor = UIColor.black.cgColor
        cell.layer.borderWidth = 0
        cell.layer.cornerRadius = 8
        cell.clipsToBounds = true
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100
    }
    
   
    
    override func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return cellSpacingHeight
    }
    
    @IBAction func unwind(for unwindSegue: UIStoryboardSegue) {
        
    }
   
}
