//
//  WishlistsView.swift
//  AirbnbTutorial
//
//  Created by user on 30/12/23.
//

import SwiftUI

struct WishlistsView: View {
    var body: some View {
        NavigationStack{
            ScrollView{
                VStack(alignment: .leading, spacing: 40) {
                    VStack(alignment: .leading, spacing: 4){
                        Text("Log In to view your wishlists.")
                            .font(.headline)

                        Text("You can create, view or wishlists onse you've loged in")
                            .font(.caption)
                    }
                    .frame(width: 300)
                    
                    Button(action: {
                        print("login")
                    }, label: {
                        Text("Log In")
                            .foregroundStyle(.white)
                            .font(.headline)
                            .fontWeight(.semibold)
                            .frame(width: 350,height: 48)
                            .background(.pink)
                            .clipShape(RoundedRectangle(cornerRadius: 8))
                    })
                    Spacer()
                }
                .padding(.top)
                .navigationTitle("Wishlists")
            }
        }
    }
}

#Preview {
    WishlistsView()
}
