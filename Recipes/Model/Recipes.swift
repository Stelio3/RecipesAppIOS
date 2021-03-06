//
//  Recipes.swift
//  Recipes
//
//  Created by PABLO HERNANDEZ JIMENEZ on 29/11/18.
//  Copyright © 2018 PABLO HERNANDEZ JIMENEZ. All rights reserved.
//

import Foundation

//Model Recipes
class Recipes {
    var title: String!
    var imageFood: String!
    var description: String!
    var ingredients: String!
    var time: String!
    var dificult: String!
    var lon: Double!
    var lat: Double!
    
    init(title: String, imageFood: String, description: String, ingredients: String, time: String, dificult: String, lon: Double, lat: Double) {
        self.title = title
        self.imageFood = imageFood
        self.description = description
        self.ingredients = ingredients
        self.time = time
        self.dificult = dificult
        self.lon = lon
        self.lat = lat
    }
}
