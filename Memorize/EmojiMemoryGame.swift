//
//  EmojiMemoryGame.swift
//  Memorize
//
//  Created by Rahul on 1/6/21.
// VIEW_MODEL

import SwiftUI



class EmojiMemoryGame: ObservableObject {
    
    // Type Property
    static let emojis = ["✈️", "🏍", "🚙", "⛴", "🏎", "💺", "🚐", "🛫", "🛬",
                         "🚌", "🚛", "🛳", "🛩", "🚍", "🚊", "🚲", "🚕", "🚚"]
    
    // Type Method
    static func createMemoryGame() -> MemoryGame<String> {
        MemoryGame<String>(numberOfPairsOfCards: 4) { pairIndex in emojis[pairIndex] }
    }
    
    
    @Published private var model: MemoryGame<String> = createMemoryGame()
    
    var cards: Array<MemoryGame<String>.Card> {
        return model.cards
    }
    
    //MARK: - Intent(s)
    
    
    func choose(_ card: MemoryGame<String>.Card) {
        model.choose(card)
    }
    
    
}






