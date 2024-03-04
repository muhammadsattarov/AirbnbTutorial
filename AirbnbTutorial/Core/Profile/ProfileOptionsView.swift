//
//  ProfileOptionsView.swift
//  AirbnbTutorial
//
//  Created by user on 30/12/23.
//

import SwiftUI

struct ProfileOptionsView: View {
     let imageName: String
     let title: String
    var body: some View {
        VStack{
            HStack{
                Image(systemName: imageName)
                
                Text(title)
                    .font(.subheadline)
                
                Spacer()
                
                Image(systemName: "chevron.right")
            }
            Divider()
        }
    }
}

#Preview {
    ProfileOptionsView(imageName: "gear", title: "settings")
}
