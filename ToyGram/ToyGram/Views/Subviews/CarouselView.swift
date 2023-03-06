//
//  CarouselView.swift
//  ToyGram
//
//  Created by Ebele.Nedosa on 06/03/2023.
//

import SwiftUI

struct CarouselView: View {
    
    @State var selection: Int = 1
    let ImageCount = 8
    @State var isTimerAdded : Bool = false
    
    var body: some View {
        TabView(selection: $selection, content: {
            
            ForEach(1..<ImageCount) { count in
                Image("dog\(count)")
                    .resizable()
                    .scaledToFit()
                    .tag(count)
            }
            
//            Text("Tab Content 2").tabItem {
//                Text("Tab Label 2").tag(2)
//            }
        })
        .tabViewStyle(PageTabViewStyle())
//        .background(Color.red)
        .frame(height: 300)
        .animation(.default)
        .onAppear {
            if !isTimerAdded {
                addTimer()
            }
           
        }
    }
    
    // MARK: FUNCTIONS
    
    func addTimer() {
        isTimerAdded = true
        let timer = Timer.scheduledTimer(withTimeInterval: 4.0, repeats: true) { Timer in
            if selection == (ImageCount - 1) {
                selection = 1
            } else {
                selection += 1
            }
           
        }
        timer.fire()
    }
}

struct CarouselView_Previews: PreviewProvider {
    static var previews: some View {
        CarouselView()
            .previewLayout(.sizeThatFits)
    }
}
