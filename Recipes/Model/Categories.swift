//
//  Categories.swift
//  Recipes
//
//  Created by PABLO HERNANDEZ JIMENEZ on 28/11/18.
//  Copyright © 2018 PABLO HERNANDEZ JIMENEZ. All rights reserved.
//

import Foundation
class Categories {
    var title: String!
    var recipe:[Recipes]
    var imageFood: String!
    var description: String!
    
    init(title: String, recipe: [Recipes], imageFood: String, description: String) {
        self.recipe = recipe
        self.title = title
        self.imageFood = imageFood
        self.description = description
        
    }
}
