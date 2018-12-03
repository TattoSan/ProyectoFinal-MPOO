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
    
    var listaImagenes : [String] = ["predeterminado", "cuadros", "hipster", "pinguino", "pirata"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        salir.setTitle("Listo", for: .normal)
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return listaImagenes.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell{
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "Imagen", for: indexPath) as! CeldaImagen
        cell.imagen = UIImage.init(named: listaImagenes[indexPath.row])
        return cell
    }
    
}
