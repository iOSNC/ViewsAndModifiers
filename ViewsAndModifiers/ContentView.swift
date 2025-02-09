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

struct ContentView: View {
    var body: some View {
        GridStack(rows: 10, columns: 3) { (row, column) in
            Text("R\(row)C\(column)")
            Image(systemName: "\(row + column).circle")
        }
    }
}
#Preview {
    ContentView()
}
