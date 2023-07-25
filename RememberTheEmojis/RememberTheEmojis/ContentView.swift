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
    // View -> versitile visual display that supports multi-touch based I/O
    // views are be constructed of views -> lego analogy
    
    var emojis : Array<String> = ["🎻", "🐋" ,"🥸" ,"👾", "🐶", "🐱" ,"🐭" ,"🐹","🐰", "🦊" ,"🐻" ,"🐼","🙊",                               "🐷" ,"🐮" ,"🦁","🐨", "🐸" ,"🐦"]
    
    @State var emojiCount = 16
    // 🥸👻👾🤖🐋🎻🐶🐱🐭🐹🐰🦊🐻🐼🐻‍❄️🙊🐷🐮🦁🐨🐸🐦
    
    var body: some View {
        VStack{
            LazyVGrid(columns: [GridItem(.adaptive(minimum: 65))]){
                ForEach(emojis[0..<emojiCount], id:\.self, content: { emoji in CardView(moji : emoji).aspectRatio(2/3, contentMode: .fit)})
            }
            Spacer()
//            HStack{
//                    remove
//                    Spacer()
//                    add
//                }
//                .padding(.horizontal)
//                .font(.largeTitle)
//                .foregroundColor(.blue)
            }
            .padding(.horizontal)
            .foregroundColor(.purple)
        }
    
    
//    var remove: some View {
//        Button(action: {
//            if(emojiCount > 1){
//                emojiCount -= 1
//            }
//        }, label: {
//            Image(systemName: "minus.diamond.fill")
//        })
//    }
//    var add: some View {
//        Button(action: {
//            if(emojiCount < emojis.count){
//                emojiCount += 1
//            }
//        }, label: {
//            Image(systemName: "plus.diamond.fill")
//
//        })
//    }
        
}


struct CardView: View{
    var moji: String
    @State var faceUp : Bool = true // boolean storing card state
    // @State changes faceUp to a pointer to boolean reference somewhere in memory
    // supports immutablility of View
    
    var body : some View{
        ZStack {
            let shape = RoundedRectangle(cornerRadius : 20) // let -> constant
            // implicitly assigned type
            
            if(faceUp){
                shape.fill().foregroundColor(.white)
                shape.stroke(lineWidth: 1)
                Text(moji)
                    .font(.largeTitle)
            }else{
                shape.fill()
            }
           
        }
        .onTapGesture{
            faceUp = !faceUp
        }
    }
}








































// connects preview feature to contentView
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .preferredColorScheme(.light)
        ContentView()
            .preferredColorScheme(.dark)

    }
}
