//
//  MemoryGame.swift
//  Memorize
//
//  Created by Rahul on 1/6/21.
// MODEL

import Foundation
import SwiftUI


struct MemoryGame<CardContent: Equatable> {
    
    private(set) var cards: Array<Card>
    
    private(set) var score: Int = 0
    
    private var indexOfTheOneAndOnlyFaceUpCard: Int? {
        
        get { cards.indices.filter({cards[$0].isFaceUp}).oneAndOnly } // functional programming
        
        set { cards.indices.forEach({cards[$0].isFaceUp = ($0 == newValue)}) }
    }
    
    
    
    /// Game Logic
    mutating func choose(_ card: Card) {
        if let chosenIndex = cards.firstIndex(where: { $0.id == card.id}),
           !cards[chosenIndex].isFaceUp,
           !cards[chosenIndex].isMatched
        {
            if let potentialMatchIndex = indexOfTheOneAndOnlyFaceUpCard {
                if cards[chosenIndex].content == cards[potentialMatchIndex].content {
                    cards[chosenIndex].isMatched = true
                    cards[potentialMatchIndex].isMatched = true
                    score += 2
                }
                cards[chosenIndex].isFaceUp.toggle()
//                score -= 1
            } else {
                indexOfTheOneAndOnlyFaceUpCard = chosenIndex
            }
        }
        //        print("\(cards)") // degug
    }
    
    
    
    init(numberOfPairsOfCards: Int, createCardContent: (Int) -> CardContent) {
        
        cards = Array<Card>() // []
        
        // add numberOfPairsOfCards X 2 cards to cards array
        for pairIndex in 0..<numberOfPairsOfCards {
            
            let content: CardContent = createCardContent(pairIndex)
            
            cards.append(Card(content: content, id: pairIndex*2))
            cards.append(Card(content: content, id: pairIndex*2 + 1))
        }
        cards.shuffle()
    }
    
    
    
    struct Card: Identifiable {
        
        var isFaceUp: Bool = false
        var isMatched: Bool = false
        var content: CardContent
        var id: Int
    }
    
}



//MARK: - Extension

extension Array {
    var oneAndOnly: Element? {
        if self.count == 1 {
            return self.first
        } else {
            return nil
        }
    }
}


