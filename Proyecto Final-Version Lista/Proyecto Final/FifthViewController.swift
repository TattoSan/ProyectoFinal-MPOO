//
//  FifthViewController.swift
//  Proyecto Final
//
//  Created by Macbook on 12/5/18.
//  Copyright © 2018 ioslab. All rights reserved.
//

import UIKit
import MapKit
import CoreLocation

class FifthViewController: UIViewController , CLLocationManagerDelegate, MKMapViewDelegate{

    @IBOutlet weak var ir: Botoncito!
    @IBOutlet weak var salir: Botoncito!
    @IBOutlet weak var mapView: MKMapView!
    private let locationManager = CLLocationManager()
    
    var objetivo : Tienda = Tienda(nombre: "", localizacion: "", precioMedio: 0.0, tiempoMedio: 0, saludable: false, latitud: 0.0, longitud: 0.0)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print(objetivo)
        ir.setTitle("Ir ahora", for: .normal)
        salir.setTitle("Salir", for: .normal)
        self.mapView.delegate = self
        locationManager.delegate = self
    locationManager.requestWhenInUseAuthorization()
        locationManager.desiredAccuracy = kCLLocationAccuracyBest
        locationManager.distanceFilter = kCLDistanceFilterNone
        locationManager.startUpdatingLocation()
       
        if let location = locationManager.location{
            let center = CLLocationCoordinate2D(latitude: location.coordinate.latitude, longitude: location.coordinate.longitude)
            let region = MKCoordinateRegion(center: center, span: MKCoordinateSpan(latitudeDelta: 0.01, longitudeDelta: 0.01))
            self.mapView.setRegion(region, animated: true)
        }
        
        let objectiveLocation = CLLocationCoordinate2DMake(objetivo.latitud, objetivo.longitud)
        let anotation = Marcador()
        anotation.coordinate = objectiveLocation
        anotation.title = objetivo.nombre
        anotation.imagenURL = "pinpoint"
        mapView.addAnnotation(anotation)
        
        self.mapView.showsUserLocation = true
    }
 
    @IBAction func navegar(_ sender: UIButton) {
        let startingMapItem = MKMapItem.forCurrentLocation()
        
        let location = CLLocationCoordinate2DMake(objetivo.latitud, objetivo.longitud)
        let destinationPlacemark = MKPlacemark(coordinate: location)
        let destinationMapItem = MKMapItem(placemark: destinationPlacemark)
        
        let directionsRequest = MKDirections.Request()
        directionsRequest.transportType = .walking
        directionsRequest.source = startingMapItem
        directionsRequest.destination = destinationMapItem
        
        let directions = MKDirections(request: directionsRequest)
        directions.calculate(completionHandler: { (response, error) in
            
            if let error = error{
                print(error.localizedDescription)
                return
            }
            
            guard let response = response, let route = response.routes.first else{
                return
            }
            
            if !route.steps.isEmpty{
                for step in route.steps{
                    print(step.instructions)
                }
            }
        })
        
        MKMapItem.openMaps(with: [destinationMapItem], launchOptions: nil)
        
    }
    
}
    
    

