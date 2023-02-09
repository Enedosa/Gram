//
//  FeedView.swift
//  ToyGram
//
//  Created by Ebele.Nedosa on 30/01/2023.
//

import SwiftUI

struct FeedView: View {
    @ObservedObject var posts: PostArrayObject
    
    var body: some View {
        ScrollView {
            LazyVStack {
                ForEach(posts.dataArray, id: \.self) {
                    post in PostView(post: post)
                }
            }
//            PostView()
           
        }
        .navigationTitle("FEED VIEW")
        .navigationBarTitleDisplayMode(.inline)
        
    }
}

struct FeedView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            FeedView(posts: PostArrayObject())
        }
        
    }
}
