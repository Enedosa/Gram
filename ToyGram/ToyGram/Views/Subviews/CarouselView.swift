//
//  CarouselView.swift
//  ToyGram
//
//  Created by Ebele.Nedosa on 06/03/2023.
//

import SwiftUI

struct CarouselView: View {
    var body: some View {
        TabView(selection: .constant(1), content: {
            Image("dog1")
                .resizable()
                .scaledToFit()
                .tag(0)
            Image("dog2")
                .resizable()
                .scaledToFit()
                .tag(2)
            Image("dog3")
                .resizable()
                .scaledToFit()
                .tag(3)
            Image("dog4")
                .resizable()
                .scaledToFit()
                .tag(4)
            Image("dog5")
                .resizable()
                .scaledToFit()
                .tag(5)
            Text("Tab Content 2").tabItem {
                Text("Tab Label 2").tag(2)
            }
        })
        .tabViewStyle(PageTabViewStyle())
        .background(Color.red)
        .frame(height: 300)
    }
}

struct CarouselView_Previews: PreviewProvider {
    static var previews: some View {
        CarouselView()
            .previewLayout(.sizeThatFits)
    }
}
