//
//  ContentView.swift
//  ViewsAndModifiers
//
//  Created by noor on 2/8/25.
//

import SwiftUI
//Custom Containers
struct GridStack<Content: View> : View {
    let rows: Int
    let columns: Int
    @ViewBuilder var content: (Int, Int) -> Content
    
    var body : some View {
        ForEach(0..<rows, id: \.self) { row in
            HStack {
                ForEach(0..<columns, id: \.self) { column in
                    content(row, column)
                }
            }
        }
    }
}

//custom View Modifier
struct largeBlueTitle : ViewModifier {
    func body(content: Content) -> some View {
        content
            .padding()
            .foregroundStyle(.blue)
            .font(.largeTitle.weight(.semibold))
    }
}

extension View {
    func LargeBlueTitle() -> some View {
        modifier(largeBlueTitle())
    }
}

struct ContentView: View {
    var body: some View {
        VStack {
            GridStack(rows: 3, columns: 2) { (row, column) in
                Text("R\(row)C\(column)")
                Image(systemName: "\(row + column).circle")
            }
            .LargeBlueTitle()
        }
    }
}
#Preview {
    ContentView()
}
