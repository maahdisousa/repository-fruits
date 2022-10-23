//
//  PostTableViewCell.swift
//  Pomo
//
//  Created by Marília de Sousa on 17/10/22.
//

import Foundation
import UIKit

class FruitTableViewCell: UITableViewCell {
    
    static let identifier = "FruitableViewCell"
    
    let fruitName: UILabel = {
        let fruitName = UILabel()
        fruitName.tintColor = .black
        fruitName.font =  UIFont.boldSystemFont(ofSize: 16)
        fruitName.translatesAutoresizingMaskIntoConstraints = false
        return fruitName
    }()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        self.contentView.addSubview(fruitName)
        loadConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func loadConstraints() {
        
        let fruitTableViewConstraints = [
            fruitName.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 16),
            fruitName.trailingAnchor.constraint(equalTo: self.trailingAnchor),
            fruitName.bottomAnchor.constraint(equalTo: self.bottomAnchor),
            fruitName.topAnchor.constraint(equalTo: self.topAnchor)

        ]
        
        NSLayoutConstraint.activate(fruitTableViewConstraints)
        
    }
    
//    let card: UIView = {
//        let card = UIView()
//        card.backgroundColor = .lightGray
//        card.layer.cornerRadius = 32
//        return card
//    }()
//
}
