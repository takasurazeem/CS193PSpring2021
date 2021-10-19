//
//  ContentView.swift
//  Memory
//
//  Created by Takasur Azeem on 05/06/2021.
//

import SwiftUI

struct ContentView: View {
    
    var emojis = ["💰", "🔑", "📦", "🎾", "🏀", "⚽️", "🏈", "🏉", "🥏", "🎱", "🪀", "🏓", "🏸", "🏏", "⛳️", "🛹", "🎯", "🧩"]
    
    @State var emojiCount = 4
    
    var body: some View {
        VStack {
            ScrollView {
                LazyVGrid(columns: [GridItem(.adaptive(minimum: 65))]) {
                    ForEach(emojis[0..<emojiCount], id: \.self) { emoji in
                        CardView(content: emoji)
                            .aspectRatio(2/3, contentMode: .fit)
                    }
                }
            }
            .foregroundColor(.red)
            Spacer()
            footer
        }
        .padding(.horizontal)
    }
    
    var footer: some View {
        HStack {
            add
            Spacer()
            shuffle
            Spacer()
            remove
        }
        .padding(.horizontal)
        .font(.largeTitle)
    }
    
    var shuffle: some View {
        Button {
            
        } label: {
            Text("Shuffle")
        }

    }
    
    var remove: some View {
        Button {
            if emojiCount < emojis.count {
                emojiCount += 1
            }
        } label: {
            VStack {
                Image(systemName: "plus.circle")
            }
        }
    }
    
    var add: some View {
        Button {
            if emojiCount > 1 {
                emojiCount -= 1
            }
        } label: {
            Image(systemName: "minus.circle")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        if #available(iOS 15.0, *) {
            ContentView()
                .preferredColorScheme(.dark)
                .previewInterfaceOrientation(.portrait)
        } else {
            // Fallback on earlier versions
        }
        ContentView()
            .preferredColorScheme(.light)
    }
}
