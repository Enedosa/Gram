//
//  BrowseView.swift
//  ToyGram
//
//  Created by Ebele.Nedosa on 06/03/2023.
//

import SwiftUI

struct BrowseView: View {
    var body: some View {
        ScrollView(.vertical, showsIndicators: false, content: {Text("Placeholder")
            
        })
            .navigationBarTitle("Browse")
            .navigationBarTitleDisplayMode(.inline)
    }
}

struct BrowseView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView{
            BrowseView()
        }
    }
}
