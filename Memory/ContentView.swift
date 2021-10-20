//
//  ContentView.swift
//  Memory
//
//  Created by Takasur Azeem on 05/06/2021.
//

import SwiftUI

struct ContentView: View {
    
    var emojis = ["💰", "🔑", "📦", "🎾", "🏀", "⚽️", "🏈", "🏉", "🥏", "🎱", "🪀", "🏓", "🏸", "🏏", "⛳️", "🛹", "🎯", "🧩"]

    var body: some View {
        VStack {
            LazyVGrid(columns: [GridItem(.adaptive(minimum: 65))]) {
                ForEach(emojis, id: \.self) { emoji in
                    CardView(content: emoji)
                        .aspectRatio(2/3, contentMode: .fit)
                }
            }
            Spacer()
        }
        .padding(.horizontal)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
        ContentView()
            .preferredColorScheme(.dark)
    }
}
