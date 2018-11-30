//
//  DetailsRecipeViewController.swift
//  Recipes
//
//  Created by PABLO HERNANDEZ JIMENEZ on 30/11/18.
//  Copyright © 2018 PABLO HERNANDEZ JIMENEZ. All rights reserved.
//

import UIKit

class DetailsRecipeViewController: UIViewController {

    @IBOutlet weak var btnMapa:UIButton!
    @IBOutlet weak var lblrecipesDescription:UITextView!
    @IBOutlet weak var lblrecipesIngredients:UITextView!
    @IBOutlet weak var lblrecipesTime:UILabel!
    @IBOutlet weak var lblrecipesDificult:UILabel!
    @IBOutlet weak var recipeImg:UIImageView!
    internal var recipesTitle:String!
    internal var recipesImg:String!
    internal var recipesDescription:String!
    internal var recipesIngredients:String!
    internal var recipesTime:String!
    internal var recipesDificult:String!
    
    convenience init(recipesTitle:String, recipesImg:String, recipesDescription:String, recipesIngredients:String, recipesTime:String, recipesDificult:String){
        self.init()
        self.recipesTitle = recipesTitle
        self.recipesImg = recipesImg
        self.recipesDescription = recipesDescription
        self.recipesIngredients = recipesIngredients
        self.recipesTime = recipesTime
        self.recipesDificult = recipesDificult
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = recipesTitle
        btnMapa.layer.cornerRadius = 30
        self.recipeImg.sd_setImage(with: URL (string:recipesImg), placeholderImage: nil, completed: nil)
        self.lblrecipesDescription.text = recipesDescription
        self.lblrecipesIngredients.text = recipesIngredients
        self.lblrecipesTime.text = recipesTime
        self.lblrecipesDificult.text = recipesDificult
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}
