//
//  PlaceModel.swift
//  MyPlaceApp
//
//  Created by Вадим Гамзаев on 26/06/2019.
//  Copyright © 2019 Вадим Гамзаев. All rights reserved.
//

import Foundation

struct Place {
    
    var name: String
    var location: String
    var type: String
    var image: String
    
    static let restaurantNames = [
        "Burger Heroes", "Kitchen", "Bonsai", "Дастархан", "Индокитай", "X.O", "Балкан Гриль", "Sherlock Holmes",
        "Speak Easy", "Morris Pub", "Вкусные истории", "Классик", "Love&Life", "Шок", "Бочка"
    ]
    
    
    static func getPlaces() -> [Place] {
        
    var places = [Place]()
    
    for place in restaurantNames {
        places.append(Place(name: place, location: "Санк-Петербург", type: "Ресторан", image: place))
       }
    return places
    }
}
