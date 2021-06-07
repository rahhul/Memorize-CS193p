//
//  MemorizeApp.swift
//  Memorize
//
//  Created by Rahul on 28/5/21.
//

import SwiftUI

@main
struct MemorizeApp: App {
    
    let game = EmojiMemoryGame()
    
    var body: some Scene {
        WindowGroup {
            ContentView(viewModel: game)
        }
    }
}
