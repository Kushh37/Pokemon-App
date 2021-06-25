//
//  PokemonList.swift
//  PokemonDex
//
//  Created by Kushh Patel on 25/06/21.
//

import SwiftUI

struct PokemonList: View {
    let pokemons :[Pokemon]
    var body: some View {
        List{
            ForEach(pokemons){ poke in
                    PokemonCard(poke: poke)
                        .listRowBackground(Color.clear)
                
            }
        }
    }
}

struct PokemonList_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            PokemonList(pokemons: [])
            
        }
    }
}
