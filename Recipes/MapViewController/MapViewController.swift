//
//  MapViewController.swift
//  Recipes
//
//  Created by PABLO HERNANDEZ JIMENEZ on 3/12/18.
//  Copyright © 2018 PABLO HERNANDEZ JIMENEZ. All rights reserved.
//

import UIKit
import MapKit

//Class for creating the MapView
class MapViewController: UIViewController {
    @IBOutlet weak var mapView: MKMapView!
    @IBOutlet weak var segmentedControl: UISegmentedControl!
    internal var locationToShow:CLLocation?
    
    convenience init(lat: Double!, lng: Double!) {
        self.init()
        self.locationToShow = CLLocation(latitude: lat, longitude: lng)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let annotation = MKPointAnnotation()
        annotation.coordinate = (locationToShow?.coordinate)!
        mapView.addAnnotation(annotation)
        
        let region = MKCoordinateRegionMakeWithDistance((locationToShow?.coordinate)!, 2000, 2000)
        mapView.setRegion(region, animated: true)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }
    @IBAction func segmentedControlTypeDidChange(){
        switch segmentedControl.selectedSegmentIndex {
        case 0:
            mapView.mapType = .standard
        case 1:
            mapView.mapType = .satellite
        case 2:
            mapView.mapType = .hybrid
        default:
            mapView.mapType = .standard
        }
    }

}
