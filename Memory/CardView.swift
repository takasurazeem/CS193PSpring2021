//
//  CardView.swift
//  Memory
//
//  Created by Takasur Azeem on 20/10/2021.
//

import SwiftUI

struct CardView: View {
    
    @State var isFaceUp = true
    var content: String
    
    var shape = RoundedRectangle(cornerRadius: 20)
    
    var body: some View {
        ZStack {
            if isFaceUp {
                shape.fill().foregroundColor(.white)
                shape.strokeBorder(lineWidth: 3)
                Text(content)
                    .font(.largeTitle)
            } else {
                shape.fill()
            }
        }
        .foregroundColor(.red)
        .onTapGesture {
            isFaceUp = !isFaceUp
        }
    }
}


struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        CardView(content: "🇵🇰")
        CardView(content: "🇵🇰")
            .preferredColorScheme(.dark)
        
    }
}

