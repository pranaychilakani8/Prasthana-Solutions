//
//  ContentView.swift
//  MapTutorial
//
//  Created by Pranay on 18/03/25.
//

import SwiftUI
import MapKit

struct ContentView: View {

    let locationManager = CLLocationManager()
    @State private var lookAroundScene: MKLookAroundScene?
    @State private var isShowingLookAround = false

    var body: some View {
            Map() {
            Marker("Apple Headquarters", coordinate: .appleHQ)
            
            Annotation("Apple Visitor Center", coordinate: .appleVisitorCenter, anchor: .bottom) {
                Image(systemName: "laptopcomputer")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .foregroundStyle(.white)
                    .frame(width: 20, height: 20)
                    .padding(7)
                    .background(.pink.gradient, in: .circle)
                    .contextMenu {
                        Button("Look Around", systemImage: "binoculars") {
                            Task {
                                let scene = await getLookAroundScene(from: .appleVisitorCenter)
                                if let scene {
                                    lookAroundScene = scene
                                    isShowingLookAround = true
                                } else {
                                    print("Look Around not available for this location")
                                }
                            }
                        }
                        Button("Get Directions", systemImage: "arrow.turn.down.right") {
                           
                        }
                    }
            }
            
            Annotation("Panama Park", coordinate: .panamaPark, anchor: .bottom) {
                Image(systemName: "tree.fill")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .foregroundStyle(.white)
                    .frame(width: 20, height: 20)
                    .padding(7)
                    .background(.green.gradient, in: .circle)
                    .contextMenu {
                        Button("Look Around", systemImage: "binoculars") {
                            Task {
                                let scene = await getLookAroundScene(from: .panamaPark)
                                if let scene {
                                    lookAroundScene = scene
                                    isShowingLookAround = true
                                } else {
                                    print("Look Around not available for this location")
                                }
                            }
                        }
                        Button("Get Directions", systemImage: "arrow.turn.down.right") {
                         
                        }
                    }
            }
            
                Annotation("New York", coordinate: .NewYork, anchor: .bottom) {
                    Image(systemName: "tree.fill")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .foregroundStyle(.white)
                        .frame(width: 20, height: 20)
                        .padding(7)
                        .background(.red.gradient, in: .circle)
                        .contextMenu {
                            Button("Look Around", systemImage: "binoculars") {
                                Task {
                                    let scene = await getLookAroundScene(from: .NewYork)
                                    if let scene {
                                        lookAroundScene = scene
                                        isShowingLookAround = true
                                    } else {
                                        print("Look Around not available for this location")
                                    }
                                }
                            }
                            Button("Get Directions", systemImage: "arrow.turn.down.right") {
                             
                            }
                        }
                }

        }
        .tint(.indigo)
        .mapStyle(.hybrid(elevation: .realistic))
        .onAppear {
            locationManager.requestWhenInUseAuthorization()
        }
        .mapControls {
            MapUserLocationButton()
            MapCompass()
            MapPitchToggle()
            MapScaleView()
        }
        .lookAroundViewer(isPresented: $isShowingLookAround, scene: $lookAroundScene)
    }



    func getLookAroundScene(from coordinate: CLLocationCoordinate2D) async -> MKLookAroundScene? {
        do {
            return try await MKLookAroundSceneRequest(coordinate: coordinate).scene
        } catch {
            print("Cannot retrieve Look Around view: \(error.localizedDescription)")
            return nil
        }
    }
}

#Preview {
    ContentView()
}

// MARK: - Coordinate Extensions

extension CLLocationCoordinate2D {
    static let appleHQ = CLLocationCoordinate2D(
        latitude: 37.33182,
        longitude: -122.03118
    )
    static let appleVisitorCenter = CLLocationCoordinate2D(
        latitude: 37.33228,
        longitude: -122.03077
    )
    static let panamaPark = CLLocationCoordinate2D(
        latitude: 9.0034,
        longitude: -79.5013
    )
    static let NewYork = CLLocationCoordinate2D(
        latitude: 40.714368626483456,
        longitude: -74.0441084669405
    )
}


//    @State var camera : MapCameraPosition = .automatic
//    position: $camera
