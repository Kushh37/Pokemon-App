//
//  PokemonCard.swift
//  PokemonDex
//
//  Created by Kushh Patel on 25/06/21.
//

import SwiftUI
import SDWebImageSwiftUI

struct PokemonCard: View {
    let poke : Pokemon
    var body: some View {
        
        ZStack(alignment: .bottom) {
            NavigationLink(
                destination: PokiDetails(poke: poke)){
                EmptyView()
            }
                
            WebImage(url: poke.variations[0].urlImage)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .cornerRadius(20)
                .shadow(radius:20)
                .padding()
            
            PokemonBgText(name: poke.name)
                
        }
        
        
    }
}

struct PokemonCard_Previews: PreviewProvider {
    static var previews: some View {
        PokemonCard(poke: Pokemon(num: 1, name: "Pikachu", variations: []))
    }
}
