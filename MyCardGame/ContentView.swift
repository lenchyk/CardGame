//
//  ContentView.swift
//  MyCardGame
//
//  Created by Lena Soroka on 15.12.2020.
//

import SwiftUI

struct ContentView: View {
    var game: EmojiCardGame
    
    var body: some View {
        return HStack {
            ForEach(game.cards) {card in
                CardView(card: card)
                  .foregroundColor(.red)
                  .font(.largeTitle)
            }
        }
    }
}

struct CardView: View {
    var card: CardGame<String>.Card
    
    var body: some View {
        ZStack {
            if card.isFaceUp {
                RoundedRectangle(cornerRadius: 10.0).fill(Color.white)
                RoundedRectangle(cornerRadius: 10.0).stroke(lineWidth: 3)
                Text(card.content)
            } else {
                RoundedRectangle(cornerRadius: 10.0).fill()
            }
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(game: EmojiCardGame())
    }
}
