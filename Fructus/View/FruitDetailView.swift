//
//  FruitDetailView.swift
//  Fructus
//
//  Created by Alley Pereira on 23/05/21.
//

import SwiftUI

struct FruitDetailView: View {
    // MARK: - Properties

    var fruit: Fruit

    // MARK: - Body
    var body: some View {

        NavigationView {
            ScrollView(.vertical, showsIndicators: false) {
                VStack(alignment: .center, spacing: 20) {
                    // Header
                    FruitHeaderView(fruit: fruit)
                    VStack(alignment: .leading, spacing: 20) {
                        // Title
                        Text(fruit.title)
                            .font(.largeTitle)
                            .fontWeight(.heavy)
                            .foregroundColor(fruit.gradientColors[1])

                        // Headline
                        Text(fruit.headline)
                            .font(.headline)
                            .multilineTextAlignment(.leading)

                        // Nutrients
                        FruitNutrientsView(fruit: fruit)

                        // Subheadline
                        Text("Learn more abour \(fruit.title)".uppercased())
                            .font(.body)
                            .foregroundColor(fruit.gradientColors[1])

                        // Description
                        Text(fruit.description)
                            .multilineTextAlignment(.leading)

                        // Link
                        SourceLinkView()
                            .padding(.top, 10)
                            .padding(.bottom, 40)
                    } //: VStack
                    .padding(.horizontal, 20)
                    .frame(maxWidth: 640, alignment: .center)
                } //: VStack
                .navigationBarTitle(fruit.title, displayMode: .inline)
                .navigationBarHidden(true)
            } //: Scrool
            .edgesIgnoringSafeArea(.top)
        } //: Navigation
        .navigationViewStyle(StackNavigationViewStyle()) // Ipad
    }
}

// MARK: - Preview
struct FruitDetailView_Previews: PreviewProvider {
    static var previews: some View {
        FruitDetailView(fruit: fruitsData[0])
            .previewDevice("iPhone 11")
    }
}
