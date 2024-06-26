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
            
            VStack(spacing: 0) {
                header
                    .padding()
                
                Spacer()
            }
            }
        }
    }


#Preview {
    LocationsView()
        .environmentObject(LocationsViewModel())
}
extension LocationsView {
    private var header: some View {
        
        VStack {
            Text(vm.mapLocation.name + ", " + vm.mapLocation.cityName)
                .font(.title2)
                .fontWeight(.black)
                .foregroundStyle(Color.primary)
                .frame(height:55)
                .frame(maxWidth: .infinity)
                .overlay(alignment: .leading) {
                    Image(systemName: "arrowshape.down.fill")
                        .font(.headline)
                        .foregroundStyle(Color.primary)
                        .padding()

                }
        }
        .background(.thickMaterial)
        .clipShape(RoundedRectangle(cornerRadius: 10))
        .shadow(color: .black.opacity(0.3),
                radius: 20, x: /*@START_MENU_TOKEN@*/0.0/*@END_MENU_TOKEN@*/, y: 15)
    }
}
