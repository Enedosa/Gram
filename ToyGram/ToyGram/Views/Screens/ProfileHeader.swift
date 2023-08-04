//
//  ProfileHeader.swift
//  ToyGram
//
//  Created by Ebele.Nedosa on 03/08/2023.
//

import SwiftUI

struct ProfileHeader: View {
    
    @Binding var proflieDisplayName: String
    
    var body: some View {
        VStack(alignment: .center, spacing: 10) {
            // MARK: Profile picture
            Image("dog1")
                .resizable()
                .scaledToFill()
                .frame(width: 120, height: 120)
                .cornerRadius(60)
            
            // MARK: User Name
            Text(proflieDisplayName)
                .font(.largeTitle)
                .fontWeight(.bold)
            
            // MARK: Bio
            Text("This is the area where the user can add a bio to their profile")
                .font(.body)
                .fontWeight(.regular)
                .multilineTextAlignment(.center)
            
            HStack(alignment: .center, spacing: 20) {
                // MARK: Posts
                VStack(alignment: .center, spacing: 5) {
                    Text("5")
                        .font(.title2)
                        .fontWeight(.bold)
                    
                    Capsule()
                        .fill(Color.gray)
                        .frame(width: 20,height: 2)
                    
                    Text("Posts")
                        .font(.callout)
                        .fontWeight(.medium)
                }
                
                // MARK: Likes
                VStack(alignment: .center, spacing: 5) {
                    Text("20")
                        .font(.title2)
                        .fontWeight(.bold)
                    
                    Capsule()
                        .fill(Color.gray)
                        .frame(width: 20,height: 2)
                    
                    Text("Likes")
                        .font(.callout)
                        .fontWeight(.medium)
                }
            }
        }
        .frame(maxWidth: .infinity)
        .padding()
    }
}

struct ProfileHeader_Previews: PreviewProvider {
    
    @State static var name: String = "Kai"
    static var previews: some View {
        ProfileHeader(proflieDisplayName: $name)
            .previewLayout(.sizeThatFits)
    }
}
