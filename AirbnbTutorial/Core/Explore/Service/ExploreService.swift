//
//  ExploreService.swift
//  AirbnbTutorial
//
//  Created by user on 30/12/23.
//

import Foundation

class ExploreService{
    func fetchListings() async throws -> [Listing] {
        return DeveloperPreview.shared.listings
    }
}
