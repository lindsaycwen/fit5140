//
//  SightAnnotation.swift
//  5040assignment1
//
//  Created by Lindsay Chang on 2019/8/27.
//  Copyright © 2019 Lindsay Chang. All rights reserved.
//

import UIKit
import MapKit

class SightAnnotation: NSObject, MKAnnotation {
    
    var coordinate: CLLocationCoordinate2D
    var title: String?
    var subtitle: String?
    
    init(newTitle: String, newSubtitle: String, lat: Double, long: Double) {
        self.title = newTitle
        self.subtitle = newSubtitle
        coordinate = CLLocationCoordinate2D(latitude: lat, longitude: long)
    }

}
