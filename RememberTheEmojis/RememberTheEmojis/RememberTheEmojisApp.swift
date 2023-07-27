//
//  RememberTheEmojisApp.swift
//  RememberTheEmojis
//
//  Created by Wyatt Murphy on 2/4/23.
//

import SwiftUI

@main // main method call
struct RememberTheEmojisApp: App {
    let game = EmojiMemoryGame() // let -> makes game a pointer
    var body: some Scene {
        WindowGroup {
            ContentView(viewModel: game) // describes app
        }
    }
}
