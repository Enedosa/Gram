//
//  UploadView.swift
//  ToyGram
//
//  Created by Ebele.Nedosa on 31/07/2023.
//

import SwiftUI

struct UploadView: View {
    var body: some View {
        ZStack {
            VStack(spacing: 0) {
                Button {
                    
                } label: {
                    Text("Take photo".uppercased())
    //                    .font(.largeTitle)
                        .fontWeight(.bold)
                        .foregroundColor(Color.ColorTheme.yellow)
                }
                .frame(maxWidth: .infinity,  maxHeight: .infinity, alignment: .center)
                .background(Color.ColorTheme.purple)
                
                Button {
                    
                } label: {
                    Text("Import photo".uppercased())
    //                    .font(.largeTitle)
                        .fontWeight(.bold)
                        .foregroundColor(Color.ColorTheme.purple)
                }
                .frame(maxWidth: .infinity,  maxHeight: .infinity, alignment: .center)
                .background(Color.ColorTheme.yellow)

            }
//            .edgesIgnoringSafeArea(.all)
            
            Image("logo.transparent")
                .resizable()
                .scaledToFit()
                .frame(width: 100, height: 100)
                .shadow(radius: 12)
        }
    }
}

struct UploadView_Previews: PreviewProvider {
    static var previews: some View {
        UploadView()
    }
}
