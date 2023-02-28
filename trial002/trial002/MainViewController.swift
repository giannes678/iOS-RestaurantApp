//
//  MainViewController.swift
//  trial002
//
//  Created by Mikael Giannes M. Bernardino on 2/23/23.
//

import UIKit

class MainViewController:  UITableViewController {
    
    var restaurants = [
        Restaurant(imageName: "jollibeeImage", name: "Jolibee"),
        Restaurant(imageName: "mcdoPic", name: "McDonald's"),
        Restaurant(imageName: "Wendys", name: "Wendy's"),
        Restaurant(imageName: "tacoBelll", name: "Taco Bell"),
        Restaurant(imageName: "kFc", name: "KFC"),
        Restaurant(imageName: "burgerKing", name: "Burger King"),
    ]

    @IBOutlet weak var mainTableView: UITableView!

    
    override func viewDidLoad() {
        super.viewDidLoad()

        mainTableView.register(UINib(nibName: "MyTableViewCell", bundle: nil), forCellReuseIdentifier: "MyTableViewCell")
        
        tableView.backgroundColor = .white
        
        tableView.rowHeight = 130.0
        
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return restaurants.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let restaurant = restaurants[indexPath.row]
        
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "MyTableViewCell", for: indexPath) as?  MyTableViewCell else { return UITableViewCell() }

        cell.restoName.text = restaurant.name
        cell.restoLogo.image = UIImage(named: restaurant.imageName)


        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        guard let viewController = storyboard.instantiateViewController(withIdentifier: "myView") as? ViewController else { return }
        viewController.restoName = restaurants[indexPath.row].name
        viewController.imageName = restaurants[indexPath.row].imageName
         navigationController?.pushViewController(viewController, animated: true)
    }
    

    
    

    



}
