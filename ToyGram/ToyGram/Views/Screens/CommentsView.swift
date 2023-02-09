//
//  CommentsView.swift
//  ToyGram
//
//  Created by Ebele.Nedosa on 09/02/2023.
//

import SwiftUI

struct CommentsView: View {
    
    @State var submissionText: String = ""
    
    var body: some View {
        VStack {
            
            ScrollView {
                Text("Placeholder")
                Text("Placeholder")
                Text("Placeholder")
                Text("Placeholder")
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
    }
}

struct CommentsView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            CommentsView()
        }
    }
}
