//
//  ContentView.swift
//  FirstApp
//
//  Created by 刘铭 on 2023/1/1.
//

import SwiftUI

struct ContentView: View {
    let cards: [Card] = cardData
    
    var body: some View {
        ScrollView(.horizontal,showsIndicators: false){
            HStack(alignment: .center,spacing: 20, content: {
                ForEach(cards){
                    item in CardView(card: item)
                }
                .padding(20)
            })
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
