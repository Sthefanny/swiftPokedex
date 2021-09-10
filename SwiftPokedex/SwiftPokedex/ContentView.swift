//
//  ContentView.swift
//  SwiftPokedex
//
//  Created by Sthefanny Gonzaga on 10/09/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Color("lightPurple").edgesIgnoringSafeArea(.all)
            
            ZStack {
                Image("pokemons")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .position(x: 200, y: 70)
                
                
                Text("Pokédex da Stel")
                    .font(.title2)
                    .fontWeight(.bold)
                    .position(x: 95, y: 10)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
