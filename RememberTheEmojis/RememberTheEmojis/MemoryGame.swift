//
//  EmojisGame.swift
//  RememberTheEmojis
//
//  Created by Wyatt Murphy on 7/25/23.
//

import Foundation

struct MemoryGame<CardContent> {
    private(set)var cards : Array<Card> // access modifyer
    
    func choose(_ card: Card) {
        
    }
    
    //init function to set cards
    init(numberOfPairsOfCards: Int, createCardContent: (Int) -> CardContent) {
        cards = Array<Card>()
        // add numberOfPairOfCards x 2 cards to cards array
        for pairIndex in 0..<numberOfPairsOfCards {
            let content : CardContent = createCardContent(pairIndex)
            cards.append(Card(isFaceUp: false, isMatched: false, content: content))
            cards.append(Card(isFaceUp: false, isMatched: false, content: content))
        }
    }
    
    struct Card {
        var isFaceUp: Bool = true
        var isMatched: Bool = false
        var content: CardContent // dont't care type <Generic>
    }
}
