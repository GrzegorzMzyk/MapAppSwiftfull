//
//  LocationsView.swift
//  MapAppSwiftfull
//
//  Created by Grzegorz Mzyk on 23/06/2024.
//

import SwiftUI
import MapKit


struct LocationsView: View {
    
    @EnvironmentObject private var vm: LocationsViewModel

    var body: some View {
        ZStack{
            Map(position: $vm.mapRegion)
            }
        }
    }


#Preview {
    LocationsView()
        .environmentObject(LocationsViewModel())
}
