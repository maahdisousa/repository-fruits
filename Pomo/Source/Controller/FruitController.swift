//
//  FruitController.swift
//  Pomo
//
//  Created by Marília de Sousa on 19/10/22.
//

import Foundation

protocol ViewDelegate: AnyObject {
    func reloadView()
}
class FruitController {
    private let fruitService: FruitService
    var fruits: [FruitModel] = []
    weak var delegate: ViewDelegate?
    
    init (fruitService: FruitService = FruitService()) {
        self.fruitService = fruitService
    }
    
    func getFruits() async {
        print(">>>getFruits")
        do {
           fruits = try await fruitService.getAllFruits()
            print(">>>depois de pegar frutas")
            DispatchQueue.main.async {
                self.delegate?.reloadView()
                print(">>>recarregar")
            }
            
        } catch {
//            adicionar tratamento de erro
        }
    }
}


