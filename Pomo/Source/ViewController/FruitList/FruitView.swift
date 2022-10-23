//
//  FruitView.swift
//  Pomo
//
//  Created by Marília de Sousa on 17/10/22.
//

import Foundation
import UIKit

class FruitView: UIView {
    
    let fruitTableView: UITableView = {
        let tableView = UITableView(frame: .zero, style: .insetGrouped)
        tableView.register(FruitTableViewCell.self, forCellReuseIdentifier: FruitTableViewCell.identifier)
        tableView.translatesAutoresizingMaskIntoConstraints = false
        return tableView
    }()
    
    init() {
        super.init(frame: .zero)
        self.backgroundColor = .systemBackground
        self.addSubview(fruitTableView)
       
        
        loadConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func loadConstraints() {
        
        let fruitTableViewConstraints = [
            fruitTableView.leadingAnchor.constraint(equalTo: self.leadingAnchor),
            fruitTableView.trailingAnchor.constraint(equalTo: self.trailingAnchor),
            fruitTableView.bottomAnchor.constraint(equalTo: self.safeAreaLayoutGuide.bottomAnchor),
            fruitTableView.topAnchor.constraint(equalTo: self.topAnchor)

        ]
        
        NSLayoutConstraint.activate(fruitTableViewConstraints)
      
        
    }
}
