//
//  Rectangle.swift
//  RickAndMortyAPI
//
//  Created by Bianca Maciel Matos on 19/12/22.
//

import SwiftUI

struct Card: View {
    
    // MARK: Atributes
    var image: Image
    var text: String = ""
    
    var body: some View {
        
        ZStack {
            image
                .resizable()
                .frame(width: 240, height: 220, alignment: .center)
            .clipShape(RoundedRectangle(cornerRadius: 13))
            .shadow(radius: 10)
        }
            
    }
}

struct Rectangle_Previews: PreviewProvider {
    static var previews: some View {
        Card(image: Image("mockup"))
            
    }
}
