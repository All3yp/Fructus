//
//  ContentView.swift
//  Fructus
//
//  Created by Alley Pereira on 22/05/21.
//

import SwiftUI

struct ContentView: View {
    // MARK: - Properties

    var fruits: [Fruit] = fruitsData

    var body: some View {

    // MARK: - Body
        NavigationView {
            List {
                ForEach(fruits.shuffled()) { item in
                    FruitRowView(fruit: item)
                        .padding(.vertical, 4)
                }
            }
            .navigationTitle("Fruits")
        } //: Navigation
    }
}

// MARK: - Preview
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(fruits: fruitsData)
        .previewDevice("iPhone 11")
    }
}
