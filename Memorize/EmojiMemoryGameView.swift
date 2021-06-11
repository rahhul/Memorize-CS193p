//
//  EmojiMemoryGameView.swift
//  Memorize
//
//  Created by Rahul on 28/5/21.
// VIEW

import SwiftUI

struct EmojiMemoryGameView: View {
    
    @ObservedObject var game: EmojiMemoryGame // = EmojiMemoryGame()
    
    
    var body: some View {
        
        VStack {
            HStack {
                Text("\(game.theme.name)")
                    .fontWeight(.semibold)
                    .font(.title)
                    .padding()
                Spacer()
                Text("Score: \(game.score)")
                    .font(.title2)
                    .padding()
                
            }
            .padding(.horizontal)
            ScrollView {
                LazyVGrid(columns: [GridItem(.adaptive(minimum: 65))]) {
                    ForEach(game.cards) {
                        card in CardView(card: card)
                            .aspectRatio(2/3, contentMode: .fit)
                            .onTapGesture {
                                // intent
                                game.choose(card)
                            }
                    }
                }
            }
            .foregroundColor(Color.blue)
            .padding(.horizontal)
            Button(action: {game.newGame()}, label: {
                Image(systemName: "arrow.counterclockwise.circle")
                Text("New Game").font(.title2)
            })
        }
    }
}



func calcCardWidth(cardWidth: CGFloat, cardCount: Int,
                   width: CGFloat, height: CGFloat, aspect: CGFloat = 2/3) -> CGFloat {
    
    let cardHeight = cardWidth / aspect
    
    if cardCount == 1 {
        return cardWidth
    }
    
    let colMax = Int(floor(width / cardWidth))
    let rowMax = Int(floor(height / cardHeight))
    let cardMax = colMax * rowMax
    
    if cardCount <= cardMax {
        return cardWidth
    }
    
    return calcCardWidth(cardWidth: width / CGFloat(colMax + 1),
                         cardCount: cardCount,
                         width: width,
                         height: height,
                         aspect: aspect)
}





struct CardView: View {
    
    let card: EmojiMemoryGame.Card
    
    var body: some View {
        
        ZStack {
            let shape = RoundedRectangle(cornerRadius: 20.0)
            if card.isFaceUp {
                shape.fill().foregroundColor(.white)
                shape.strokeBorder(lineWidth: 2.0)
                Text(card.content).font(.largeTitle)
            }
            // after a match, the pair will disappear
            else if card.isMatched {
                shape.opacity(0)
            } else {
                shape.fill()
            }
        }
    }
    
}

















struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        let game = EmojiMemoryGame()
        EmojiMemoryGameView(game: game)
            .preferredColorScheme(.light)
        //        ContentView(game: game)
        //            .preferredColorScheme(.dark)
    }
}
