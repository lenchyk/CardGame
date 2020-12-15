//
//  EmojiCardGame.swift
//  MyCardGame
//
//  Created by Lena Soroka on 15.12.2020.
//

import Foundation


//This is ViewModel that binds the View (ContentView) with logical model (CardGame

class EmojiCardGame {
    
    private var game: CardGame<String> = EmojiCardGame.createCardGame() // view model
    
    static func createCardGame() -> CardGame<String> {
        let emojis = ["🤪", "😈", "☠️"]
        return CardGame<String>(numberOfPairsOfCards: emojis.count) { pairIndex in
            return emojis[pairIndex]
        }
    }
    
    //MARK: - Access to the model
    var cards: Array<CardGame<String>.Card> {
        return game.cards
    }
    
    //MARK: - Intents
    func choose(card: CardGame<String>.Card) {
        game.choose(card: card)
    }
}
