//
//  FruitModel.swift
//  Pomo
//
//  Created by Marília de Sousa on 16/10/22.
//

import Foundation

struct FruitModel: Codable {
    
    let name: String
    let id: Int
    let nutritions: Nutritions
  
}

struct Nutritions: Codable {
    
    let protein: Double
    let sugar: Double
    let fat: Double
    let carbohydrates: Double
    let calories: Double
    
}
