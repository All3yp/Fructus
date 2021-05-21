//
//  FruitCardView.swift
//  Fructus
//
//  Created by Alley Pereira on 20/05/21.
//

import SwiftUI

struct FruitCardView: View {

    // MARK: - Properties
    @State private var isAnimating: Bool = false

    // MARK: - Body
    var body: some View {
        ZStack {
            VStack(spacing: 20) {
                // Fruit: image
                Image("blueberry")
                    .resizable()
                    .scaledToFit()
                    .shadow(color: Color(red: 0,
                                         green: 0,
                                         blue: 0,
                                         opacity: 0.15),
                            radius: 8, x: 6, y: 8)
                    .scaleEffect(isAnimating ? 1.0 : 0.6)
                // fruit title
                Text("Blueberry")
                    .foregroundColor(Color.white)
                    .font(.largeTitle)
                    .fontWeight(.heavy)
                    .shadow(color: Color(red: 0,
                                         green: 0,
                                         blue: 0,
                                         opacity: 0.15),
                            radius: 2, x: 2, y: 2)
                // Fruit: headline
                Text("Blueberries are sweet, nutritious and wildly popular fruit all over the world.")
                    .foregroundColor(Color.white)
                    .multilineTextAlignment(.center)
                    .padding(.horizontal, 16)
                    .frame(maxWidth: 480)
                // button: start
                StartButtonView()
            }  //: Vstack
        }  //: Zstack
        .onAppear {
            withAnimation(.easeOut(duration: 0.5)) {
                isAnimating = true
            }
        }
        .frame(minWidth: 0,
               maxWidth: .infinity,
               minHeight: 0, maxHeight: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/,
               alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)

        .background(LinearGradient(
                        gradient: Gradient(
                            colors: [Color("ColorBlueberryLight"),
                                     Color("ColorBlueberryDark")]),
                        startPoint: .top, endPoint: .bottom))
        .cornerRadius(20)
        .padding(.horizontal, 20)
    }
}

// MARK: - Preview
struct FruitCardView_Previews: PreviewProvider {
    static var previews: some View {
        FruitCardView()
//            .previewDevice("iphone 11")
            .previewLayout(.fixed(width: 320, height: 640))
    }
}
