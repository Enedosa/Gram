//
//  ProfilleView.swift
//  ToyGram
//
//  Created by Ebele.Nedosa on 03/08/2023.
//

import SwiftUI

struct ProfileView: View {
    
    var isMyProfile: Bool
    @State var profileDisplayName: String
    
    var profileUserID: String
    
    var posts = PostArrayObject()
    
    var body: some View {
        ScrollView(.vertical, showsIndicators: false) {
            ProfileHeader(proflieDisplayName: $profileDisplayName)
            
            Divider()
            
            ImageGridView(posts: posts)
        }
        .navigationTitle("Profile")
        .navigationBarTitleDisplayMode(.inline)
        .navigationBarItems(trailing:
        Button(action: {
            
        }, label: {
            Image(systemName: "line.horizontal.3")
        })
            .accentColor(Color.ColorTheme.purple)
            .opacity(isMyProfile ? 1.0 : 0.0)
        )
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            ProfileView(isMyProfile: true, profileDisplayName: "Oly", profileUserID: "")
        }
    }
}
