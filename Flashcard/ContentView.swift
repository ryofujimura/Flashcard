//
//  ContentView.swift
//  Flashcard
//
//  Created by ryo fujimura on 3/16/24.
//

import SwiftUI

// Define the ContentView structure, which conforms to the View protocol
struct ContentView: View {
    @State private var cards: [Card] = Card.mockedCards

    var body: some View {
        ZStack {
            ForEach(0..<cards.count, id: \.self) { index in
                CardView(card: cards[index], onSwipedLeft: { // <-- Add swiped left property
                    cards.remove(at: index) // <-- Remove the card from the cards array
                }, onSwipedRight: { // <-- Add swiped right property
                    cards.remove(at: index) // <-- Remove the card from the cards array
                })
                .rotationEffect(.degrees(Double(cards.count - 1 - index) * -5))
            }
        }
    }
}

// Preview the ContentView in the canvas
#Preview {
    ContentView()
}
