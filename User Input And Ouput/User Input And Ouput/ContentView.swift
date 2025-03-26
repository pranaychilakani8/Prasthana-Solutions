//
//  ContentView.swift
//  User Input And Ouput
//
//  Created by Pranay on 14/02/25.
//

import SwiftUI

struct ContentView: View {
    @State private var userData = ""
    var body: some View {
        VStack {
            TextField("Write here...", text: $userData)
                .textFieldStyle(.roundedBorder)
                .padding()
            Text("Output : \(userData)")
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
