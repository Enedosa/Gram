//
//  PostImageView.swift
//  ToyGram
//
//  Created by Ebele.Nedosa on 31/07/2023.
//

import SwiftUI

struct PostImageView: View {
    
    @Environment(\.presentationMode) var presentationMode
    @State var captionText: String = ""
    @Binding var imageSelected: UIImage

    var body: some View {
        VStack(spacing: 0) {
            HStack {
                Button {
                    presentationMode.wrappedValue.dismiss()
                } label: {
                    Image(systemName: "xmark")
                        .font(.title)
                        .padding()
                }
            .accentColor(.primary)
                
                Spacer()
            }
            
            ScrollView(.vertical, showsIndicators: false) {
                Image(uiImage: imageSelected)
                    .resizable()
                    .scaledToFill()
                    .frame(width: 200, height: 200,alignment: .center)
                    .cornerRadius(12)
                    .clipped()
                
                TextField("Add your caption here...", text: $captionText)
                    .padding()
                    .frame(height: 60)
                    .frame(maxWidth: .infinity)
                    .background(Color.ColorTheme.beige)
                    .cornerRadius(12)
                    .font(.headline)
                    .padding(.horizontal)
                    .autocapitalization(.sentences)
                
                Button {
                    postPicture()
                } label: {
                    Text("Post Picture!".uppercased())
                        .font(.title3)
                        .fontWeight(.bold)
                        .padding()
                        .frame(height: 60)
                        .frame(maxWidth: .infinity)
                        .background(Color.ColorTheme.purple)
                        .cornerRadius(12)
                        .padding(.horizontal)
                }
                .accentColor(Color.ColorTheme.yellow)

            }

        }
    }
    
    // MARK: Functions
    func postPicture() {
        print("POST PICTURE TO DATABASE HERE")
    }
}

struct PostImageView_Previews: PreviewProvider {
    
    @State static var image = UIImage(named: "dog1")!
    static var previews: some View {
        PostImageView(imageSelected: $image)
    }
}
