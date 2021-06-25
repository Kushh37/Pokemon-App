//
//  ContentView.swift
//  PokemonDex
//
//  Created by Kushh Patel on 25/06/21.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject var pokemonVM : PokemonViewModel = PokemonViewModel()
    
    var body: some View {
        NavigationView {
            VStack {
                PokemonList(pokemons: pokemonVM.pokemons)
                    
                    .navigationTitle("Pokemons")
                    
            }
            
        }
        
            
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
