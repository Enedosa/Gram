//
//  ImageGridView.swift
//  ToyGram
//
//  Created by Ebele.Nedosa on 08/05/2023.
//

import SwiftUI

struct ImageGridView: View {
    
    @ObservedObject var posts: PostArrayObject
    
    var body: some View {
        HStack {
            
            
            LazyVGrid(
                columns: [GridItem(.flexible()),
                          GridItem(.flexible()),
                          GridItem(.flexible())],
                alignment: .center,
                spacing: nil,
                pinnedViews: [],
                content: {
                    ForEach(posts.dataArray, id: \.self, content: {
                        post in
                        NavigationLink {
                            FeedView(posts: PostArrayObject(post: post))
                        } label: {
                            PostView(post: post, showHeaderAndFooter: false)
                        }

                        
                    })
                        .padding(3)
                        .background(Color.indigo)
            })
//            LazyVGrid(
//                columns: [GridItem(.flexible()),
//                          GridItem(.flexible()),
//                          GridItem(.flexible())],
//                alignment: .center,
//                spacing: nil,
//                pinnedViews: [],  content: {
//                Text("Plaecholder")
//                Text("Plaecholder")
//                Text("Placeholder")
//                Text("Plaecholder")
//                Text("Placeholder")
//                        .padding(3)
//                        .background(Color.indigo)
//            })
            
            
//            LazyHGrid(
//                rows: [GridItem(.flexible()),
//                       GridItem(.flexible()),
//                       GridItem(.flexible()),
//                       GridItem(.flexible()),
//                       GridItem(.flexible()),
//                       GridItem(.flexible()),
//                       GridItem(.flexible())],
//                alignment: .center,
//                spacing: nil,
//                pinnedViews: [],  content: {
//                Text("Plaecholder")
//                Text("Plaecholder")
//                Text("Placeholder")
//                Text("Plaecholder")
//                Text("Plaecholder")
//                Text("Placeholder")
//                        .padding(3)
//                        .background(Color.indigo)
//            })
        }
        Spacer()
    }
}

struct ImageGridView_Previews: PreviewProvider {
    static var previews: some View {
        ImageGridView(posts: PostArrayObject())
            .previewLayout(.sizeThatFits)
    }
}
