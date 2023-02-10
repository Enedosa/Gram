//
//  MessageView.swift
//  ToyGram
//
//  Created by Ebele.Nedosa on 09/02/2023.
//

import SwiftUI

struct MessageView: View {
    var body: some View {
        HStack {
            Image("dog1")
                .resizable()
                .scaledToFill()
                .frame(width: 40, height: 40)
                .cornerRadius(20)
            
            VStack(alignment: .leading, spacing: 4, content: {
                
                Text("Username")
                    .font(.caption)
                    .foregroundColor(.gray)
                
                Text("This is a new comment here.")
                    .padding(.all, 10)
                    .foregroundColor(.primary)
                    .background(Color.gray)
                    .cornerRadius(10)
            })
            
            Spacer(minLength: 0)
            
        }
        .padding(.all, 6)
    }
}

struct MessageView_Previews: PreviewProvider {
    static var previews: some View {
        MessageView()
            .previewLayout(.sizeThatFits)
    }
}
