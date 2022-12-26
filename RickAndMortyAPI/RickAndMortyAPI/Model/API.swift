//
//  API.swift
//  RickAndMortyAPI
//
//  Created by Bianca Maciel Matos on 19/12/22.
//

import Foundation

// MARK: API
struct API: Codable {
    var info: Info
    var results: [Character]
}


// MARK: Info
struct Info: Codable {
    var count: Int
    var pages: Int
    var next: String
    var prev: String
}


// MARK: Results
struct Character: Codable, Identifiable, Hashable {
    var id = UUID()
    var name: String
    var status: String
    var species: String
    var gender: String
    var image: String
}


