//
//  UserService.swift
//  Pomo
//
//  Created by Marília de Sousa on 16/10/22.
//

import Foundation

class FruitService{
    
    func getAllFruits() async throws -> [FruitModel] {
        do {
            let (dataRequest, _) = try await URLSession.shared.data(
                from: URL(string: Constants.baseUrl + "/api/fruit/all")!
            )
            print("efefef", dataRequest)
            let result = try JSONDecoder().decode([FruitModel].self, from: dataRequest)
            return result
        } catch {
            print ("shwiudjkhw", error)
            throw error
        }
    }
}

//do {
//    let (data, _) = try await URLSession.shared.data(for: urlRequest)
//    let result = try JSONDecoder().decode(SessionModel.self, from: data)
//
//    return result
//} catch {
//    throw error

