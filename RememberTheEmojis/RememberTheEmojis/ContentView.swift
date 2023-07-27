//
//  ContentView.swift
//  RememberTheEmojis
//
//  Created by Wyatt Murphy on 2/4/23.
//

import SwiftUI

// struct - data structure, collection of variables & functions
// functional programming -> functions define behavior
struct ContentView: View {
    
    var viewModel: EmojiMemoryGame
    
    //🤝👍👎👊🤟🤘🤌🤏🫲🖖🤙👌🤞✌️👐
    // 🥸👻👾🤖🐋🎻🐶🐱🐭🐹🐰🦊🐻🐼🐻‍❄️🙊🐷🐮🦁🐨🐸🐦
    
    var body: some View {
        VStack{
            LazyVGrid(columns: [GridItem(.adaptive(minimum: 65))]){
                ForEach(viewModel.cards, content: { card in
                    CardView(card: card ).aspectRatio(4/7, contentMode: .fit)})
            }
            Spacer()
                .padding(.horizontal)
                .foregroundColor(.purple)
        }
    }
    
    
    struct CardView: View{
        var card: MemoryGame<String>.Card
        
        
        // @State changes faceUp to a pointer to boolean reference somewhere in memory
        // supports immutablility of View
        
        var body : some View{
            ZStack {
                let shape = RoundedRectangle(cornerRadius : 20) // let -> constant
                // implicitly assigned type
                if(card.isFaceUp){
                    shape.fill().foregroundColor(.white)
                    shape.stroke(lineWidth: 1)
                    Text(card.content)
                        .font(.largeTitle)
                }else{
                    shape.fill()
                }
            }
        }
    }
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    // connects preview feature to contentView
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            let game = EmojiMemoryGame()
            ContentView(viewModel: game)
                .preferredColorScheme(.light)
            ContentView(viewModel: game)
                .preferredColorScheme(.dark)
            
        }
    }
}
