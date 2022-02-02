//
//  ViewController.swift
//  XIB-to-Swift-code
//
//  Created by tambanco 🥳 on 02.02.2022.
//

import UIKit

class MainViewController: UIViewController {
    
    var tableView: UITableView!
    var foodModel: FoodModel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        initializeTableView()
        foodModel = FoodModel()
    }

    func initializeTableView() {
        
        tableView = UITableView()
        tableView.register(CustomCell.self, forCellReuseIdentifier: CustomCell.reuseId)
        tableView.dataSource = self
        tableView.dataSource = self
    
        tableView.rowHeight = 120
        
        view.addSubview(tableView)
        
        tableView.translatesAutoresizingMaskIntoConstraints = false
        tableView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        tableView.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        tableView.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 1).isActive = true
        tableView.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 1).isActive = true
    }
}

extension MainViewController: UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return foodModel.foods.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: CustomCell.reuseId, for: indexPath) as! CustomCell
        cell.titleLabel.text = foodModel.foods[indexPath.row]
        cell.foodImageView.image = UIImage(named: foodModel.images[indexPath.row])
        return cell
    }
}
