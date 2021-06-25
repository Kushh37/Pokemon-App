//
//  PokiDetails.swift
//  PokemonDex
//
//  Created by Kushh Patel on 25/06/21.
//

import SwiftUI
import SDWebImageSwiftUI

struct PokiDetails: View {
    let poke: Pokemon
    var body: some View {
        let pokeVar = poke.variations[0]
        VStack(spacing:20){
            WebImage(url: pokeVar.urlImage)
                .resizable()
                .aspectRatio(contentMode:   .fit)
            Text(pokeVar.name)
                .font(.largeTitle.bold())
                .shadow(radius: 20)
            
            Text(pokeVar.description)
                .font(.headline)
                .multilineTextAlignment(.center)
                .padding()
                
        }
    }
}

struct PokiDetails_Previews: PreviewProvider {
    static var previews: some View {
        PokiDetails(poke: Pokemon(num: 1, name: "Pikachu", variations: []))
    }
}
