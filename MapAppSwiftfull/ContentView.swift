//
//  ContentView.swift
//  MapAppSwiftfull
//
//  Created by Grzegorz Mzyk on 22/06/2024.
//

import SwiftUI
import SwiftData

struct ContentView: View {
    
    var body: some View {
        ZStack {
            Color.blue.ignoresSafeArea()
        }
        
    }
}
#Preview {
    ContentView()
        .modelContainer(for: Item.self, inMemory: true)
}
