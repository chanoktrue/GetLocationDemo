//
//  ContentView.swift
//  LocationDemo
//
//  Created by Thongchai Subsaidee on 29/9/23.
//

import SwiftUI

struct ContentView: View {
    
    @StateObject var locationManager = LocationManager()
    
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Hello, world!")
            
            Text("Location status: \(locationManager.statusString)")
                .padding()
            
            if let location = locationManager.userLocation {
                Text("Your location: \(location.latitude), \(location.longitude)")
            }

        }
        .padding()
        
    }
}

#Preview {
    ContentView()
}
