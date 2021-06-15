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
            
            AspectVGrid(items: game.cards, aspectRatio: 2/3, content: { card in
                if card.isMatched && !card.isFaceUp {
                    Rectangle().opacity(0)
                } else {
                    CardView(card: card)
                    .padding(5)
                    .onTapGesture {
                        // intent
                        game.choose(card)
                    }
                }
            })
            
            Button(action: {game.newGame()}, label: {
                Image(systemName: "arrow.counterclockwise.circle")
                Text("New Game").font(.title2)
            })
        }
        .foregroundColor(Color.blue)
        .padding(.horizontal)
    }
}







// View for each card
struct CardView: View {
    
    let card: EmojiMemoryGame.Card
    
    var body: some View {
        
        GeometryReader { geometry in
            ZStack {
                    Pie(startAngle: Angle(degrees: 0-90), endAngle: Angle(degrees: 100-90))
                        .padding(6).opacity(0.4)
                    Text(card.content)
                        .rotationEffect(Angle.degrees(card.isMatched ? 360 : 0))
                        .animation(Animation.linear(duration: 1).repeatForever(autoreverses: false))
                        .font(.system(size: 32))
                }
                // after a match, the pair will disappear
            .cardify(isFaceUp: card.isFaceUp)
            }
        }
    
    private func font(in size: CGSize) -> Font {
        Font.system(size: min(size.width, size.height) * DrawingConstants.fontScale)
    }
    
    private struct DrawingConstants {
        static let fontScale: CGFloat = 0.7
    }
    
}












struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        let game = EmojiMemoryGame()
        game.choose(game.cards.first!)
        return EmojiMemoryGameView(game: game)
            .preferredColorScheme(.light)
        //        ContentView(game: game)
        //            .preferredColorScheme(.dark)
    }
}
