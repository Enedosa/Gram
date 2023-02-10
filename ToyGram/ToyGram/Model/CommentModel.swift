//
//  CommentModel.swift
//  ToyGram
//
//  Created by Ebele.Nedosa on 09/02/2023.
//

import Foundation
import SwiftUI

struct CommentModel: Identifiable, Hashable {
    
    var id = UUID()
    var commentID: String // ID for the comment in the database
    var userID: String // ID for the user in the database
    var username: String // username for the user in the database
    var content: String // Actual comment text
    var dateCreated: Date
    
    func hash(into hasher: inout Hasher) {
        hasher.combine(id)
    }
}
