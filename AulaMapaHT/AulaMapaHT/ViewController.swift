//
//  ViewController.swift
//  AulaMapaHT
//
//  Created by student on 12/04/19.
//  Copyright © 2019 Hta. All rights reserved.
//

import UIKit
import MapKit


class ViewController: UIViewController, CLLocationManagerDelegate /*Protocolo*/ {

    @IBOutlet weak var mapinhaView: MKMapView!
    
    var locationManager = CLLocationManager()
    var userLocation = CLLocation()
    
    override func viewDidLoad()
    {
        //quando essa view controller for executada essa função entra em ação
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        mapinhaView.showsUserLocation = true //se ele tiver a localização do usuário ele vai me mostrar
        
        //mapinhaView é um outlet então preciso dizer o que ele vai receber para mostrar na tela
        
        setupLocationManager()
        
        addGesture()
        
        mapinhaView.setUserTrackingMode(.follow, animated: true)
    }

    //Primeira função
    func setupLocationManager()
    {
    
        //Esta variável pega a localização mais próxima
        locationManager.desiredAccuracy = kCLLocationAccuracyBest
        
        //estou pedindo autorização do usuário para saber a localização dele e só vou pedir isso na primeira vez que ele usar o app
        locationManager.requestWhenInUseAuthorization()
        
        //fica atualizando a localização do usário caso ele se mova
        locationManager.startUpdatingLocation()
    }
    
    
    //Segunda Função
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation])
    {
         //verificar se os vetores de localidades que ele vai trazer não está vazio por isso meu array é do tipo CCLocation
        if locations.count > 0 /* Se o array for maior que zero quer dizer que há alguma localização dentro dele e então a função será executada*/
        {
            
            if let location = locations.last { //location recebe a última localização da pessoa
            
                userLocation = location //userLocation é um objeto da classe CCLocation e eu digo que ele é igual a última localização do uuário
                print("A localização do usuário é \(userLocation.coordinate)")
            
                //centerMapOnlocation(location: userLocation)
            }
        }
    }

    //Terceira Função  - cria uma estrutura para uma notação
    //cria um ponto
    func addAnnotationToMap (gestureRecognizer : UIGestureRecognizer)
    {
        //touchpoint é o ponto onde eu estarei tocando e ele precisa reconhecer que está sendo tocado, como eu passei o mapa ele vai pegar um ponto de localização no meu mapa (reconhece gestos)
        let touchPoint = gestureRecognizer.location(in: mapinhaView)
        
        //Preciso de alguém que pegue minhas novas coordenadas
        let newCoordinate: CLLocationCoordinate2D = mapinhaView.convert(touchPoint, toCoordinateFrom: mapinhaView)
        
        //Vou usar uma classe que define pontos específicos no meu mapa "MKPointAnnotation"
        let newAnnotation = MKPointAnnotation() //tô chamando o construtor da classe MKPointAnnotation isso acontece quando a gt faz "nomedaclasse()"
        newAnnotation.coordinate = newCoordinate
        newAnnotation.title = "HackATruck UFPE"
        
        //String (describing) converter mapinha em String
        newAnnotation.subtitle = String(describing: "Latitude \(newCoordinate.latitude) /Longitude \(newCoordinate.longitude)")
        
        mapinhaView.addAnnotation(newAnnotation)
    }
    
    //Quarta Função - Pegar o tipo de gesto
    func addGesture()
    {
        let longPress = UILongPressGestureRecognizer(target: self, action: #selector(addAnnotationToMap(gestureRecognizer:)))
        
        longPress.minimumPressDuration = 1.0
        mapinhaView.addGestureRecognizer(longPress)
    }
    
    //Quinta Função - quando abrir o mapa vai dar zoom na localização da pessoa
    
//    func zoomIn() {
//        // definindo os valores do nível de zoom que será aplicado
//        let span: MKCoordinateSpan = MKCoordinateSpanMake(0.01, 0.01)
//        // definindo a região do mapa no qual o zoom será aplicado, considerando a localização obtida
//        let region: MKCoordinateRegion = MKCoordinateRegionMake(userLocation.coordinate, span)
//        
//        // aplicando o zoom no mapa
//        mapinhaView.setRegion(region, animated: true)
//    }
    
}

