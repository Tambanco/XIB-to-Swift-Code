//
//  TableViewCell.swift
//  XIB-to-Swift-code
//
//  Created by tambanco 🥳 on 02.02.2022.
//

import UIKit

class TableViewCell: UITableViewCell {
    
    // reuseId
    static let reuseId = "TableViewCell"

    // MARK: - @IBOutlet
    @IBOutlet weak var foodImageView: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!

    // MARK: - @IBAction
    @IBAction func addToCartButton(_ sender: UIButton) {
    }
    @IBAction func addToFavorites(_ sender: UIButton) {
    }
}
