//
//  ContentView.swift
//  ViewsAndModifiers
//
//  Created by noor on 2/8/25.
//

import SwiftUI
//Custom ViewModifiers
struct Watermark : ViewModifier {
    var text: String
    func body(content: Content) -> some View {
        ZStack(alignment: .bottomTrailing){
            content
            Text(text)
                .font(.caption)
                .padding(5)
                .background(.black)
                .foregroundStyle(.white)
        }
    }
}

extension View {
    func Watermarked(with text: String ) -> some View {
        modifier(Watermark(text: text))
    }
}

struct ContentView: View {
    var body: some View {
        Color.blue
            .frame(width: 400, height: 300)
            .Watermarked(with: "Copyright @2025")
    }
}
#Preview {
    ContentView()
}
