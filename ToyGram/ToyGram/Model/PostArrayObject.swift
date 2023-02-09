//
//  PostArrayObject.swift
//  ToyGram
//
//  Created by Ebele.Nedosa on 08/02/2023.
//

import Foundation

class PostArrayObject: ObservableObject {
    @Published var dataArray = [PostModel]()
    
    init() {
        print("fetch from database here")
        
        let post1 = PostModel(postID: "1", userID: "user1", username: "ada", caption: "This is my new cap", dateCreated: Date(), likeCount: 0, likedByUser: false)
        let post2 = PostModel(postID: "1", userID: "user1", username: "ene", caption: nil, dateCreated: Date(), likeCount: 0, likedByUser: false)
        let post3 = PostModel(postID: "1", userID: "user1", username: "titi", caption: "This is a really long caption he he", dateCreated: Date(), likeCount: 0, likedByUser: false)
        let post4 = PostModel(postID: "1", userID: "user1", username: "musa", caption: nil, dateCreated: Date(), likeCount: 0, likedByUser: false)
        
        self.dataArray.append(post1)
        self.dataArray.append(post2)
        self.dataArray.append(post3)
        self.dataArray.append(post4)
    }
}
