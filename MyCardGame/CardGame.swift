//
//  CardGame.swift
//  MyCardGame
//
//  Created by Lena Soroka on 15.12.2020.
//

import Foundation

struct CardGame<CardContent> {
    var cards: Array<Card>
    
    func choose(card: Card) {
        print("card is chosen - \(card)")
    }
    
    init(numberOfPairsOfCards: Int, contentCreator: (Int) -> CardContent) {
        cards = Array<Card>()
        for pairIndex in 0..<numberOfPairsOfCards {
            let content = contentCreator(pairIndex)
            cards.append(Card(content: content, id: pairIndex * 2))
            cards.append(Card(content: content, id: pairIndex * 2 + 1))
        }
    }
    
    struct Card: Identifiable{
        var isMatched: Bool = false
        var isFaceUp: Bool = true
        var content: CardContent
        var id: Int
    }
}
