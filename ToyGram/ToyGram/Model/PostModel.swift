//
//  PostModel.swift
//  ToyGram
//
//  Created by Ebele.Nedosa on 08/02/2023.
//

import Foundation
import SwiftUI

struct PostModel: Identifiable, Hashable {
    
    var id = UUID()
    var postID: String // ID for the post in database
    var userID: String // ID for the user in database
    var username: String
    var caption: String?
    var dateCreated: Date
    var likeCount: Int
    var likedByUser: Bool
    
    func hash(into hasher: inout Hasher) {
        hasher.combine(id)
    }
    // postID
    // userID
    // userName
    // caption = optional
    // date
    // likeCount
    // liked by currunt user
}
