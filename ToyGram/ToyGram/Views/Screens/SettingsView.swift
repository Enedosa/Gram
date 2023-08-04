//
//  SettingsView.swift
//  ToyGram
//
//  Created by Ebele.Nedosa on 04/08/2023.
//

import SwiftUI

struct SettingsView: View {
    
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        NavigationView {
            ScrollView(.vertical, showsIndicators: false) {
                
                // MARK: SECTION1: TOYGRAM
                GroupBox {
                    HStack {
                        Image("logo")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 80, height: 80)
                            .cornerRadius(12)
                        
                        Text("Toygram is the #1 app for posting pictures of your ToyDogs and sharing them across the world. We are a dogloving community and we're glad to have you. ")
                    }
                    
                } label: {
                    
                    SettingsLabelView(labelText: "ToyGram", labelImage: "dot.radiowaves.left.and.right")
                }
                .padding()
                
                // MARK: SECTION2: PROFILE
                GroupBox {
                    HStack {
                        Image("logo")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 80, height: 80)
                            .cornerRadius(12)
                        
                        Text("Toygram is the #1 app for posting pictures of your ToyDogs and sharing them across the world. We are a dogloving community and we're glad to have you. ")
                    }
                    
                } label: {
                    
                    SettingsLabelView(labelText: "Profile", labelImage: "person.fill")
                }
                .padding()

            }
            .navigationTitle("Settings")
            .navigationBarTitleDisplayMode(.large)
            .navigationBarItems(leading:
                Button(action: {
                presentationMode.wrappedValue.dismiss()
            }, label: {
                Image(systemName: "xmark")
                    .font(.title)
            })
                    .accentColor(.primary)
            )
        }
        
    }
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
    }
}
