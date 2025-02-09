//
//  ContentView.swift
//  ViewsAndModifiers
//
//  Created by noor on 2/8/25.
//

import SwiftUI

struct ContentView: View {
    //computed properties for views
    var view1: some View {
        VStack {
            Text("Hello world")
            Text("How are you")
        }
    }
    //using @ViewBuilder is recommended because that is exactly how body property is defined
    @ViewBuilder var view2 : some View {
        HStack {
            Text("I am fine..")
            Text("How r u doig")
        }
    }
    
    var body: some View {
        VStack {
            view1
            view2
                .foregroundStyle(.red)
        }
    }
}

#Preview {
    ContentView()
}
