//
//  StaticGridView.swift
//  Girds
//
//  Created by Pranay on 14/02/25.
//

import SwiftUI

struct StaticGridView: View {
    var body: some View {
        Grid(horizontalSpacing: 20,verticalSpacing: 20){
            GridRow{
                RoundedRectangle(cornerRadius: 10)
                    .fill(.pink.gradient)
                    .frame(width: 100,height: 100)
                
                VStack{
                    Circle()
                        .fill(Color.blue.gradient)
                        .frame(width: 60,height: 60)
                    Text("Pranay Kuamr")
                }
                VStack{
                    Button("Press"){
                        
                    }
                    .buttonStyle(.borderedProminent)
                }
            }
        }
    }
}

#Preview {
    StaticGridView()
}
