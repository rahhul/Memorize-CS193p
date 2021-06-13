//
//  Not_Needed.swift
//  Memorize
//
//  Created by Rahul on 11/6/21.
//

import Foundation
import CoreGraphics

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


