//
//  WebService.swift
//  RickAndMortyAPI
//
//  Created by Bianca Maciel Matos on 19/12/22.
//

import Foundation
import SwiftUI


class WebService: ObservableObject {
    
    // MARK: Atributes
    @Published var characters = [Character]()
    
    func loadCharacters(completionHandler: @escaping ([Character]) -> ()) {
        
        // Getting the URL
        guard let url = URL(string: "https://rickandmortyapi.com/api/character") else {
            print("Sorry, we couldn't find the URL")
            return
        }
        
        // Getting what's inside the URL
        URLSession.shared.dataTask(with: url) { data, response, error in
            let characters = try! JSONDecoder().decode([Character].self, from: data!)
            DispatchQueue.main.async {
                completionHandler(characters)
            }
        }
        .resume()
    }
    
}
