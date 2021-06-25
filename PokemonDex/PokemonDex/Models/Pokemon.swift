//
//  Pokemon.swift
//  PokemonDex
//
//  Created by Kushh Patel on 25/06/21.
//

import Foundation

struct Pokemon: Codable, Identifiable {
    var id: UUID {
        get{
            UUID()
        }
    }
    let num: Int
    let name: String
    let variations: [PokiVariation]
}

struct PokiVariation: Codable {
    let name: String
    let description: String
    let image:String
    let types: [String]
    
    var urlImage: URL{
        get{
            URL(string: "\(baseUrl)/master/public/\(image)")!
        }
    }
}
