//
//  RecipesCell.swift
//  Recipes
//
//  Created by PABLO HERNANDEZ JIMENEZ on 29/11/18.
//  Copyright © 2018 PABLO HERNANDEZ JIMENEZ. All rights reserved.
//

import UIKit

class RecipesCell: UITableViewCell {

    @IBOutlet weak var trecipeLbl:UILabel!
    @IBOutlet weak var dificultrecipeLbl:UILabel!
    @IBOutlet weak var recipeImg:UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
