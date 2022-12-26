//
//  ContentView.swift
//  RickAndMortyAPI
//
//  Created by Bianca Maciel Matos on 19/12/22.
//

import SwiftUI

struct HomeView: View {
    
    // MARK: Atributes
    @State private var characters = [Character]()
    
    
    var body: some View {
        
        NavigationStack {
            List(characters, id: \.id) { character in
                NavigationLink(character.image, value: character)
            }
            
        }
        .navigationTitle("Rick And Morty")
        .onAppear {
            WebService().loadCharacters { character in
                self.characters = character
            }
        }
    }
    
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
