//
//  CategoriesViewController.swift
//  Recipes
//
//  Created by PABLO HERNANDEZ JIMENEZ on 28/11/18.
//  Copyright © 2018 PABLO HERNANDEZ JIMENEZ. All rights reserved.
//

import UIKit

class CategoriesViewController: UIViewController {

    @IBOutlet weak var tableView:UITableView!
    internal var categories: [Categories] = []
    
    convenience init(categories: [Categories]) {
        self.init()
        self.categories = categories
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        loadAllOptions()
        registerCells()
        setupBarButtonsItem()
        // Do any additional setup after loading the view.
    }
    private func registerCells(){
        let identifier = "CategoriesCell"
        let cellNib = UINib(nibName: identifier, bundle: nil)
        tableView.register(cellNib, forCellReuseIdentifier: identifier)
        /*let identifierI = "IconCell"
        let cellNibI = UINib(nibName: identifierI, bundle: nil)
        tableView.register(cellNibI, forCellReuseIdentifier: identifierI)*/
    }
    private func setupBarButtonsItem(){
        let cancelBarButton = UIBarButtonItem(title: "Categories", style: .plain, target: self, action: nil)
        navigationItem.setLeftBarButton(cancelBarButton, animated: false)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    private func loadAllOptions(){
        let cat1 = Categories(title: "Marisco",imageFood: "gambas",description: "There is the best")
        
        
        categories.append(cat1)
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
        cell.foodImg.image = UIImage(named: "gambas")
        cell.descriptionlbl.text = cellRow.description
        //cell.accessoryType = .disclosureIndicator
        return cell
    }
    func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        return (categories.count > 0)
    }
}
