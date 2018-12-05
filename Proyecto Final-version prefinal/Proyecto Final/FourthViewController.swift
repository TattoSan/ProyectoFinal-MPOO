//
//  FourthViewController.swift
//  Proyecto Final
//
//  Created by macbook on 11/28/18.
//  Copyright © 2018 ioslab. All rights reserved.
//

import UIKit

class FourthViewController: UIViewController, UICollectionViewDataSource,UICollectionViewDelegate {
   
    @IBOutlet weak var salir: UIButton!
    @IBOutlet weak var instruccionUno: Etiqueta!
    @IBOutlet weak var instruccionDos: Etiqueta!
    @IBOutlet weak var instruccionTres: Etiqueta!
    @IBOutlet weak var nombreUsuario: BarraDeTexto!
    @IBOutlet weak var nickUsuario: BarraDeTexto!
    
    var listaImagenes : [String] = ["predeterminado","cuadros", "hipster", "pinguino", "pirata" ]
    

    override func viewDidLoad() {
        super.viewDidLoad()
        salir.setTitle("Listo", for: .normal)
        instruccionUno.text = "Escriba aqui su nuevo nombre"
        instruccionDos.text = "Escriba aqui su nuevo nickname"
        instruccionTres.text = "Seleccione una imagen"
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return listaImagenes.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell{
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "Imagen", for: indexPath)
        let imageView : UIImageView = UIImageView.init(image: UIImage.init(named: listaImagenes[indexPath.row]))
        imageView.frame = cell.contentView.frame
        imageView.contentMode = .scaleAspectFit
        cell.contentView.addSubview(imageView)
        return cell
    }
    
    @IBAction func salir(_ sender: Botoncito) {
        let defaults = UserDefaults.standard
        
        if let datoUno = nombreUsuario.text{
            defaults.set(datoUno, forKey: "nombreUsuario")
        }
        
        if let datoDos = nickUsuario.text{
            defaults.set(datoDos, forKey: "nick")
        }
    
    }
    
}
