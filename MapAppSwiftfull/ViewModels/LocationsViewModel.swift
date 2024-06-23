//
//  LocationsViewModel.swift
//  MapAppSwiftfull
//
//  Created by Grzegorz Mzyk on 23/06/2024.
//

import Foundation

class LocationsViewModel: ObservableObject {
    
    @Published var locations: [Location]
    
    init() {
        let locations = LocationsDataService.locations
        self.locations = locations
    }
}
