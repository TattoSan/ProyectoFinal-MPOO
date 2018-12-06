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
    var nombreImagenSeleccionada: String = "predeterminado"
    

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
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let cell = collectionView.cellForItem(at: indexPath)
        cell?.layer.borderWidth = 4.0
        cell?.layer.borderColor = UIColor.blue.cgColor
        nombreImagenSeleccionada = listaImagenes[indexPath.row]
    }
    
    func collectionView(_ collectionView: UICollectionView, didDeselectItemAt indexPath: IndexPath) {
        let cell = collectionView.cellForItem(at: indexPath)
        cell?.layer.borderWidth = 3.0
        cell?.layer.borderColor = UIColor.black.cgColor
    }

}
