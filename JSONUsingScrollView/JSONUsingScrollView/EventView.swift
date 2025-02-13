//
//  EventView.swift
//  JSONUsingScrollView
//
//  Created by Pranay on 13/02/25.
//

import SwiftUI

struct EventView: View {
    var event : Event
    var body: some View {
        ZStack{
            Color.gray.opacity(0.1)
                .edgesIgnoringSafeArea(.all)
            VStack(alignment: .leading){
                Text(event.name)
                    .fontWeight(.semibold)
                    .foregroundColor(.black)
                Text(event.time)
                    .foregroundColor(.black)
                Text(event.location)
                    .foregroundColor(.black)
                Text(event.date)
                    .foregroundColor(.black)
            }
            .padding(.leading)
            .frame(width: 330,height: 150,alignment: .leading)
            .background(Color.white)
        }
    }
}


