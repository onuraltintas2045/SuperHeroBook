//
//  SuperHeroModel.swift
//  SuperHeroBook
//
//  Created by Onur Altintas on 7.02.2024.
//

import Foundation
import SwiftUI
import CoreLocation

struct SuperHeroModel: Identifiable {
    var id = UUID()
    var name : String
    var realName : String
    var imageName : String
    var city : String
    var job : String
    var coordinate : Coordinate
    var specialColor : Color
    
    var location : CLLocationCoordinate2D {
        CLLocationCoordinate2D(latitude: coordinate.latitude, longitude: coordinate.longitude)
    }
    
    
}
struct Coordinate {
    var latitude : Double
    var longitude : Double
}

let Batman = SuperHeroModel(name: "BATMAN", realName: "Bruce Wayne", imageName: "batman", city: "Gotham City", job: "Business Man", coordinate: Coordinate (latitude: 41.8781, longitude: -87.6298), specialColor: Color.black)
let SuperMan = SuperHeroModel(name: "SuperMan", realName: "Clark Kent", imageName: "superman", city: "Kansas City", job: "Journalist", coordinate: Coordinate (latitude: 39.0997, longitude: -94.5783), specialColor: Color.red)
let AquaMan = SuperHeroModel(name: "AquaMan", realName: "Arthur Curry", imageName: "aquaman", city: "Atlantis City", job: "Fisher", coordinate: Coordinate (latitude: 25.2744, longitude: 133.7751), specialColor: Color.orange)
let WonderWoman = SuperHeroModel(name: "Wonder Woman", realName: "Diana Prince", imageName: "wonderwoman", city: "Izmir", job: "Soldier", coordinate: Coordinate (latitude: 38.4237, longitude: 27.1428), specialColor: Color.blue)

let superHeroList = [Batman, SuperMan, AquaMan, WonderWoman]
