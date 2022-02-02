//
//  ViewController.swift
//  XIB-to-Swift-code
//
//  Created by tambanco 🥳 on 02.02.2022.
//

import UIKit

class MainViewController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        initializeTableView()
    }

    func initializeTableView() {
        tableView.rowHeight = 120
//        tableView.backgroundColor = .blue
        
        let nib = UINib(nibName: TableViewCell.reuseId, bundle: nil)
        tableView.register(nib, forCellReuseIdentifier: TableViewCell.reuseId)
    
        tableView.dataSource = self
        tableView.dataSource = self
    }
}

extension MainViewController: UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: TableViewCell.reuseId, for: indexPath) as! TableViewCell
//        cell.backgroundColor = .green
        cell.titleLabel.text = "Pizza"
        cell.foodImageView.image = UIImage(named: "pizza.jpeg")
        return cell
    }
}
