//
//  EmojiMemoryGame.swift
//  Memorize
//
//  Created by Rahul on 1/6/21.
// VIEW_MODEL

import SwiftUI


class EmojiMemoryGame: ObservableObject {
    typealias Card = MemoryGame<String>.Card
    
    
    // Type Method
    static func createMemoryGame(theme: Theme) -> MemoryGame<String> {
        
        // get random emoji
        let randomEmoji = theme.emoji.shuffled()
        let numberOfPairs = min(theme.emoji.count, theme.numberOfPairs)
//        print(numberOfPairs)
        let memoryGame = MemoryGame<String>(numberOfPairsOfCards: numberOfPairs) {
            pairIndex in randomEmoji[pairIndex] }
        return memoryGame
    }
    
    
    @Published private var model: MemoryGame<String>
    
    var theme: Theme
    
    
    var cards: Array<Card> {
        return model.cards
    }
    
    var score: Int {
        model.score
    }
    
    init() {
        self.theme = emojiTheme.anyTheme.randomElement()!
        self.model = EmojiMemoryGame.createMemoryGame(theme: theme)
    }
    
    
    //MARK: - Intent(s)
    
    
    func choose(_ card: Card) {
        model.choose(card)
    }
    
    func newGame() {
        self.theme = emojiTheme.anyTheme.randomElement()!
        self.model = EmojiMemoryGame.createMemoryGame(theme: theme)
    }
    
    
}






