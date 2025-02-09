//
//  ContentView.swift
//  ViewsAndModifiers
//
//  Created by noor on 2/8/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        Button("Hello World!") {
            print(type(of: self.body))
        }
        .padding()
        .background(.red)
        .padding()
        .background(.blue)
        .padding()
        .background(.green)
        .padding()
        .background(.pink)
        .padding()
        .background(.yellow)
    }
}

#Preview {
    ContentView()
}
