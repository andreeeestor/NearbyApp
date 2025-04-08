//
//  HomeViewModel.swift
//  NearbyApp
//
//  Created by André Nestor on 08/04/25.
//

import Foundation

import CoreLocation

class HomeViewModel {
    private let baseURL = "http://127.0.0.1:3333"
    var userLatitude = -23.561187293883442
    var userLongitude = -46.656451388116494
    
    var didUpdateCategories: (() -> Void)?
    var didUpdatePlaces: (() -> Void)?
    
    private func fetchCategories(completion: @escaping ([Category]) -> Void) {
        guard let url = URL(string: "\(baseURL)/categories") else {
            return
        }
        
        URLSession.shared.dataTask(with: url) { data, _, error in
            if let error = error {
                print("ERROR")
                return
            }
            
            guard let data = data else {
                completion([])
                return
            }
            
            do {
                let categories = try JSONDecoder().decode([Category].self, from: data)
                DispatchQueue.main.async {
                    completion(categories)
                }
            } catch {
                print("Erro ao pegar categorias de data")
                completion([])
            }
            
        }.resume()
    }
    
}
