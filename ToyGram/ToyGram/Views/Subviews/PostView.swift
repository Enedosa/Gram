//
//  PostView.swift
//  ToyGram
//
//  Created by Ebele.Nedosa on 31/01/2023.
//

import SwiftUI

struct PostView: View {
    
    @State var post: PostModel
    var showHeaderAndFooter: Bool
    var body: some View {
        VStack {
            // MARK: Header
            if showHeaderAndFooter {
                HStack {
                    NavigationLink {
                        ProfileView(isMyProfile: false, profileDisplayName: post.username, profileUserID: "")
                    } label: {
                        Image("dog1")
                            .resizable()
                            .scaledToFill()
                            .frame(width: 30, height: 30, alignment: .center)
                        .cornerRadius(15)
                        
                        Text(post.username)
                            .font(.callout)
                            .fontWeight(.medium)
                            .foregroundColor(.primary)
                    }

                    
                    
                    Spacer()
                    
                    Image(systemName: "ellipsis")
                        .font(.headline)
                }
                
                .padding(.all, 6)
            }
           
            
            // MARK: IMAGE
            
            Image("dog1")
                .resizable()
                .scaledToFit()
            
            // MARK: FOOTER
            if showHeaderAndFooter {
                HStack(alignment: .center, spacing: 2, content: {
                    Image(systemName: "heart")
                        .font(.title3)
                    Image(systemName: "bubble.middle.bottom")
                        .font(.title3)
                    Image(systemName: "paperplane")
                        .font(.title3)
                    Spacer()
                })
                .padding(.all, 6)
                if let caption = post.caption {
                    HStack {
                        Text(caption)
                        Spacer(minLength: 0)
                    }
                    .padding(.all, 6)
                    
                }
            }
            
            
        }
    }
}

struct PostView_Previews: PreviewProvider {
    static var post: PostModel = PostModel(postID: "1", userID: "user1", username: "Joe blu", caption: "hey there I'm using toygram", dateCreated: Date(), likeCount: 0, likedByUser: false)
    static var previews: some View {
        PostView(post: post, showHeaderAndFooter: true)
            .previewLayout(.sizeThatFits)
    }
}
