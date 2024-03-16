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
                CardView(card: cards[index])
                    .rotationEffect(.degrees(Double(cards.count - 2 - index) * -3))
            }
        }
        .gesture(DragGesture()
            .onChanged { gesture in // <-- onChanged called for every gesture value change, like when the drag translation changes
                let translation = gesture.translation // <-- Get the current translation value of the gesture. (CGSize with width and height)
                print(translation) // <-- Print the translation value
            }
        )
    }
}

// Preview the ContentView in the canvas
#Preview {
    ContentView()
}
