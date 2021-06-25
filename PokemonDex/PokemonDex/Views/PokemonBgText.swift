//
//  PokemonBgText.swift
//  PokemonDex
//
//  Created by Kushh Patel on 25/06/21.
//

import SwiftUI

struct PokemonBgText: View {
    let name: String
    var body: some View {
        ZStack(alignment:.bottom){
            Rectangle().foregroundColor(.blue.opacity(0.50)).frame(width: .infinity, height: 50, alignment: .bottom).padding()
            Text(name)
                .font(.largeTitle)
                .fontWeight(.bold)
                .multilineTextAlignment(.center)
                .shadow(radius:20)
                .padding()
            
            
        }
        
    }
}

struct PokemonBgText_Previews: PreviewProvider {
    static var previews: some View {
        PokemonBgText(name: "Pikachu")
    }
}
