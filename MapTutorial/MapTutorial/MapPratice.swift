//
//  MapPratice.swift
//  MapTutorial
//
//  Created by Pranay on 18/03/25.
//

//import SwiftUI
//import MapKit
//
//struct MapPractice: View {
//    @State private var searchAddress: String = ""
//    @State private var mapItem: MKMapItem?
//    @State private var cameraPosition: MapCameraPosition = .automatic
//
//    var body: some View {
//        VStack {
//            HStack {
//                TextField("Enter your destination...", text: $searchAddress)
//                    .textFieldStyle(RoundedBorderTextFieldStyle())
//                    .padding()
//                
//                Button {
//                    searchLocation()
//                } label: {
//                    Image(systemName: "magnifyingglass")
//                        .font(.title2)
//                        .padding(10)
//                        .background(Color.blue.opacity(0.2))
//                        .clipShape(Circle())
//                }
//                .padding()
//            }
//            .background(
//                RoundedRectangle(cornerRadius: 12)
//                    .fill(Color.white)
//                    .shadow(radius: 5)
//            )
//            .padding()
//
//            Map(position: $cameraPosition) {  // ✅ Uses camera position
//                if let mapItem {
//                    Marker(mapItem.name ?? "Destination", coordinate: mapItem.placemark.coordinate)
//                }
//            }
//            .mapControls {
//                MapUserLocationButton()
//                MapCompass()
//                MapPitchToggle()
//                MapScaleView()
//            }
//            .mapStyle(.hybrid(elevation: .realistic))
//            .edgesIgnoringSafeArea(.all)
//        }
//    }
//    
//    func searchLocation() {
//        let request = MKLocalSearch.Request()
//        request.naturalLanguageQuery = searchAddress
//        
//        Task {
//            let search = MKLocalSearch(request: request)
//            let response = try? await search.start()
//            
//            if let firstResult = response?.mapItems.first {
//                mapItem = firstResult
//                let coordinate = firstResult.placemark.coordinate
//                
//                cameraPosition = .region(
//                    MKCoordinateRegion(
//                        center: coordinate,
//                        span: MKCoordinateSpan(latitudeDelta: 0.05, longitudeDelta: 0.05)
//                    )
//                )
//            }
//            searchAddress = ""
//        }
//    }
//}
//
//#Preview {
//    MapPractice()
//}

//import SwiftUI
//import MapKit
//
//struct MapPractice: View {
//    @State private var searchAddress: String = ""
//    @State private var mapItem: MKMapItem?
//    @State private var cameraPosition: MapCameraPosition = .automatic
//
//    var body: some View {
//        ZStack(alignment: .bottomTrailing) {  // ✅ Aligns buttons to bottom-right
//            VStack {
//                HStack {
//                    TextField("Enter your destination...", text: $searchAddress)
//                        .textFieldStyle(RoundedBorderTextFieldStyle())
//                        .padding()
//                    
//                    Button {
//                        searchLocation()
//                    } label: {
//                        Image(systemName: "magnifyingglass")
//                            .font(.title2)
//                            .padding(10)
//                            .background(Color.blue.opacity(0.2))
//                            .clipShape(Circle())
//                    }
//                    .padding()
//                }
//                .background(
//                    RoundedRectangle(cornerRadius: 12)
//                        .fill(Color.white)
//                        .shadow(radius: 5)
//                )
//                .padding()
//
//                Map(position: $cameraPosition) {
//                    if let mapItem {
//                        Marker(mapItem.name ?? "Destination", coordinate: mapItem.placemark.coordinate)
//                    }
//                }
//                .mapControls {
//                    MapUserLocationButton()
//                    MapCompass()
//                    MapPitchToggle()
//                    MapScaleView()
//                }
//                .mapStyle(.hybrid(elevation: .realistic))
//                .edgesIgnoringSafeArea(.all)
//            }
//
//            // ✅ Zoom Controls (Bottom Right)
//            VStack {
//                Button(action: zoomIn) {
//                    Image(systemName: "plus.magnifyingglass")
//                        .font(.title)
//                        .padding()
//                        .background(Color.blue)
//                        .foregroundColor(.white)
//                        .clipShape(Circle())
//                }
//                Button(action: zoomOut) {
//                    Image(systemName: "minus.magnifyingglass")
//                        .font(.title)
//                        .padding()
//                        .background(Color.red)
//                        .foregroundColor(.white)
//                        .clipShape(Circle())
//                }
//            }
//            .padding()
//        }
//    }
//    
//    func searchLocation() {
//        let request = MKLocalSearch.Request()
//        request.naturalLanguageQuery = searchAddress
//        
//        Task {
//            let search = MKLocalSearch(request: request)
//            let response = try? await search.start()
//            
//            if let firstResult = response?.mapItems.first {
//                mapItem = firstResult
//                let coordinate = firstResult.placemark.coordinate
//                
//                cameraPosition = .region(
//                    MKCoordinateRegion(
//                        center: coordinate,
//                        span: MKCoordinateSpan(latitudeDelta: 0.05, longitudeDelta: 0.05)
//                    )
//                )
//            }
//            searchAddress = ""
//        }
//    }
//
//    func zoomIn() {
//        if let currentRegion = cameraPosition.region {
//            let newSpan = MKCoordinateSpan(latitudeDelta: currentRegion.span.latitudeDelta / 2,
//                                           longitudeDelta: currentRegion.span.longitudeDelta / 2)
//            cameraPosition = .region(MKCoordinateRegion(center: currentRegion.center, span: newSpan))
//        }
//    }
//
//    func zoomOut() {
//        if let currentRegion = cameraPosition.region {
//            let newSpan = MKCoordinateSpan(latitudeDelta: currentRegion.span.latitudeDelta * 2,
//                                           longitudeDelta: currentRegion.span.longitudeDelta * 2)
//            cameraPosition = .region(MKCoordinateRegion(center: currentRegion.center, span: newSpan))
//        }
//    }
//}
//
//#Preview {
//    MapPractice()
//}



import SwiftUI
import MapKit

struct MapPractice: View {
    @State private var searchAddress: String = ""
    @State private var mapItem: MKMapItem?
    @State private var cameraPosition: MapCameraPosition = .automatic

    var body: some View {
        VStack {
            HStack {
                TextField("Enter your destination...", text: $searchAddress)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .padding()
                
                Button {
                    searchLocation()
                } label: {
                    Image(systemName: "magnifyingglass")
                        .font(.title2)
                        .padding(10)
                        .background(Color.blue.opacity(0.2))
                        .clipShape(Circle())
                }
                .padding()
            }
            .background(
                RoundedRectangle(cornerRadius: 12)
                    .fill(Color.white)
                    .shadow(radius: 5)
            )
            .padding()

            Map(position: $cameraPosition, interactionModes: [.zoom, .pan, .rotate]) {
                if let mapItem {
                    Marker(mapItem.name ?? "Destination", coordinate: mapItem.placemark.coordinate)
                }
            }
            .mapControls {
                MapUserLocationButton()
                MapCompass()
                MapPitchToggle()
                MapScaleView()
            }
            .mapStyle(.hybrid(elevation: .realistic))
            .edgesIgnoringSafeArea(.all)
        }
    }
    
    func searchLocation() {
        let request = MKLocalSearch.Request()
        request.naturalLanguageQuery = searchAddress
        
        Task {
            let search = MKLocalSearch(request: request)
            let response = try? await search.start()
            
            if let firstResult = response?.mapItems.first {
                mapItem = firstResult
                let coordinate = firstResult.placemark.coordinate
                
                cameraPosition = .region(
                    MKCoordinateRegion(
                        center: coordinate,
                        span: MKCoordinateSpan(latitudeDelta: 0.05, longitudeDelta: 0.05)
                    )
                )
            }
            searchAddress = ""
        }
    }
}

#Preview {
    MapPractice()
}
