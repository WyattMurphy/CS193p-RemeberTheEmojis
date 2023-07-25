//
//  EmojisMemoryGame.swift
//  RememberTheEmojis
//
// View Model for Emoji Game
// acts as intermediary for logic and UI
// // gatekeeper to model
//
//  Created by Wyatt Murphy on 7/25/23.
//

import SwiftUI



class EmojiMemoryGame {
    
    static let emojisHand : Array<String> = ["🤝","👍", "👎","👊","🤟","🤘", "🤌","🤏","🫲","🖖", "🤙","👌","🤞","✌️", "👐"] // name spaced to EmojiMemoeryGame.emojisHand

    static func createMemoryGame() -> MemoryGame<String> {
        MemoryGame<String>(numberOfPairsOfCards: 4) {pairIndex in emojisHand[pairIndex]}
        
    }
    
    private var model: MemoryGame<String> = createMemoryGame()

    var cards: Array<MemoryGame<String>.Card> {
        return model.cards
    }
}
