//
//  CustomCell.swift
//  XIB-to-Swift-code
//
//  Created by tambanco 🥳 on 02.02.2022.
//

import Foundation
import UIKit

class CustomCell: UITableViewCell {
    
    // reuseId
    static let reuseId = "CustomCell"
    
    let foodImageView: UIImageView = {
        let image = UIImageView()
        return image
    }()
    
    let titleLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont(name: "System", size: 27)
        return label
    }()
    
    let addToCartButton: UIButton = {
        let button = UIButton()
        var configuration = UIButton.Configuration.filled()
        configuration.image = UIImage(systemName: "cart.fill")
        configuration.contentInsets = NSDirectionalEdgeInsets(top: 10, leading: 10, bottom: 10, trailing: 10)
        return button
    }()
    
    let addToFavorites: UIButton = {
        let button = UIButton()
        let image = UIImage(systemName: "star.fill")
        button.setImage(image, for: .normal)
        button.backgroundColor = .red
        return button
    }()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: CustomCell.reuseId)
        
        addSubview(foodImageView)
        addSubview(titleLabel)
        addSubview(addToCartButton)
        addSubview(addToFavorites)
        
        foodImageView.translatesAutoresizingMaskIntoConstraints = false
        foodImageView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20).isActive = true
        foodImageView.topAnchor.constraint(equalTo: topAnchor, constant: 20).isActive = true
        foodImageView.heightAnchor.constraint(equalTo: heightAnchor, multiplier: 0.7).isActive = true
        foodImageView.widthAnchor.constraint(equalTo: widthAnchor, multiplier: 0.4).isActive = true
        
        titleLabel.translatesAutoresizingMaskIntoConstraints = false
        titleLabel.leadingAnchor.constraint(equalTo: foodImageView.trailingAnchor).isActive = true
        titleLabel.topAnchor.constraint(equalTo: topAnchor, constant: 20).isActive = true
        titleLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -20).isActive = true
        
        addToCartButton.translatesAutoresizingMaskIntoConstraints = false
        addToCartButton.leadingAnchor.constraint(equalTo: foodImageView.trailingAnchor, constant: 20).isActive = true
        addToCartButton.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 20).isActive = true
        
        addToFavorites.translatesAutoresizingMaskIntoConstraints = false
        addToFavorites.leadingAnchor.constraint(equalTo: addToCartButton.trailingAnchor, constant: 20).isActive = true
        addToFavorites.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 20).isActive = true
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
