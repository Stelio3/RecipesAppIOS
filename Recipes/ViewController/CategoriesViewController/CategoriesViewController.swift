//
//  CategoriesViewController.swift
//  Recipes
//
//  Created by PABLO HERNANDEZ JIMENEZ on 28/11/18.
//  Copyright © 2018 PABLO HERNANDEZ JIMENEZ. All rights reserved.
//

import UIKit
import SDWebImage

class CategoriesViewController: UIViewController {

    @IBOutlet weak var tableView:UITableView!
    internal var categories: [Categories] = []
    internal var shellfishRecipes: [Recipes] = []
    internal var DessertsRecipes: [Recipes] = []
    internal var MeatsRecipes: [Recipes] = []
    internal var PastaRecipes: [Recipes] = []
    convenience init(categories: [Categories]) {
        self.init()
        self.categories = categories
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Categories"
        loadAllOptions()
        registerCells()
        // Do any additional setup after loading the view.
    }
    private func registerCells(){
        let identifier = "CategoriesCell"
        let cellNib = UINib(nibName: identifier, bundle: nil)
        tableView.register(cellNib, forCellReuseIdentifier: identifier)
    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    private func loadAllOptions(){
        //List of the Shellfish Recipes
        let shellfish1 = Recipes(title: "Shellfish",imageFood: "https://upload.wikimedia.org/wikipedia/commons/thumb/6/65/Gambas_al_ajillo.jpg/220px-Gambas_al_ajillo.jpg")
        let shellfish2 = Recipes(title: "Desserts", imageFood: "https://png.pngtree.com/element_origin_min_pic/16/10/03/1857f22e5a165d6.jpg")
        let shellfish3 = Recipes(title: "Meats", imageFood: "https://static1.squarespace.com/static/5488b7b8e4b0563d578927fe/579bba96e3df28850502dc24/57a0cd569de4bbbd26c57de3/1470156163680/Shelburne+Meat+Market-97.JPG?format=1500w")
        let shellfish4 = Recipes(title: "Pasta", imageFood: "https://upload.wikimedia.org/wikipedia/commons/a/ac/Farfalle_Pasta.JPG")
        
        //List of the Desserts Recipes
        let dessert1 = Recipes(title: "Shellfish",imageFood: "https://upload.wikimedia.org/wikipedia/commons/thumb/6/65/Gambas_al_ajillo.jpg/220px-Gambas_al_ajillo.jpg")
        let dessert2 = Recipes(title: "Desserts", imageFood: "https://png.pngtree.com/element_origin_min_pic/16/10/03/1857f22e5a165d6.jpg")
        let dessert3 = Recipes(title: "Meats", imageFood: "https://static1.squarespace.com/static/5488b7b8e4b0563d578927fe/579bba96e3df28850502dc24/57a0cd569de4bbbd26c57de3/1470156163680/Shelburne+Meat+Market-97.JPG?format=1500w")
        let dessert4 = Recipes(title: "Pasta", imageFood: "https://upload.wikimedia.org/wikipedia/commons/a/ac/Farfalle_Pasta.JPG")
        
        //List of the Meats Recipes
        let meat1 = Recipes(title: "Shellfish",imageFood: "https://upload.wikimedia.org/wikipedia/commons/thumb/6/65/Gambas_al_ajillo.jpg/220px-Gambas_al_ajillo.jpg")
        let meat2 = Recipes(title: "Desserts", imageFood: "https://png.pngtree.com/element_origin_min_pic/16/10/03/1857f22e5a165d6.jpg")
        let meat3 = Recipes(title: "Meats", imageFood: "https://static1.squarespace.com/static/5488b7b8e4b0563d578927fe/579bba96e3df28850502dc24/57a0cd569de4bbbd26c57de3/1470156163680/Shelburne+Meat+Market-97.JPG?format=1500w")
        let meat4 = Recipes(title: "Pasta", imageFood: "https://upload.wikimedia.org/wikipedia/commons/a/ac/Farfalle_Pasta.JPG")
        
        //List of the Pasta Recipes
        let pasta1 = Recipes(title: "Shellfish",imageFood: "https://upload.wikimedia.org/wikipedia/commons/thumb/6/65/Gambas_al_ajillo.jpg/220px-Gambas_al_ajillo.jpg")
        let pasta2 = Recipes(title: "Desserts", imageFood: "https://png.pngtree.com/element_origin_min_pic/16/10/03/1857f22e5a165d6.jpg")
        let pasta3 = Recipes(title: "Meats", imageFood: "https://static1.squarespace.com/static/5488b7b8e4b0563d578927fe/579bba96e3df28850502dc24/57a0cd569de4bbbd26c57de3/1470156163680/Shelburne+Meat+Market-97.JPG?format=1500w")
        let pasta4 = Recipes(title: "Pasta", imageFood: "https://upload.wikimedia.org/wikipedia/commons/a/ac/Farfalle_Pasta.JPG")
        
        //
        shellfishRecipes.append(shellfish1)
        shellfishRecipes.append(shellfish2)
        shellfishRecipes.append(shellfish3)
        shellfishRecipes.append(shellfish4)
        
        DessertsRecipes.append(dessert1)
        DessertsRecipes.append(dessert2)
        DessertsRecipes.append(dessert3)
        DessertsRecipes.append(dessert4)
        
        MeatsRecipes.append(meat1)
        MeatsRecipes.append(meat2)
        MeatsRecipes.append(meat3)
        MeatsRecipes.append(meat4)
        
        PastaRecipes.append(pasta1)
        PastaRecipes.append(pasta2)
        PastaRecipes.append(pasta3)
        PastaRecipes.append(pasta4)
        
        let shellfish = Categories(title: "Shellfish", recipe: shellfishRecipes, imageFood: "https://upload.wikimedia.org/wikipedia/commons/thumb/6/65/Gambas_al_ajillo.jpg/220px-Gambas_al_ajillo.jpg", description: "Eat the best kind of food in the world, We have the best shellfish of the city")
        let desserts = Categories(title: "Desserts", recipe: shellfishRecipes, imageFood: "https://png.pngtree.com/element_origin_min_pic/16/10/03/1857f22e5a165d6.jpg" ,description: "We have the best chocolate desserts, but you have select of a long list of different desserts")
        let meast = Categories(title: "Meats", recipe: shellfishRecipes, imageFood: "https://static1.squarespace.com/static/5488b7b8e4b0563d578927fe/579bba96e3df28850502dc24/57a0cd569de4bbbd26c57de3/1470156163680/Shelburne+Meat+Market-97.JPG?format=1500w" ,description: "des")
        let pasta = Categories(title: "Pasta", recipe: shellfishRecipes, imageFood: "https://upload.wikimedia.org/wikipedia/commons/a/ac/Farfalle_Pasta.JPG" ,description: "pastaa")
        
        categories.append(shellfish)
        categories.append(desserts)
        categories.append(meast)
        categories.append(pasta)
    }
}
extension CategoriesViewController: UITableViewDelegate, UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section:Int) -> Int {
        return categories.count
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 275.0
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell: CategoriesCell = (tableView.dequeueReusableCell(withIdentifier: "CategoriesCell", for: indexPath) as? CategoriesCell)!
        let cellRow = categories[indexPath.row]
        cell.titleLbl.text = cellRow.title
        cell.recipesCount.text = "\(cellRow.recipe.count)"
        cell.foodImg.sd_setImage(with: URL (string:cellRow.imageFood), placeholderImage: nil, completed: nil)
        cell.descriptionlbl.text = cellRow.description
        //cell.accessoryType = .disclosureIndicator
        return cell
    }
    func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        return (categories.count > 0)
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let row = categories[indexPath.row].title
        let recipeRow = categories[indexPath.row].recipe
        let recipesVC = RecipesViewController(recipe: recipeRow, recipesTitle: row!)
        navigationController?.pushViewController(recipesVC, animated: true)
    }
}
