//
//  FeedView.swift
//  ToyGram
//
//  Created by Ebele.Nedosa on 30/01/2023.
//

import SwiftUI

struct FeedView: View {
    var body: some View {
        ScrollView {
            PostView()
            PostView()
            PostView()
            PostView()
        }
        .navigationTitle("FEED VIEW")
        .navigationBarTitleDisplayMode(.inline)
        
    }
}

struct FeedView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            FeedView()
        }
        
    }
}
