//
//  RecipesViewController.swift
//  Recipes
//
//  Created by PABLO HERNANDEZ JIMENEZ on 29/11/18.
//  Copyright © 2018 PABLO HERNANDEZ JIMENEZ. All rights reserved.
//

import UIKit

class RecipesViewController: UIViewController {
    
    @IBOutlet weak var tableView:UITableView!
    
    let searchController = UISearchController(searchResultsController: nil)
    internal var recipes: [Recipes] = []
    internal var allRecipes: [Recipes] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        loadAllOptions()
        searchController.searchResultsUpdater = self
        searchController.obscuresBackgroundDuringPresentation = false
        searchController.searchBar.placeholder = "Buscar..."
        navigationItem.searchController = searchController
        definesPresentationContext = true
        navigationItem.hidesSearchBarWhenScrolling = false
        // Do any additional setup after loading the view.
    }
    
    internal func searchBarIsEmpty() -> Bool{
        return searchController.searchBar.text?.isEmpty ?? true
    }
    internal func isFiltering() -> Bool{
        return searchController.isActive && !searchBarIsEmpty()
    }
    internal func filterContentForSearchText(searchText: String){
        /*filteredPosts = posts.filter({ (aPost: Post) -> Bool in
            if let postId = Int(searchText){
                return (postId == aPost.id)
            }
            return aPost.title.lowercased().contains((searchText.lowercased()))
        })
        tableView.reloadData()*/
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    private func loadAllOptions(){
        let shellfish = Recipes(title: "Shellfish",imageFood: "https://upload.wikimedia.org/wikipedia/commons/thumb/6/65/Gambas_al_ajillo.jpg/220px-Gambas_al_ajillo.jpg")
        let desserts = Recipes(title: "Desserts", imageFood: "https://png.pngtree.com/element_origin_min_pic/16/10/03/1857f22e5a165d6.jpg")
        let meast = Recipes(title: "Meats", imageFood: "https://static1.squarespace.com/static/5488b7b8e4b0563d578927fe/579bba96e3df28850502dc24/57a0cd569de4bbbd26c57de3/1470156163680/Shelburne+Meat+Market-97.JPG?format=1500w")
        let pasta = Recipes(title: "Pasta", imageFood: "https://upload.wikimedia.org/wikipedia/commons/a/ac/Farfalle_Pasta.JPG")
        allRecipes.append(shellfish)
        allRecipes.append(desserts)
        allRecipes.append(meast)
        allRecipes.append(pasta)
        recipes.append(shellfish)
        recipes.append(desserts)
        recipes.append(meast)
        recipes.append(pasta)
    }

}
extension RecipesViewController: UITableViewDelegate, UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section:Int) -> Int {
        if isFiltering(){
            return recipes.count
        }
        return allRecipes.count
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 200.0
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell: RecipesCell = (tableView.dequeueReusableCell(withIdentifier: "RecipesCell", for: indexPath) as? RecipesCell)!
        if isFiltering(){
            let cellRow = recipes[indexPath.row]
            cell.titleLbl.text = cellRow.title
            cell.foodImg.sd_setImage(with: URL (string:cellRow.imageFood), placeholderImage: nil, completed: nil)
        }else{
            let cellgo = allRecipes[indexPath.row]
            cell.titleLbl.text = cellgo.title
            cell.foodImg.sd_setImage(with: URL (string:cellgo.imageFood), placeholderImage: nil, completed: nil)
        }
        return cell
    }
    func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        return (allRecipes.count > 0)
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        /*let row = indexPath.row
        let myPost = allRecipes[row]
        let commentsVC = CommentsPostViewController(postId: myPost.id)
        navigationController?.pushViewController(commentsVC, animated: true)*/
    }
}
extension RecipesViewController: UISearchResultsUpdating{
    func updateSearchResults(for searchController: UISearchController){
        filterContentForSearchText(searchText: searchController.searchBar.text!)
    }
}
