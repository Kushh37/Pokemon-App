//
//  PokemonViewModel.swift
//  PokemonDex
//
//  Created by Kushh Patel on 25/06/21.
//

import Foundation

class PokemonViewModel: ObservableObject{
    @Published var pokemons: [Pokemon] = []
    
    init() {
        self.fetchPokemons()
    }
    
    func fetchPokemons(){
        ApiServices().fetchPokemons{pokemons in
            self.pokemons = pokemons
        }
    }
}
