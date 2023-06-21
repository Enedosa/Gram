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
                    post in PostView(post: post, showHeaderAndFooter: true)
                }
    //this lazy in the lazyVstack makes sure only the posts currently on the screen are loading not all the posts fetched at the same time thus maintains efficiency
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
