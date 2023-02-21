//
//  MessageView.swift
//  ToyGram
//
//  Created by Ebele.Nedosa on 09/02/2023.
//

import SwiftUI

struct MessageView: View {
    
    @State var comment: CommentModel
    var body: some View {
        HStack {
            
            // MARK: PROFILE IMAGE
            Image("dog1")
                .resizable()
                .scaledToFill()
                .frame(width: 40, height: 40)
                .cornerRadius(20)
            
            VStack(alignment: .leading, spacing: 4, content: {
                
                // MARK: UESRNAME
                Text(comment.username)
                    .font(.caption)
                    .foregroundColor(.gray)
                
                //MARK: MESSAGE CONTENT
                Text(comment.content)
                    .padding(.all, 10)
                    .foregroundColor(.primary)
                    .background(Color.gray)
                    .cornerRadius(10)
            })
            
            Spacer(minLength: 0)
            
        }
        .padding(.all, 6)
    }
}

struct MessageView_Previews: PreviewProvider {
    
    static var comment: CommentModel = CommentModel(commentID: "", userID: "", username: "Taofik", content: "I'm trouble maker haha", dateCreated: Date())
    
    static var previews: some View {
        MessageView(comment: comment)
            .previewLayout(.sizeThatFits)
    }
}
