//
//  HomeView.swift
//  TabBar
//
//  Created by Pranay on 11/03/25.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        List{
            ForEach(0..<20){
                Text("\($0)")
            }
        }
    }
}

#Preview {
    HomeView()
}
