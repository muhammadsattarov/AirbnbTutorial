//
//  ListingItemView.swift
//  AirbnbTutorial
//
//  Created by user on 29/12/23.
//

import SwiftUI

struct ListingItemView: View {
    let listing: Listing

    var body: some View {
        VStack{
            //images
            ListingImageCoruselView(listing: listing)
                .frame(height: 320)
                .clipShape(RoundedRectangle(cornerRadius: 10))
            
            //details
            HStack(spacing: 3){
                Text("\(listing.city),\(listing.state)")
                    .font(.subheadline)
                    .fontWeight(.bold)
                Spacer()
                Image(systemName: "star.fill")
                    .font(.subheadline)
                Text("\(listing.rating)")
                    .font(.subheadline)
                    .fontWeight(.bold)
            }
            .foregroundStyle(.black)
            HStack{
                VStack(alignment: .leading){
                    Text("12 mi away")
                        .foregroundColor(.gray)
                    Text("Nov 3 - 16")
                        .foregroundColor(.gray)
                    HStack(spacing: 4){
                        Text("$\(listing.pricePerNiight)")
                            .fontWeight(.bold)
                        Text("night")
                    }
                    .foregroundStyle(.black)

                }
                .font(.subheadline)
                Spacer()
            }
                        
        }

    }
}

#Preview {
    ListingItemView(listing: DeveloperPreview.shared.listings[0])
}
