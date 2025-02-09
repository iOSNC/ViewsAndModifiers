//
//  ContentView.swift
//  ViewsAndModifiers
//
//  Created by noor on 2/8/25.
//

import SwiftUI
//Custom ViewModifiers
struct Title : ViewModifier {
    func body(content: Content) -> some View {
        content
            .padding()
            .font(.largeTitle)
            .background(.blue)
            .foregroundStyle(.white)
            .clipShape(.rect(cornerRadius: 15))
    }
}

extension View {
    func TitleStyle() -> some View {
        modifier(Title())
    }
}

struct ContentView: View {
    var body: some View {
       Text("Hello World")
            .TitleStyle()
    }
}
#Preview {
    ContentView()
}
