//
//  ListingDetailView.swift
//  AirbnbTutorial
//
//  Created by user on 29/12/23.
//

import SwiftUI
import MapKit

struct ListingDetailView: View {
    let listing: Listing
    @Environment(\.dismiss) var dismiss
    @State private var cameraPosition: MapCameraPosition
    
    init(listing: Listing) {
        
        self.listing = listing
        let region = MKCoordinateRegion(
            center: listing.city == "Los Angeles" ? .losAngeles : .miami,
            span: MKCoordinateSpan(latitudeDelta: 0.1,
                                   longitudeDelta: 0.1)
        )
        self._cameraPosition = State(initialValue: .region(region))
    }
    
    var body: some View {
        ScrollView{
            ZStack(alignment: .topLeading){
                ListingImageCoruselView(listing: listing)
                    .frame(height: 320)
                Button{
                   dismiss()
                } label: {
                    Image(systemName: "chevron.left")
                        .foregroundStyle(.black)
                        .background{
                            Circle()
                                .fill(.white)
                                .frame(width: 32, height: 32)
                        }
                        .padding(40)
                }
            }
            VStack(alignment: .leading, spacing: 5){
                Text(listing.title)
                    .font(.title)
                    .fontWeight(.bold)
                VStack(alignment: .leading){
                    HStack(spacing: 2){
                        Image(systemName: "star.fill")
                        Text("\(listing.rating)")
                        Text("-")
                        Text("28 reviews")
                            .underline()
                            .fontWeight(.semibold)
                    }
                    .foregroundStyle(.black)
                    Text("\(listing.city), \(listing.state)")
                }
                .font(.caption)
            }
            .padding(.leading)
            .frame(maxWidth: .infinity,alignment: .leading)
            
            Divider()
            
            //host info view
            HStack{
                VStack(alignment: .leading){
                    Text("Entive \(listing.type.description) hosted by \(listing.ownerName)")
                        .font(.headline)
                        .frame(width: 250, alignment: .leading)
                    HStack{
                        Text("\(listing.numberOfGuests) guests -")
                        Text("\(listing.numberOfBedrooms) bedrooms -")
                        Text("\(listing.numberOfBeds) beds -")
                        Text("\(listing.numberOfBathrooms) baths")
                    }
                    .font(.caption)
                }
                Spacer()
                Image(listing.ownerImageUrl)
                    .resizable()
                    .scaledToFill()
                    .frame(width: 60,height: 60)
                    .clipShape(Circle())
            }
            .padding()
            
            Divider()
            
            //listing features
            VStack(alignment: .leading, spacing: 16){
                ForEach(listing.features){ feature in
                    HStack(spacing: 12){
                        Image(systemName: feature.imageName)
                        
                        VStack(alignment: .leading){
                            Text(feature.title)
                                .font(.footnote)
                                .fontWeight(.semibold)
                            Text(feature.subtitle)
                                .font(.caption)
                                .foregroundStyle(.gray)
                        }
                        Spacer()
                    }
                }
            }
            .padding()
            
            Divider()
            
            //bedrooms view
            VStack(alignment: .leading){
                Text("Where you'll slep")
                    .font(.headline)
                ScrollView(.horizontal, showsIndicators: false){
                    HStack(spacing: 16){
                        ForEach(1 ... listing.numberOfBedrooms, id: \.self){ bedroom in
                            VStack(alignment: .leading){
                                Image(systemName: "bed.double")
                                Text("Bedroom \(bedroom)")
                                    .font(.footnote)
                                    .fontWeight(.semibold)
                            }
                            .frame(width: 132, height: 100)
                            .overlay(RoundedRectangle(cornerRadius: 10).stroke(Color.gray.opacity(0.4),lineWidth: 2))
                        }
                    }
                }
                .scrollTargetBehavior(.paging)
            }
            .padding()
            
            //listing amenities
            VStack(spacing: 16){
                Text("What this place offers")
                    .font(.headline)
                
                ForEach(listing.amenities) { amenity in
                    HStack{
                        Image(systemName: amenity.imageName)
                            .frame(width: 32)
                        Text(amenity.title)
                            .font(.footnote)
                        Spacer()
                    }
                }
            }
            .padding()
            
            Divider()
            
            VStack(alignment: .leading,spacing: 16){
                Text("Where you'll be")
                
                Map(position: $cameraPosition)
                    .frame(height: 200)
                    .clipShape(RoundedRectangle(cornerRadius: 12))
            }
            .padding()
        }
        .toolbar(.hidden, for: .tabBar)
        .ignoresSafeArea()
        .padding(.bottom, 64)
        .overlay(alignment: .bottom){
            VStack{
                Divider()
                    .padding(.bottom,10)
                
                HStack{
                    VStack(alignment: .leading){
                        Text("$\(listing.pricePerNiight)")
                            .font(.footnote)
                            .fontWeight(.bold)
                        Text("Total before textes")
                            .font(.footnote)
                        Text("Oct 15 - 20")
                            .font(.footnote)
                            .fontWeight(.semibold)
                            .underline()
                    }
                    Spacer()
                    Button(action: {
                        
                    }, label: {
                        Text("Reserve")
                            .foregroundStyle(.white)
                            .font(.subheadline)
                            .fontWeight(.semibold)
                            .frame(width: 140, height: 40)
                            .background(.pink)
                            .clipShape(RoundedRectangle(cornerRadius: 8))
                    })
                }
                .padding(.horizontal,22)
            }
            .background(.white)
        }
    }
}

#Preview {
    ListingDetailView(listing: DeveloperPreview.shared.listings[0])
}
