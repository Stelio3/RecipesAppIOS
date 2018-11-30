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
    internal var recipesfiltered: [Recipes] = []
    internal var allRecipes: [Recipes] = []
    internal var recipesTitle:String!
    
    convenience init(recipe:[Recipes], recipesTitle:String){
        self.init()
        self.recipesTitle = recipesTitle
        self.allRecipes = recipe
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        title = recipesTitle + " recipes"
        registerCells()
        searchController.searchResultsUpdater = self
        searchController.obscuresBackgroundDuringPresentation = false
        searchController.searchBar.placeholder = "Search..."
        navigationItem.searchController = searchController
        definesPresentationContext = true
        navigationItem.hidesSearchBarWhenScrolling = false
        // Do any additional setup after loading the view.
    }
    private func registerCells(){
        let identifier = "RecipesCell"
        let cellNib = UINib(nibName: identifier, bundle: nil)
        tableView.register(cellNib, forCellReuseIdentifier: identifier)
    }
    
    internal func searchBarIsEmpty() -> Bool{
        return searchController.searchBar.text?.isEmpty ?? true
    }
    internal func isFiltering() -> Bool{
        return searchController.isActive && !searchBarIsEmpty()
    }
    internal func filterContentForSearchText(searchText: String){
        /*recipesfiltered = allRecipes.filter({ (arecipes: Recipes) -> Bool in
            if let recipesSearch = String(searchText){
                return (recipesSearch == arecipes.title)
            }
            return arecipes.title.lowercased().contains((searchText.lowercased()))
        })
        tableView.reloadData()*/
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}
extension RecipesViewController: UITableViewDelegate, UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section:Int) -> Int {
        if isFiltering(){
            return recipesfiltered.count
        }
        return allRecipes.count
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 200.0
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell: RecipesCell = (tableView.dequeueReusableCell(withIdentifier: "RecipesCell", for: indexPath) as? RecipesCell)!
        if isFiltering(){
            let cellRow = recipesfiltered[indexPath.row]
            cell.trecipeLbl.text = cellRow.title
            cell.recipeImg.sd_setImage(with: URL (string:cellRow.imageFood), placeholderImage: nil, completed: nil)
        }else{
            let cellgo = allRecipes[indexPath.row]
            cell.trecipeLbl.text = cellgo.title
            cell.recipeImg.sd_setImage(with: URL (string:cellgo.imageFood), placeholderImage: nil, completed: nil)
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
