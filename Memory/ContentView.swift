//
//  ContentView.swift
//  Memory
//
//  Created by Takasur Azeem on 05/06/2021.
//

import SwiftUI

struct ContentView: View {
    let carEmojis = ["🚗", "🚙", "🏎", "🚕", "🚓", "🚘", "🚖", "🚔", "✈️", "🛺", "🚀"]
    let sportsEmojis = ["⚽️", "🏀", "🏈", "⚾️", "🥎", "🎾", "🏐", "🏉", "🥏", "🎱", "🪀"]
    let flagsEmojis = ["🇸🇦", "🇵🇰", "🇲🇾", "🇮🇩", "🇺🇿", "🇹🇷", "🇲🇦", "🇹🇯", "🇮🇷", "🇮🇶", "🇰🇼", "🇸🇩"]
    @State var emojis = ["🚗", "🚙", "🏎", "🚕", "🚓", "🚘", "🚖", "🚔", "✈️", "🛺", "🚀"]
    @State var emojisCount = 8
    var body: some View {
        VStack {
            Text("Memorize!")
                .font(.largeTitle)
            ScrollView {
                LazyVGrid(columns: [GridItem(.adaptive(minimum: 65))]) {
                    ForEach(emojis[0..<emojisCount], id: \.self) { emoji in
                        CardView(content: emoji)
                            .aspectRatio(2/3, contentMode: .fit)
                    }
                }
                Spacer()
            }
            HStack(spacing: 20) {
                vehiclesButton
                flags
                sportsButton
                
            }
            
        }
        .padding(.horizontal)
    }
    
    var vehiclesButton: some View {
        Button {
            emojis = carEmojis.shuffled()
        } label: {
            VStack {
                Image(systemName: "car")
                    .font(.largeTitle)
                Text("Vehicles")
            }
        }
    }
    
    var flags: some View {
        Button {
            emojis = flagsEmojis.shuffled()
        } label: {
            VStack {
                Image(systemName: "flag")
                    .font(.largeTitle)
                Text("Flags")
            }
        }
    }
    
    var sportsButton: some View {
        Button {
            emojis = sportsEmojis.shuffled()
        } label: {
            VStack {
                Image(systemName: "sportscourt")
                    .font(.largeTitle)
                Text("Sports")
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
        ContentView()
            .preferredColorScheme(.dark)
    }
}
