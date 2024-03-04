//
//  DeveloperPreview.swift
//  AirbnbTutorial
//
//  Created by user on 30/12/23.
//

import Foundation


class DeveloperPreview {
    static let shared = DeveloperPreview()
    var listings: [Listing] = [
        .init(
            id: NSUUID().uuidString,
            ownerUid: NSUUID().uuidString,
            ownerName: "Jason Statham",
            ownerImageUrl: "person1",
            numberOfBedrooms: 4,
            numberOfBathrooms: 3,
            numberOfGuests: 4,
            numberOfBeds: 4,
            pricePerNiight: 894,
            latitude: 34.052235,
            longitude: -118.243683,
            imageURLs: ["img2","img3","img5","img4"],
            address: "124 Main st",
            city: "Los Angeles",
            state: "California",
            title: "Miami Villa",
            rating: 4.57,
            features: [.selfCheckIn, .superHost],
            amenities: [.wifi,.alarmSystem,.balcony,.tv],
            type: .villa
        ),

        
        .init(
            id: NSUUID().uuidString,
            ownerUid: NSUUID().uuidString,
            ownerName: "John Smith",
            ownerImageUrl: "person1",
            numberOfBedrooms: 4,
            numberOfBathrooms: 3,
            numberOfGuests: 4,
            numberOfBeds: 4,
            pricePerNiight: 651,
            latitude: 25.761681,
            longitude: -80.191788,
            imageURLs: ["img5","img2","img3","img4"],
            address: "124 Main st",
            city: "Miami",
            state: "Florida",
            title: "Miami Villa",
            rating: 4.86,
            features: [.selfCheckIn, .superHost],
            amenities: [.wifi,.alarmSystem,.balcony,.laundry,.tv],
            type: .villa
        ),
        
            .init(
                id: NSUUID().uuidString,
                ownerUid: NSUUID().uuidString,
                ownerName: "Stive Roudgers",
                ownerImageUrl: "person1",
                numberOfBedrooms: 4,
                numberOfBathrooms: 3,
                numberOfGuests: 4,
                numberOfBeds: 4,
                pricePerNiight: 732,
                latitude: 34.052235,
                longitude: -118.243683,
                imageURLs: ["img6","img7","img3","img4"],
                address: "124 Main st",
                city: "Los Angeles",
                state: "California",
                title: "Miami Villa",
                rating: 4.36,
                features: [.selfCheckIn, .superHost],
                amenities: [.wifi,.alarmSystem,.pool,.office],
                type: .villa
            ),
        
            .init(
                id: NSUUID().uuidString,
                ownerUid: NSUUID().uuidString,
                ownerName: "Stive Jobs",
                ownerImageUrl: "person1",
                numberOfBedrooms: 4,
                numberOfBathrooms: 3,
                numberOfGuests: 4,
                numberOfBeds: 4,
                pricePerNiight: 487,
                latitude: 39.952583,
                longitude: -75.165222,
                imageURLs: ["img8","img3","img5","img4"],
                address: "124 Main st",
                city: "Miami",
                state: "Florida",
                title: "Miami Villa",
                rating: 4.86,
                features: [.selfCheckIn, .superHost],
                amenities: [.wifi,.alarmSystem,.balcony,.laundry,.tv],
                type: .villa
            ),
        
            .init(
                id: NSUUID().uuidString,
                ownerUid: NSUUID().uuidString,
                ownerName: "Bred Pit",
                ownerImageUrl: "person1",
                numberOfBedrooms: 4,
                numberOfBathrooms: 3,
                numberOfGuests: 4,
                numberOfBeds: 4,
                pricePerNiight: 675,
                latitude: 28.538336,
                longitude: -81.379234,
                imageURLs: ["img6","img7","img3","img4"],
                address: "124 Main st",
                city: "Los Angeles",
                state: "California",
                title: "Miami Villa",
                rating: 4.23,
                features: [.selfCheckIn, .superHost],
                amenities: [.wifi,.tv,.balcony,.laundry],
                type: .villa
            )
        
        
    ]
}
