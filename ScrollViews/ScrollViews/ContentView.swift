//
//  ContentView.swift
//  ScrollViews
//
//  Created by Pranay on 13/02/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ScrollView{
            VStack{
                ForEach(1..<10){ index in
                    Rectangle()
                        .fill(.green)
                        .frame(width: 300,height: 200)
                        .cornerRadius(10)
                }
            }
        }
    }
}

#Preview {
    ContentView()
}
