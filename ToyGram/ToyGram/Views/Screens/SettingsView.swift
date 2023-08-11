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
                    
                    NavigationLink {
                        TextEditView(submisssionText: "Current Display Name", title: "Display Name", description: "You can edit your Display name here. This will be seen by other users on your profile and your posts", placeholder: "Type your display name here..")
                    } label: {
                        SettingsRowView(leftIcon: "pencil", text: "Display Name", colour: Color.ColorTheme.purple)
                    }

                    NavigationLink {
                        TextEditView(submisssionText: "Current Bio", title: "Profile Bio", description: "You can edit your Bio here. Your bio is a great place to let other users know a little about you.", placeholder: "Type your bio here..")
                    } label: {
                        SettingsRowView(leftIcon: "text.quote", text: "Bio", colour: Color.ColorTheme.purple)
                    }
                   
                    
                    SettingsRowView(leftIcon: "photo", text: "Profile Picture", colour: Color.ColorTheme.purple)
                    SettingsRowView(leftIcon: "figure.walk", text: "Sign out", colour: Color.ColorTheme.purple)
                    
                } label: {
                    
                    SettingsLabelView(labelText: "Profile", labelImage: "person.fill")
                    
                }
                .padding()
                
                // MARK: SECTION3: APPLICATION
                GroupBox {
                    SettingsRowView(leftIcon: "folder.fill", text: "Privacy Policy", colour: Color.ColorTheme.yellow)
                    SettingsRowView(leftIcon: "folder.fill", text: "Terms & Conditions", colour: Color.ColorTheme.yellow)
                    SettingsRowView(leftIcon: "globe", text: "Toygram's website", colour: Color.ColorTheme.yellow)
                    
                    
                } label: {
                    
                    SettingsLabelView(labelText: "Application", labelImage: "apps.iphone")
                    
                }
                .padding()
                
                // MARK: SECTION4: SIGN OFF
                GroupBox {
                    Text("Toygram was made with love. \n All rights reserved. \n Silly apps inc. \n Copyright 2020 ❤️ ")
                        .foregroundColor(.gray)
                        .multilineTextAlignment(.center)
                        .frame(maxWidth: .infinity)
                    
                } label: {
                    
                }
                .padding()
                .padding(.bottom, 80)
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
