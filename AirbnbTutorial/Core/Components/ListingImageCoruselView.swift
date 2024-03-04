//
//  ListingImageCoruselView.swift
//  AirbnbTutorial
//
//  Created by user on 29/12/23.
//

import SwiftUI



struct ListingImageCoruselView: View {
    let listing: Listing
    var body: some View {
        TabView{
            ForEach(listing.imageURLs, id: \.self){image in
                Image(image)
                    .resizable()
                    .scaledToFill()
            }
        }
            .tabViewStyle(.page)
    }
}

#Preview {
    ListingImageCoruselView(listing: DeveloperPreview.shared.listings[0])
}
