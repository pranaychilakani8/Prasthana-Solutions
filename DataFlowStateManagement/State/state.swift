//
//  state.swift
//  StateManagement
//
//  Created by Pranay on 12/02/25.
//

import SwiftUI

struct state: View {
    @State private var counter = 1
    var body: some View {
        
        Button("Count") {
           
            counter += 1
        }
        Text("Count = \(counter)")
    }
}

#Preview {
    state()
}
