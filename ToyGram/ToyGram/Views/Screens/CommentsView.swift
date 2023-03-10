//
//  CommentsView.swift
//  ToyGram
//
//  Created by Ebele.Nedosa on 09/02/2023.
//

import SwiftUI

struct CommentsView: View {
    
    @State var submissionText: String = ""
    @State var commentArray = [CommentModel]()
    
    var body: some View {
        VStack {
            
            ScrollView {
                
                LazyVStack {
                    
                    ForEach(commentArray, id: \.self) { comment in
                        MessageView(comment: comment)
                    }
                }
            }
            
            HStack {
                Image("dog1")
                    .resizable()
                    .scaledToFill()
                    .frame(width: 40, height: 40, alignment: .center)
                    .cornerRadius(20)
                
                TextField("Add a comment here.. ", text: $submissionText )
                Button {
                    print("submitted")
                } label: {
                    Image(systemName: "paperplane.fill")
                        .font(.title2)
                }
                .accentColor(Color.ColorTheme.purple)
            }
            .padding(.all, 6)
        }
        .navigationTitle("COMMENTS")
        .navigationBarTitleDisplayMode(.inline)
        .onAppear {
            getComments()
        }
        
        
        }
    
    
    // MARK: FUNCTIONS
    
    func getComments() {
        print("Get comments fron a database")
        
        let comment1 = CommentModel(commentID: "", userID: "", username: "Tom", content: "First comment ever", dateCreated: Date())
        let comment2 = CommentModel(commentID: "", userID: "", username: "Alex", content: "second comment ever", dateCreated: Date())
        let comment3 = CommentModel(commentID: "", userID: "", username: "Steph", content: "third comment", dateCreated: Date())
        let comment4 = CommentModel(commentID: "", userID: "", username: "Tom", content: "Fourth comment now", dateCreated: Date())
        
        
        self.commentArray.append(comment1)
        self.commentArray.append(comment2)
        self.commentArray.append(comment3)
        self.commentArray.append(comment4)
    }
    
}

struct CommentsView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            CommentsView()
        }
    }
}
