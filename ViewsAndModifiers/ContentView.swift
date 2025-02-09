//
//  ContentView.swift
//  ViewsAndModifiers
//
//  Created by noor on 2/8/25.
//

import SwiftUI
//Custom Vieww
struct capsuleText: View {
    var text: String
    var body: some View {
        Text(text)
            .padding()
            .font(.largeTitle)
            .background(.blue)
            .clipShape(.rect(cornerRadius: 15))
    }
}

struct ContentView: View {
    var body: some View {
        VStack(spacing: 15) {
            capsuleText(text: "Hello")
                .foregroundStyle(.white)
            capsuleText(text: "World")
                .foregroundStyle(.red)
        }
    }
}
#Preview {
    ContentView()
}
