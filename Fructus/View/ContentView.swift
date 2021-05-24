//
//  ContentView.swift
//  Fructus
//
//  Created by Alley Pereira on 22/05/21.
//

import SwiftUI

struct ContentView: View {
    // MARK: - Properties

    @State private var isShowingSettings: Bool = false

    var fruits: [Fruit] = fruitsData

    var body: some View {

        // MARK: - Body
        NavigationView {
            List {
                ForEach(fruits.shuffled()) { item in
                    NavigationLink(
                        destination: FruitDetailView(fruit: item)) {
                        FruitRowView(fruit: item)
                            .padding(.vertical, 4)
                    }
                }
            }
            .navigationTitle("Fruits")
            .navigationBarItems(trailing: Button(action: {
                isShowingSettings = true
            }, label: {
                Image(systemName: "slider.horizontal.3")
            }) //: Button
            .sheet(isPresented: $isShowingSettings, content: {
                SettingsView()
            })
            )
        } //: Navigation
        .navigationViewStyle(StackNavigationViewStyle()) // Ipad
    }
}

// MARK: - Preview
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(fruits: fruitsData)
            .previewDevice("iPhone 11")
    }
}
