//
//  FruitDetailsView.swift
//  Pomo
//
//  Created by Marília de Sousa on 22/10/22.
//

import Foundation
import UIKit

class FruitDetailsView : UIView {

    let fruitSugar: UILabel = {
        let fruitSugar = UILabel()
        fruitSugar.text = "Sugar"
        fruitSugar.tintColor = .black
        fruitSugar.font = UIFont.boldSystemFont(ofSize: 18)
        fruitSugar.translatesAutoresizingMaskIntoConstraints = false
        return fruitSugar
    }()
    
    let fruitSugarValue: UILabel = {
        let fruitSugarValue = UILabel()
        fruitSugarValue.textColor = .gray
        fruitSugarValue.font = UIFont.boldSystemFont(ofSize: 18)
        fruitSugarValue.translatesAutoresizingMaskIntoConstraints = false
        return fruitSugarValue
    }()
    
    let fruitSugarStack: UIStackView = {
        let fruitSugarStack = UIStackView()
        fruitSugarStack.axis = .horizontal
        fruitSugarStack.distribution = .equalCentering
        fruitSugarStack.translatesAutoresizingMaskIntoConstraints = false
        return fruitSugarStack
    }()
    
    let fruitCarbohydrates: UILabel = {
        let fruitCarbohydrates = UILabel()
        fruitCarbohydrates.text = "Carbohydrates"
        fruitCarbohydrates.tintColor = .black
        fruitCarbohydrates.font = UIFont.boldSystemFont(ofSize: 18)
        fruitCarbohydrates.translatesAutoresizingMaskIntoConstraints = false
        return fruitCarbohydrates
    }()
    
    let fruitCarbohydratesValue: UILabel = {
        let fruitCarbohydratesValue = UILabel()
        fruitCarbohydratesValue.textColor = .gray
        fruitCarbohydratesValue.font = UIFont.boldSystemFont(ofSize: 18)
        fruitCarbohydratesValue.translatesAutoresizingMaskIntoConstraints = false
        return fruitCarbohydratesValue
    }()
    
    let fruitCarbohydratesStack: UIStackView = {
        let fruitCarbohydratesStack = UIStackView()
        fruitCarbohydratesStack.axis = .horizontal
        fruitCarbohydratesStack.distribution = .equalCentering
        fruitCarbohydratesStack.translatesAutoresizingMaskIntoConstraints = false
        return fruitCarbohydratesStack
    }()
    
    let fruitProtein: UILabel = {
        let fruitProtein = UILabel()
        fruitProtein.text = "Protein"
        fruitProtein.tintColor = .black
        fruitProtein.font = UIFont.boldSystemFont(ofSize: 18)
        fruitProtein.translatesAutoresizingMaskIntoConstraints = false
        return fruitProtein
    }()
    
    let fruitProteinesValue: UILabel = {
        let fruitProteinesValue = UILabel()
        fruitProteinesValue.textColor = .gray
        fruitProteinesValue.font = UIFont.boldSystemFont(ofSize: 18)
        fruitProteinesValue.translatesAutoresizingMaskIntoConstraints = false
        return fruitProteinesValue
    }()
    
    let fruitProteinesStack: UIStackView = {
        let fruitProteinesStack = UIStackView()
        fruitProteinesStack.axis = .horizontal
        fruitProteinesStack.distribution = .equalCentering
        fruitProteinesStack.translatesAutoresizingMaskIntoConstraints = false
        return fruitProteinesStack
    }()
    
    let fruitFat: UILabel = {
        let fruitFat = UILabel()
        fruitFat.text = "Fat"
        fruitFat.tintColor = .black
        fruitFat.font = UIFont.boldSystemFont(ofSize: 18)
        fruitFat.translatesAutoresizingMaskIntoConstraints = false
        return fruitFat
    }()
    
    let fruitFatValue: UILabel = {
        let fruitFatValue = UILabel()
        fruitFatValue.textColor = .gray
        fruitFatValue.font = UIFont.boldSystemFont(ofSize: 18)
        fruitFatValue.translatesAutoresizingMaskIntoConstraints = false
        return fruitFatValue
    }()
    
    let fruitFatStack: UIStackView = {
        let fruitFatStack = UIStackView()
        fruitFatStack.axis = .horizontal
        fruitFatStack.distribution = .equalCentering
        fruitFatStack.translatesAutoresizingMaskIntoConstraints = false
        return fruitFatStack
    }()
    
    let fruitCalories: UILabel = {
        let fruitCalories = UILabel()
        fruitCalories.text = "Calories"
        fruitCalories.tintColor = .black
        fruitCalories.font = UIFont.boldSystemFont(ofSize: 18)
        fruitCalories.translatesAutoresizingMaskIntoConstraints = false
        return fruitCalories
    }()
    
    let fruitCaloriesValue: UILabel = {
        let fruitCaloriesValue = UILabel()
        fruitCaloriesValue.textColor = .gray
        fruitCaloriesValue.font = UIFont.boldSystemFont(ofSize: 18)
        fruitCaloriesValue.translatesAutoresizingMaskIntoConstraints = false
        return fruitCaloriesValue
    }()
    
    let fruitCaloriesStack: UIStackView = {
        let fruitCaloriesStack = UIStackView()
        fruitCaloriesStack.axis = .horizontal
        fruitCaloriesStack.distribution = .equalCentering
        fruitCaloriesStack.translatesAutoresizingMaskIntoConstraints = false
        return fruitCaloriesStack
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        backgroundColor = .white
        setupStackView()
        setupConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setupStackView(){
        self.addSubview(fruitCaloriesStack)
        self.addSubview(fruitProteinesStack)
        self.addSubview(fruitSugarStack)
        self.addSubview(fruitFatStack)
        self.addSubview(fruitCarbohydratesStack)
        
        fruitCaloriesStack.addArrangedSubview(fruitCalories)
        fruitCaloriesStack.addArrangedSubview(fruitCaloriesValue)
        
        fruitProteinesStack.addArrangedSubview(fruitProtein)
        fruitProteinesStack.addArrangedSubview(fruitProteinesValue)
       
        fruitSugarStack.addArrangedSubview(fruitSugar)
        fruitSugarStack.addArrangedSubview(fruitSugarValue)
        
        fruitFatStack.addArrangedSubview(fruitFat)
        fruitFatStack.addArrangedSubview(fruitFatValue)
        
        fruitCarbohydratesStack.addArrangedSubview(fruitCarbohydrates)
        fruitCarbohydratesStack.addArrangedSubview(fruitCarbohydratesValue)
    }
    
    func setupConstraints(){
        let fruitCaloriesStackConstraints = [
            fruitCaloriesStack.topAnchor.constraint(equalTo: self.safeAreaLayoutGuide.topAnchor, constant: 32),
            fruitCaloriesStack.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 16),
            fruitCaloriesStack.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -16)
        ]
        
        let fruitProteinesStackConstraints = [
            fruitProteinesStack.topAnchor.constraint(equalTo: fruitCaloriesStack.bottomAnchor, constant: 16),
            fruitProteinesStack.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 16),
            fruitProteinesStack.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -16)
        ]
        
        let fruitSugarStackConstraints = [
            fruitSugarStack.topAnchor.constraint(equalTo: fruitProteinesStack.bottomAnchor, constant: 16),
            fruitSugarStack.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 16),
            fruitSugarStack.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -16)
        ]
        
        let fruitFatStackConstraints = [
            fruitFatStack.topAnchor.constraint(equalTo: fruitSugarStack.bottomAnchor, constant: 16),
            fruitFatStack.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 16),
            fruitFatStack.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -16)
        ]
        
        let fruitCarbohydratesStackConstraints = [
            fruitCarbohydratesStack.topAnchor.constraint(equalTo: fruitFatStack.bottomAnchor, constant: 16),
            fruitCarbohydratesStack.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 16),
            fruitCarbohydratesStack.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -16)
        ]
        
        NSLayoutConstraint.activate(fruitCaloriesStackConstraints)
        NSLayoutConstraint.activate(fruitProteinesStackConstraints)
        NSLayoutConstraint.activate(fruitSugarStackConstraints)
        NSLayoutConstraint.activate(fruitFatStackConstraints)
        NSLayoutConstraint.activate(fruitCarbohydratesStackConstraints)
        
    }

    func setupFruit(fruitModel: FruitModel){
        fruitCaloriesValue.text = fruitModel.nutritions.calories.description
        fruitProteinesValue.text = fruitModel.nutritions.protein.description
        fruitSugarValue.text = fruitModel.nutritions.sugar.description
        fruitFatValue.text = fruitModel.nutritions.fat.description
        fruitCarbohydratesValue.text = fruitModel.nutritions.carbohydrates.description
    }
}

//func loadConstraints() {
//
//    let fruitTableViewConstraints = [
//        fruitTableView.leadingAnchor.constraint(equalTo: self.leadingAnchor),
//        fruitTableView.trailingAnchor.constraint(equalTo: self.trailingAnchor),
//        fruitTableView.bottomAnchor.constraint(equalTo: self.safeAreaLayoutGuide.bottomAnchor),
//        fruitTableView.topAnchor.constraint(equalTo: self.topAnchor)
//
//    ]
//
//    NSLayoutConstraint.activate(fruitTableViewConstraints)


//class SampleViewController: UIViewController {
//
//    override func viewDidLoad() {
//        super.viewDidLoad()
//
//        let mStackView = UIStackView()
//
//        // horizontal stack view
//        mStackView.axis  = .horizontal
//
//        // distribution  = fillEqually ... means make each arranged subview equal width
//        mStackView.distribution  = .fillEqually
//
//        // alignment = center ... means center the arranged subviews vertically
//        mStackView.alignment = .center
//
//        // spacing = 10 ... horizontal gap between arranged subviews
//        mStackView.spacing = 10
//
//        // create the left-side "Donate" view
//        let donateView = createMyView("Donate", bgColor: UIColor.green, txtColor: UIColor.black)
//
//        // create the right-side "Receive" view
//        let receiveView = createMyView("Receive", bgColor: UIColor.yellow, txtColor: UIColor.blue)
//
//        mStackView.addArrangedSubview(donateView)
//        mStackView.addArrangedSubview(receiveView)
//
//        // using auto-layout
//        mStackView.translatesAutoresizingMaskIntoConstraints = false
//
//        view.addSubview(mStackView)
//
//        // setup constraints for mStackView
