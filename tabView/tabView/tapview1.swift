//
//  tapview1.swift
//  tabView
//
//  Created by Pranay on 14/02/25.
//

import SwiftUI

struct tapview1: View {
    var body: some View {
        TabView{
            profile()
                .tabItem{
                    Image(systemName: "person")
                    Text("Profile")
                }
            settings()
                .tabItem{
                    Image(systemName: "gear")
                    Text("settings")
                }
        }
        .accentColor(.secondary)
    }
}

#Preview {
    tapview1()
}

struct profile : View {
    var body: some View {
        VStack{
            Circle()
                .fill(Color.blue.gradient)
                .frame(width: 100,height: 100)
        }
    }
}

struct settings : View {
    var body: some View {
        VStack{
            Circle()
                .fill(Color.red.gradient)
                .frame(width: 100,height: 100)
        }
    }
}
