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
        VStack {
            Text("Hello World")
                .font(.largeTitle) //this child modifier overrides the external vstack font modifer
            Text("Hello World")
            Text("Hello World")
            Text("Hello World")
            Text("Hello World")
        }
        .font(.title) //applies to all elements inside the VStack, but child modifers take precedence
    }
}

#Preview {
    ContentView()
}
