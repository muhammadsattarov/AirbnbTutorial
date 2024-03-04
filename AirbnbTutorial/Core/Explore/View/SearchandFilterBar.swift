//
//  SearchandFilterBar.swift
//  AirbnbTutorial
//
//  Created by user on 29/12/23.
//

import SwiftUI

struct SearchandFilterBar: View {
    @Binding var location: String
    var body: some View {
        HStack{
            Image(systemName: "magnifyingglass")
            
            VStack(alignment: .leading, spacing: 2){
                Text(location.isEmpty ? "Where to?" : location)
                    .font(.footnote)
                    .fontWeight(.semibold)
                Text("\(location.isEmpty ? "Any where - " : " ")Any Week - Any guests")
                    .font(.caption2)
                    .foregroundStyle(.gray)
            }
            
            Spacer()
            
            Button(action: {
                
            }, label: {
                Image(systemName: "line.3.horizontal.decrease.circle")
                    .foregroundStyle(.black)
            })
            
            }
        .padding(.horizontal)
        .padding(.vertical, 10)
        .overlay{
            Capsule()
                .stroke(lineWidth: 0.5)
                .foregroundStyle(Color(.systemGray4))
                .shadow(color: .black.opacity(0.4), radius: 5)
        }.padding()
    }
}

#Preview {
    SearchandFilterBar(location: .constant("Los Angeles"))
}
