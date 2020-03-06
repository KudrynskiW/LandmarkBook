//
//  Landmark.swift
//  LandmarkBookApp
//
//  Created by Wojciech Kudrynski on 05/03/2020.
//  Copyright © 2020 Wojciech Kudrynski. All rights reserved.
//

import SwiftUI
import CoreLocation

struct Landmark: Identifiable {
    let id = UUID()
    let name: String
    let imageName: String
    let country: String
    let type: String
    let location: CLLocationCoordinate2D
}

let eiffel = Landmark(name: "Eiffel", imageName: "eiffel", country: "France", type: "Tower", location: CLLocationCoordinate2D(latitude: 48.859500, longitude:  2.291695))
let colloseo = Landmark(name: "Colosseo", imageName: "colloseo", country: "Italy", type: "Building", location: CLLocationCoordinate2D(latitude: 41.890482, longitude: 12.492735))
let londonBridge = Landmark(name: "London Bridge", imageName: "londonbridge", country: "United Kingdom", type: "Bridge", location: CLLocationCoordinate2D(latitude: 51.508071, longitude: -0.087052))
let pisa = Landmark(name: "Pisa", imageName: "pisa", country: "Italy", type: "Tower", location: CLLocationCoordinate2D(latitude: 43.723161, longitude: 10.397241))

let landmarkArray = [eiffel, colloseo, londonBridge, pisa]
