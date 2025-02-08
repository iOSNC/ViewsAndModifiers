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
        .background(.red)
        .frame(width: 200, height: 200)
        
        Button("Hello World!") {
            print(type(of: self.body))
        }
        .frame(width: 200, height: 200)
        .background(.red)
    }
}

#Preview {
    ContentView()
}
