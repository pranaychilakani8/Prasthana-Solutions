//
//  simpleTabView.swift
//  tabView
//
//  Created by Pranay on 14/02/25.
//

import SwiftUI

struct simpleTabView: View {
    
    @State private var selectedTap : Int = 1
    
    var body: some View {
        
        TabView(selection: $selectedTap){
            
            Home()
                .tabItem{
                    Image(systemName: "house")
                    Text("Home")
                }
                .tag(1)
                
            Profile()
                .tabItem{
                    Image(systemName: "person.fill")
                    Text("Profile")
                }
                .tag(2)
            Text("settings")
                .tabItem{
                    Image(systemName: "gear")
                    Text("Settings")
                }
                .tag(3)
        }
        .accentColor(.secondary)
    }
}


struct Home: View {
    var body: some View {
        ZStack{
            Color.blue.ignoresSafeArea()
            Text("Home")
                .font(.largeTitle)
                .foregroundColor(.white)
        }
        
    }
}

struct Profile:View {
    var body: some View {
        ZStack{
            Color.red
                .font(.largeTitle)
                .foregroundColor(.white)
        }
        
    }
}
#Preview {
    simpleTabView()
}
