//
//  TextEditView.swift
//  ToyGram
//
//  Created by Ebele.Nedosa on 05/08/2023.
//

import SwiftUI

struct TextEditView: View {
    
    @State var submisssionText: String = ""
    @State var title: String
    @State var description: String
    @State var placeholder: String
    
    var body: some View {
        VStack {
            HStack {
                Text(description)
                Spacer(minLength: 0)
            }
            
            TextField(placeholder, text: $submisssionText)
                .padding()
                .frame(height: 60)
                .frame(maxWidth: .infinity)
                .background(Color.ColorTheme.beige)
                .cornerRadius(12)
                .font(.headline)
                .autocapitalization(.sentences)
            
            Button {
                
            } label: {
                Text("Save".uppercased())
                    .fontWeight(.bold)
                    .font(.title3)
                    .padding()
                    .frame(height: 60)
                    .frame(maxWidth: .infinity)
                    .background(Color.ColorTheme.purple)
                    .cornerRadius(12)
            }
            .accentColor(Color.ColorTheme.yellow)

            Spacer()
        }
        .navigationTitle(title)
        .frame(maxWidth: .infinity )
        .padding()
    }
        
}

struct TextEditView_Previews: PreviewProvider {
    static var previews: some View {
        
        NavigationView {
            TextEditView(title: "Static title", description: "This is the description so that we can tell the user what they are doing on this screen", placeholder: "Static Placeholder")
        }
    }
}
