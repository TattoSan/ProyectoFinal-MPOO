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
    @IBOutlet weak var botonBuscar: Botoncito!
    @IBOutlet weak var textoBusqueda: BarraDeTexto!
    @IBOutlet weak var tablaBusqueda: UITableView!
    
    var listaTiendas : [Tienda] = [Tienda(nombre: "El chingarron", localizacion: "Av Rio de la Plata No 450", precioMedio: 60.50, tiempoMedio: 18, saludable: false), Tienda(nombre: "Don rata", localizacion: "En la entrada norte del anexo, junto a las papelerias", precioMedio: 45.00, tiempoMedio: 20, saludable: false), Tienda(nombre: "Tacos de canasta", localizacion: "En algun lugar de un gran pais", precioMedio: 5.00, tiempoMedio: 1, saludable: false), Tienda(nombre: "Ciencias", localizacion: "Pues en ciencias", precioMedio: 26.00, tiempoMedio: 25, saludable: false), Tienda(nombre: "Local del principal", localizacion: "En el principal por la entrada del pumabus", precioMedio: 28.50, tiempoMedio: 14, saludable: true)]
    var listaDeBusqueda : [Tienda] = []
    var caso : Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        botonSalir.setTitle("Regresar", for: .normal)
        botonBuscar.setTitle("Buscar", for: .normal)
        caso+=1
        
        if caso<4 {
            instrucciones.text = "Ingrese la palabra que desea buscar o la cantidad maxima a buscar"
        }else{
            instrucciones.text = "Estos son los establecimientos con comida saludable"
        }
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return listaDeBusqueda.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ResultadoBusqueda", for: indexPath)
        cell.textLabel?.text = listaDeBusqueda[(indexPath.row)].nombre
        return cell
    }
    
    @IBAction func busqueda(_ sender: Any) {
        var texto : String
        var numero: Double
        texto = textoBusqueda.text!
        numero = Double(texto) ?? 0
        //print(numero) para verificar que el numero coincide con el introducido
        listaDeBusqueda = []
        //print(caso)  Es para verificar que el caso es correcto
        switch caso {
        case 1: //Por localizacion
            for iterador in listaTiendas{
                if iterador.localizacion.range(of:texto) != nil {
                    listaDeBusqueda.append(iterador)
                }
            }
        //print(listaDeBusqueda) para verificar que la cadena esta en la lista y si esta lo agrega
        case 2:// Economico
            for precioIterador in listaTiendas{
                if (precioIterador.precioMedio<=numero){
                    listaDeBusqueda.append(precioIterador)
                }
            }
        case 3://Express
            for tiempoIterador in listaTiendas{
                if (tiempoIterador.tiempoMedio<=Int(numero)){
                    listaDeBusqueda.append(tiempoIterador)
                }
            }
        case 4://Saludable
            for saludableIterador in listaTiendas{
                if(saludableIterador.saludable){
                    listaDeBusqueda.append(saludableIterador)
                }
            }
        default:
            listaDeBusqueda = []
        }
       tablaBusqueda.reloadData()
    }
    
}

