//
//  ViewController.swift
//  Pomo
//
//  Created by Marília de Sousa on 14/10/22.
//

import UIKit

class FruitViewController: UIViewController {
    
    let fruitView = FruitView()
    let fruitController = FruitController()
    var filteredFruits: [FruitModel] = []
    var isSearchBarEmpty: Bool {
      return  searchController.searchBar.text?.isEmpty ?? true
    }
    var isFiltering: Bool {
        return searchController.isActive && !isSearchBarEmpty
    }
    
    lazy var searchController: UISearchController = {
        let searchController = UISearchController()
        searchController.searchResultsUpdater = self
        searchController.searchBar.delegate = self
        searchController.obscuresBackgroundDuringPresentation = false
        searchController.searchBar.placeholder = "search"
        
        
        return searchController
    }()
    
    
    override func loadView() {
        self.view = fruitView
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        searchController.searchResultsUpdater = self
     
        
        
        self.title = "Fruits"
        self.navigationController?.navigationBar.prefersLargeTitles = true
        fruitView.fruitTableView.delegate = self
        fruitView.fruitTableView.dataSource = self
        fruitController.delegate = self
        self.navigationItem.searchController = self.searchController
        Task.init {
            await fruitController.getFruits()
        }
    }

}
extension FruitViewController: ViewDelegate {
    func reloadView() {
        fruitView.fruitTableView.reloadData()
    }
}

extension FruitViewController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        print(">>>isFiltering", isFiltering)
        if isFiltering {
            return filteredFruits.count
        }
        return fruitController.fruits.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: FruitTableViewCell.identifier, for: indexPath) as? FruitTableViewCell else {return UITableViewCell()}

        var fruit: FruitModel
        if isFiltering {
            fruit = filteredFruits[indexPath.row]
        } else {
            fruit = fruitController.fruits[indexPath.row]
        }
        cell.accessoryType = .disclosureIndicator
        cell.fruitName.text = fruit.name
        return cell
            
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
    
        var fruit: FruitModel
        if isFiltering {
            fruit = filteredFruits[indexPath.row]
        } else {
            fruit = fruitController.fruits[indexPath.row]
        }
        
        self.navigationController?.pushViewController(FruitDetailsViewController(fruitModel: fruit), animated: true)
    }
}

//extension FruitViewController: UISearchResultsUpdating {
//
//    func updateSearchResults(for searchController: UISearchController) {
//        guard searchController.searchBar.text != nil else { return }
//
//    }
//}

extension FruitViewController: UISearchResultsUpdating {
    func updateSearchResults(for searchController: UISearchController) {
        print(">>>update")
        let searchBar = searchController.searchBar
        guard let text = searchBar.text else { return }
        print(">>>update3", text)
        filteredFruits = fruitController.fruits.filter({ fruit in
            return fruit.name.lowercased().starts(with: text.lowercased())
        })
        print(">>>filteraddfruit", filteredFruits)
        fruitView.fruitTableView.reloadData()
    }
}


extension FruitViewController: UISearchBarDelegate {
    
}
    

