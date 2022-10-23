//
//  FruitDetailsViewController.swift
//  Pomo
//
//  Created by Marília de Sousa on 22/10/22.
//

import Foundation
import UIKit

class FruitDetailsViewController: UIViewController {
    
    let fruitDetailsView = FruitDetailsView()
    let fruitModel: FruitModel
    
    init(fruitModel: FruitModel) {
        self.fruitModel = fruitModel
        super.init(nibName: nil, bundle: nil)
    }
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func loadView() {
        self.view = fruitDetailsView
    }
    
    override func viewDidLoad() {
        fruitDetailsView.setupFruit(fruitModel: fruitModel)
        self.navigationItem.title = fruitModel.name
        
    }
}


