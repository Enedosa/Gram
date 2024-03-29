//
//  SettingsRowView.swift
//  ToyGram
//
//  Created by Ebele.Nedosa on 04/08/2023.
//

import SwiftUI

struct SettingsRowView: View {
    
    var leftIcon: String
    var text: String
    var colour: Color
    
    var body: some View {
        HStack {
            
            ZStack {
                RoundedRectangle(cornerRadius: 8, style: .continuous)
                    .fill(colour)
                Image(systemName: leftIcon)
                    .font(.title3)
                    .foregroundColor(.white)
            }
            .frame(width: 36, height: 36)
            
            Text(text)
                .foregroundColor(.primary)
            Spacer()
            Image(systemName: "chevron.right")
                .font(.headline)
                .foregroundColor(.primary)
        }
        .padding(.vertical, 4)
    }
}

struct SettingsRowView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsRowView(leftIcon: "heart.fill", text: "Row title", colour: .teal)
            .previewLayout(.sizeThatFits)
    }
}
