//
//  ViewController.swift
//  XIB-to-Swift-code
//
//  Created by tambanco 🥳 on 02.02.2022.
//

import UIKit

class MainViewController: UIViewController {
    
//    @IBOutlet weak var tableView: UITableView!
    var tableView: UITableView!
    
    var foodModel: FoodModel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        initializeTableView()
        foodModel = FoodModel()
    }

    func initializeTableView() {
        
        tableView = UITableView()
        
//        let nib = UINib(nibName: TableViewCell.reuseId, bundle: nil)
//        tableView.register(nib, forCellReuseIdentifier: TableViewCell.reuseId)
        tableView.register(CustomCell.self, forCellReuseIdentifier: CustomCell.reuseId)
        tableView.dataSource = self
        tableView.dataSource = self
    
        tableView.rowHeight = 120
    }
}

extension MainViewController: UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return foodModel.foods.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
//        let cell = tableView.dequeueReusableCell(withIdentifier: TableViewCell.reuseId, for: indexPath) as! TableViewCell
        let cell = tableView.dequeueReusableCell(withIdentifier: CustomCell.reuseId, for: indexPath) as! CustomCell
        cell.titleLabel.text = foodModel.foods[indexPath.row]
        cell.foodImageView.image = UIImage(named: foodModel.images[indexPath.row])
        return cell
    }
}
