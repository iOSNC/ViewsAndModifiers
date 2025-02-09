//
//  ContentView.swift
//  ViewsAndModifiers
//
//  Created by noor on 2/8/25.
//

import SwiftUI

struct ContentView: View {
    @State private var isUserRead = false
    var body: some View {
        Button("Hello World!") {
            isUserRead.toggle()
        }
        .foregroundStyle(isUserRead ? .blue: .red)
    }
}

#Preview {
    ContentView()
}
