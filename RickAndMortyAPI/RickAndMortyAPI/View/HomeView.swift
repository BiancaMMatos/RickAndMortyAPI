//
//  ContentView.swift
//  RickAndMortyAPI
//
//  Created by Bianca Maciel Matos on 19/12/22.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        NavigationStack {
            List {
                Text("Hello")
                Text("Hello")
                Text("Hello")
            }
            .navigationTitle("Rick And Morty")
        }
        
    }
}


struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
