//
//  ApiServices.swift
//  PokemonDex
//
//  Created by Kushh Patel on 25/06/21.
//

import Foundation

var baseUrl: String = "https://raw.githubusercontent.com/robert-z/simple-pokemon-json-api"

class ApiServices{
    func fetchPokemons(completion: @escaping ([Pokemon])->()) {
        let url = URL(string: "\(baseUrl)/master/data/pokemon.json")
        
        URLSession.shared.dataTask(with: url!) {data, _, _ in
            guard let data = data else {return}
            
            DispatchQueue.main.async {
                let pokemons = try! JSONDecoder().decode([Pokemon].self, from: data)
                completion(pokemons)
                
            }
        }.resume()
    }
}
