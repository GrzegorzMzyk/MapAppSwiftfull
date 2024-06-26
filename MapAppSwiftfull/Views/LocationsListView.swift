//
//  LocationsListView.swift
//  MapAppSwiftfull
//
//  Created by Grzegorz Mzyk on 26/06/2024.
//

import SwiftUI

struct LocationsListView: View {
    
    @EnvironmentObject private var vm: LocationsViewModel
    
    var body: some View {
        List {
            ForEach(vm.locations) { location in
                HStack {
                    if let imageName = location.imageNames.first {
                        Image(imageName)
                    }
                }
            }
        }
    }
}

#Preview {
    LocationsListView()
        .environmentObject(LocationsViewModel())
}
