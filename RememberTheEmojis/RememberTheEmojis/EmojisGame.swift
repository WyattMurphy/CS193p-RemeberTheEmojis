//
//  EmojisGame.swift
//  RememberTheEmojis
//
//  Created by Wyatt Murphy on 7/25/23.
//

import Foundation

struct EmojisGame<CardContent> {
    var cards : Array<Card>
    
    func choose(_ card: Card) {
        
    }
    
    struct Card {
        var isFaceUp: Bool
        var isMatched: Bool
        var content: CardContent // dont't care type <Generic>
    }
}
