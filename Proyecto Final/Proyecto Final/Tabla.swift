//
//  Tabla.swift
//  Proyecto Final
//
//  Created by MacBook on 11/21/18.
//  Copyright © 2018 ioslab. All rights reserved.
//

import UIKit

class Tabla: UITableViewController {
    
    var opciones: [String] = ["Por direccion", "Economicos", "Express", "Saludable"]

    var imagenes = [UIImage(named: "Dir"), UIImage(named: "Eco"), UIImage(named: "Exp"), UIImage(named: "Salud")]
    
    let cellSpacingHeight: CGFloat = 50

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return self.opciones.count
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
        func gradient(frame:CGRect) -> CAGradientLayer {
            let layer = CAGradientLayer()
            layer.frame = frame
            layer.startPoint = CGPoint(x: 0, y: 0.5)
            layer.endPoint = CGPoint(x: 1, y: 0.5)
            layer.colors = [
            UIColor.orange.cgColor,UIColor.red.cgColor]
            return layer
        
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Celda", for: indexPath)
        
        cell.textLabel?.text = opciones[indexPath.section]
        cell.textLabel?.textColor = UIColor.white;
        cell.layer.insertSublayer(gradient(frame: cell.bounds), at:0)
        cell.layer.borderColor = UIColor.red.cgColor
        cell.layer.borderWidth = 0
        cell.layer.cornerRadius = 4
        cell.imageView?.image = imagenes[indexPath.section]
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
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let destino = segue.destination as! ViewController
        let indexpath = self.tableView.indexPathForSelectedRow
        destino.caso = indexpath?.section ?? 0

    }
}

