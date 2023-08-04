//
//  SettingsLabelView.swift
//  ToyGram
//
//  Created by Ebele.Nedosa on 04/08/2023.
//

import SwiftUI

struct SettingsLabelView: View {
    
    var labelText: String
    var labelImage: String
    
    var body: some View {
        VStack {
            HStack {
                
                Text(labelText)
                    .fontWeight(.bold)
                Spacer()
                Image(systemName: labelImage)
            }
            
            Divider()
                .padding(.vertical, 4)
        }
    }
}

struct SettingsLabelView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsLabelView(labelText: "Label title", labelImage: "heart")
            .previewLayout(.sizeThatFits)
    }
}
