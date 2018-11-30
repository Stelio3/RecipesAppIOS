//
//  LoadData.swift
//  Recipes
//
//  Created by PABLO HERNANDEZ JIMENEZ on 30/11/18.
//  Copyright © 2018 PABLO HERNANDEZ JIMENEZ. All rights reserved.
//

import Foundation
class LoadData {
    internal var allRecipes: [Recipes] = []
    internal var categories: [Categories] = []
    public func loadAllOptions(){
        let shellfish1 = Recipes(title: "Shellfish",imageFood: "https://upload.wikimedia.org/wikipedia/commons/thumb/6/65/Gambas_al_ajillo.jpg/220px-Gambas_al_ajillo.jpg")
        let shellfish2 = Recipes(title: "Desserts", imageFood: "https://png.pngtree.com/element_origin_min_pic/16/10/03/1857f22e5a165d6.jpg")
        let shellfish3 = Recipes(title: "Meats", imageFood: "https://static1.squarespace.com/static/5488b7b8e4b0563d578927fe/579bba96e3df28850502dc24/57a0cd569de4bbbd26c57de3/1470156163680/Shelburne+Meat+Market-97.JPG?format=1500w")
        let shellfish4 = Recipes(title: "Pasta", imageFood: "https://upload.wikimedia.org/wikipedia/commons/a/ac/Farfalle_Pasta.JPG")
        
        allRecipes.append(shellfish1)
        allRecipes.append(shellfish2)
        allRecipes.append(shellfish3)
        allRecipes.append(shellfish4)
        
        let shellfish = Categories(title: "Shellfish", recipesCount: allRecipes.count, imageFood: "https://upload.wikimedia.org/wikipedia/commons/thumb/6/65/Gambas_al_ajillo.jpg/220px-Gambas_al_ajillo.jpg", description: "Eat the best kind of food in the world, We have the best shellfish of the city")
        let desserts = Categories(title: "Desserts", recipesCount: allRecipes.count, imageFood: "https://png.pngtree.com/element_origin_min_pic/16/10/03/1857f22e5a165d6.jpg" ,description: "We have the best chocolate desserts, but you have select of a long list of different desserts")
        let meast = Categories(title: "Meats", recipesCount: allRecipes.count, imageFood: "https://static1.squarespace.com/static/5488b7b8e4b0563d578927fe/579bba96e3df28850502dc24/57a0cd569de4bbbd26c57de3/1470156163680/Shelburne+Meat+Market-97.JPG?format=1500w" ,description: "des")
        let pasta = Categories(title: "Pasta", recipesCount: allRecipes.count, imageFood: "https://upload.wikimedia.org/wikipedia/commons/a/ac/Farfalle_Pasta.JPG" ,description: "pastaa")
        
        categories.append(shellfish)
        categories.append(desserts)
        categories.append(meast)
        categories.append(pasta)
    }
}
