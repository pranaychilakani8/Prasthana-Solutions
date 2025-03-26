//
//  ContentView.swift
//  TabBar
//
//  Created by Pranay on 11/03/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        NavigationStack{
            Text("")
                .toolbar {
                    ToolbarItem() {
                        Image(systemName: "house")
                    }
                }
            
            //tapbar
            TabView {
                HomeView()
                    .tabItem {
                        Image(systemName: "house")
                        Text("Home")
                    }
                SettingsView()
                    .tabItem {
                        Image(systemName: "gear")
                        Text("Settings")
                    }
            }
        }
    }
}

#Preview {
    ContentView()
}
