//
//  LocationsViewModel.swift
//  MapAppSwiftfull
//
//  Created by Grzegorz Mzyk on 23/06/2024.
//

import Foundation
import _MapKit_SwiftUI

class LocationsViewModel: ObservableObject {
    // All loaded locations
    @Published var locations: [Location]
    // Current location on map
    @Published var mapLocation: Location
    @Published var mapRegion: MapCameraPosition = MapCameraPosition.automatic
    
    let mapSpam = MKCoordinateSpan(latitudeDelta: 0.1, longitudeDelta: 0.1)
    
    init() {
        let locations = LocationsDataService.locations
        self.locations = locations
        self.mapLocation = locations.first!
        self.updateMapRegion(location: locations.first!)
    }
    private func updateMapRegion(location:Location) {
     
            mapRegion = MapCameraPosition.region(MKCoordinateRegion(
                center: location.coordinates,
                span: mapSpam))
    }
}
