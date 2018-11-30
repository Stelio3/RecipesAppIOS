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
    internal var dessertsRecipes: [Recipes] = []
    internal var meatsRecipes: [Recipes] = []
    internal var pastaRecipes: [Recipes] = []
    
    convenience init(categories: [Categories]) {
        self.init()
        self.categories = categories
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //set a title
        title = "Categorías"
        loadAll()
        registerCells()
        // Do any additional setup after loading the view.
    }
    
    //Register the identifier of the cell
    private func registerCells(){
        let identifier = "CategoriesCell"
        let cellNib = UINib(nibName: identifier, bundle: nil)
        tableView.register(cellNib, forCellReuseIdentifier: identifier)
    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //This method add the information of recipes and categories into arrays
    private func loadAll(){
        //List of the Shellfish Recipes
        let prawns = Recipes(title: "Gambas al ajillo",imageFood: "https://upload.wikimedia.org/wikipedia/commons/thumb/6/65/Gambas_al_ajillo.jpg/220px-Gambas_al_ajillo.jpg", description: "Mi plato favorito del marisco, junto con el pan están de muerte", ingredients: "1 kg. de gamba congelada o fresca, 20 dientes de ajos, 2 guindillas secas (también valen las pimientas de cayena), Aceite de oliva virgen extra (unas 20 cucharadas), Sal y pimienta negra recién molida (al gusto), Opcional (no válido para puristas de esta receta) 1 chorrito de vino blanco o incluso un toque de vinagre de Jerez. Y si queréis decorar un poco de perejil fresco picado, pan", time: "30 minutos", dificult: "medio")
        let shrimp = Recipes(title: "Langostinos con arroz", imageFood: "https://www.semana.es/wp-content/uploads/2016/05/4-ARROZ-CALDOSO-DE-GAMBONES.jpg", description: "Un muy buen primer plato para degustar el mar", ingredients: "360 g de arroz bomba, 600 g de langostinos, 1 cebolleta, 2 dientes de ajo, 12 ajos frescos, 1 pimiento verde, ½ de pimiento rojo, 100 ml de brandy, 200 ml de salsa de tomate, 2 l de caldo para paella, aceite de oliva virgen extra, sal, perejil", time: "45 minutos", dificult: "facil")
        let mussels = Recipes(title: "Mejillones", imageFood: "https://www.recetasamc.info/sites/default/files/styles/hero/public/migrate/recipe/1524559021-amc-rid1419-image1203.jpeg?itok=SQgyLJG8", description: "Uno de los platos más infravalorados del mar pero están para chuparse los dedos", ingredients: "2 kilos de mejillones frescos de tamaño grande, piel de limón", time: "30 minutos", dificult: "facil")
        let crayfish = Recipes(title: "Cigalas", imageFood: "https://www.recetasderechupete.com/wp-content/uploads/2014/11/cigalas_plancha-525x360.jpg", description: "Este manjar justifica su precio, si eres amante del maricos, debes probarlos", ingredients: "Kg. de Cigalas frescas (medianas), 2 dientes de ajo, perejil fresco picado (2 cucharadas), aceite de oliva virgen extra (5 cucharadas), vino blanco (1 cucharada), sal gorda o en escamas (al gusto)", time: "30 minutos", dificult: "medio")
        
        //List of the Desserts Recipes
        let lemoncake = Recipes(title: "Tarta de limón",imageFood: "https://canalcocina.es/medias/_cache/zoom-de7599fa315010ba649a32791d822fc7-920-518.jpg", description: "Un plato perfecto para los amantes de los postres y el limón", ingredients: "250 gramos de galletas tipo Digestive, 125 gramos de mantequilla sin sal, 250 gramos de azúcar, 300 gramos de queso cremoso, 200 ml de nata líquida, 250 ml de agua, Piel rallada de dos limones, Zumo de un limón, Un sobre de gelatina de limón", time: "1 hora", dificult: "díficil")
        let mouseChoco = Recipes(title: "Mouse de chocolate", imageFood: "https://canalcocina.es/medias/_cache/zoom-2c2eab69881d1ab23eefff750dcbda3c-920-518.jpg", description: "Mata al gusanillo del chocolate con este postre mundialmente famoso", ingredients: "2 huevos, 50 gr de azúcar blanco, 575 ml de nata líquida para montar bien fría, 170 gr de chocolate con leche troceado, Fideos de chocolate, opcional", time: "20 minutos", dificult: "medio")
        let yogurtIceCream = Recipes(title: "Helado de yogurt", imageFood: "https://www.elbalcondemateo.es/wp-content/uploads/2013/05/2-Yogur-helado-jpg_214703.jpg", description: "Típico plato para cuando tienes congelador y un yogurt y no sabes que hacer", ingredients: "1 yogurt, complementos como galletas, lacasitos o nubes", time: "30 minutos", dificult: "fácil")
        let browkies = Recipes(title: "Brow-kies", imageFood: "https://i.blogs.es/1dfb53/brownie-01/1366_2000.jpeg", description: "Si sois fans del chocolate no podéis dejar de probarla, os aseguro que causa total adicción.", ingredients: "Chocolate fondant (capa de cookies), Mantequilla a temperatura ambiente (capa de cookies), Azúcar (capa de cookies), Azúcar moreno (capa de cookies), Huevo (capa de cookies), Vainilla líquida 1 cucharada (capa de cookies), Harina de repostería (capa de cookies), Bicarbonato sódico 1/2 cucharadita (capa de cookies), Levadura química 1/2 cucharadita (capa de cookies), Sal un pellizco (capa de cookies), Galletas Oreo, Mantequilla a temperatura ambiente (capa de brownie), Harina de repostería (capa de brownie), Azúcar (capa de brownie), Huevos (capa de brownie), Chocolate fondant (capa de brownie), Nueces peladas (capa de brownie)", time: "1 hora", dificult: "díficil")
        let flan = Recipes(title: "Flan de huevo", imageFood: "https://unareceta.com/wp-content/uploads/2016/10/flan-de-huevo.jpg", description: "Un postre típico que no por ello no deja de estar bueno", ingredients: "4 huevos 1 yema 500 ml, de leche entera 120 gramos, de azúcar 1 rama de vainilla o esencia", time: "30 minutos", dificult: "fácil")
        
        //List of the Meats Recipes
        let turkey = Recipes(title: "Pavo",imageFood: "https://www.bbcgoodfood.com/sites/default/files/recipe-collections/collection-image/2013/05/perfect-pancetta-roast-shallot-stuffed-turkey.jpg", description: "Plato típico en ocaciones especiales como Navidad o fin de año", ingredients: "700 g de pechuga de pavo, 500 g de setas de cultivo, 100 g de queso roquefort, 200 ml de lecheharina, 3 huevos pan rallado, orégano, aceite de oliva virgen extra, sal, pimienta, perejil", time: "20 minutos", dificult: "medio" )
        let rib = Recipes(title: "Costillas", imageFood: "https://shewearsmanyhats.com/wp-content/uploads/2014/06/babyback-ribs-1b.jpg", description: "Personalmente mi plato favorito de carne, esa ternura y la salsa barbacoa la hacen única", ingredients: "4 kilos de costilla de cerdo, 3/4 taza de azúcar moreno, 1 cucharadita de sal ahumada, 1 cucharadita de pimentón, 1 cucharada de ajo en polvo, 1 cucharadita de pimentón picante (opcional), 2 tazas de nuestra salsa barbacoa preferida.", time: "20 minutos", dificult: "medio")
        let pork = Recipes(title: "Cerdo", imageFood: "https://www.bbcgoodfood.com/sites/default/files/recipe-collections/collection-image/2013/05/roast-rack-of-pork-with-wild-garlic-stuffing_1.jpg", description: "La carne de cerdo es una de las proteínas animales más completas porque tiene buenas cualidades nutricionales al tener muchos cortes magros y es muy rica en minerales como el hierro, el zinc y el potasio, y vitaminas del grupo B", ingredients: "700 g de solomillo de cerdo, 2 cebolletas, 2 dientes de ajo, 100 ml de vino dulce, 1 calabacín, 3 lonchas de jamón serrano, 3 huevos harinapan rallado, aceite de oliva virgen extra, sal, pimienta, perejil", time: "15 minutos", dificult: "fácil")
        let sausages = Recipes(title: "Salchichas", imageFood: "https://www.bbcgoodfood.com/sites/default/files/recipe-collections/collection-image/2013/05/sausage-butter-bean-simmer-and-serve.jpg", description: "Puede parecer simple pero a quien no le gustan las salchichas", ingredients: "20 salchichas, 1 kg. de patatas, 16 pimientos del piquillo, Aceite de oliva virgen, 1 yema de huevo, 1 nuez de mantequilla", time: "5 minutos", dificult: "fácil")
        
        //List of the Pasta Recipes
        let macaroni = Recipes(title: "Macarrones a la boloñesa",imageFood: "https://i1.wp.com/recetinas.com/wp-content/uploads/2017/09/macarrones-a-la-bolonesa.jpg?fit=850%2C567&ssl=1", description: "Es un plato perfecto como plato principal de una comida", ingredients: "400 g de macarrones, 400 g de carne picada de ternera ,100 g panceta ahumada, 2 cebolletas, 2 dientes de ajo, 1 tallo de apio, 2 zanahorias, 800 g de tomate natural triturado, 200 ml de vino tinto, 100 g de queso parmesano ,aceite de oliva virgen extra, sal, pimienta, 1 cucharadita de albahaca, 1 cucharadita de orégano, perejil", time: "20 minutes", dificult: "fácil")
        let carbonara = Recipes(title: "Espaguetis carbonara", imageFood: "https://crujienteyaldente.com/wp-content/uploads/2017/05/espaguetis-carbonara.jpg", description: "Plato común para los amantes de la carne y los espaguetis", ingredients: "200 g de espaguetis, 4 lonchas gruesas de tocineta (100 g), 2 huevos, 6 cucharadas de nata, 2 cucharadas grandes de queso parmesano (30 g), 2 cucharadas de aceite de oliva, pimienta molida.", time: "20 minutos", dificult: "fácil")
        let pierogi = Recipes(title: "Pierogi", imageFood: "https://thestayathomechef.com/wp-content/uploads/2017/12/Potato-and-Cheese-Pierogis-1-small.jpg", description: "No parece muy conocida pero su sabor es único, no os la podeis perder", ingredients: "500 gramos de harina, 250 mililitros de agua, 4 cucharadas de aceite, Sal, 500 gramos de patatas, 500 gramos de queso quark, 1 cebolla, Pimienta, Aceite", time: "25 minutos", dificult: "medio")
        let ravioli = Recipes(title: "Ravioli de marisco", imageFood: "https://allourway.com/wp-content/uploads/2014/08/Homemade-ravioli-with-meat-and-cheese-in-bowl-500x375.jpg", description: "si te gusta el marisco y la pasta debes probar esta obra de arte", ingredients: "12 láminas de pasta wonton, 8 mejillones, 10-12 gambas, 4 vieiras, 1 puerro, 1 diente de ajo, 2 cucharaditas de salsa hoisin, 2 cucharadas de harina ,50 gr de mantequilla ,250 ml de leche, un vasito de vino blanco, aceite de oliva, sal, pimienta, eneldo fresco, perejil, vinagreta", time: "20 minutos", dificult: "fácil")
        
        //adding to the array of shellfishes
        shellfishRecipes.append(prawns)
        shellfishRecipes.append(shrimp)
        shellfishRecipes.append(mussels)
        shellfishRecipes.append(crayfish)
        
        //adding to the array of desserts
        dessertsRecipes.append(lemoncake)
        dessertsRecipes.append(mouseChoco)
        dessertsRecipes.append(yogurtIceCream)
        dessertsRecipes.append(browkies)
        dessertsRecipes.append(flan)
        
        //adding to the array of meats
        meatsRecipes.append(turkey)
        meatsRecipes.append(rib)
        meatsRecipes.append(pork)
        meatsRecipes.append(sausages)
        
        //adding to the array of pastas
        pastaRecipes.append(macaroni)
        pastaRecipes.append(carbonara)
        pastaRecipes.append(pierogi)
        pastaRecipes.append(ravioli)
        
        //List of the Categories
        let shellfish = Categories(title: "Marisco", recipe: shellfishRecipes, imageFood: "https://upload.wikimedia.org/wikipedia/commons/thumb/6/65/Gambas_al_ajillo.jpg/220px-Gambas_al_ajillo.jpg", description: "Disfruta del mejor tipo de comida que existe, las sabrosas riquesas del mar")
        let desserts = Categories(title: "Postres", recipe: dessertsRecipes, imageFood: "https://png.pngtree.com/element_origin_min_pic/16/10/03/1857f22e5a165d6.jpg" ,description: "Si aún tienes hueco en estomágo después de una buena comida, mira los mejores postres que ha creado el hombre")
        let meast = Categories(title: "Carnes", recipe: meatsRecipes, imageFood: "https://static1.squarespace.com/static/5488b7b8e4b0563d578927fe/579bba96e3df28850502dc24/57a0cd569de4bbbd26c57de3/1470156163680/Shelburne+Meat+Market-97.JPG?format=1500w" ,description: "El ser humano debería ser carnívoro, no te vas a poder desistir a la carne más jugosa y tierna del mundo")
        let pasta = Categories(title: "Pastas", recipe: pastaRecipes, imageFood: "https://upload.wikimedia.org/wikipedia/commons/a/ac/Farfalle_Pasta.JPG" ,description: "Todos necesitamos un support, disfruta del mejor acompañante que tenemos")
        
        //adding to the array of categories
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
        let title = categories[indexPath.row].title
        let recipeRow = categories[indexPath.row].recipe
        let recipesVC = RecipesViewController(recipe: recipeRow, recipesTitle: title!)
        navigationController?.pushViewController(recipesVC, animated: true)
    }
}
