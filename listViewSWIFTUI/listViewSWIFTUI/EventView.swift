//
//  EventView.swift
//  listViewSWIFTUI
//
//  Created by Pranay on 11/02/25.
//

import SwiftUI

struct EventView: View {
    let event: Event
    
    var body: some View {
        
        ZStack{
            Color.gray.opacity(0.2)
                .edgesIgnoringSafeArea(.all)
            VStack(alignment: .leading)
            {
                Text(getWeekDay(from: event.date))
                    .font(.title)
                    .bold()
                Text(event.time)
                Text(event.name)
                Text(event.location)
            }
            .frame(width: 330,height: 150,alignment: .leading)
            .padding(.top , -8)
            .padding(.leading,15)
            .navigationTitle("Event")
            .background(Color.white)
            .cornerRadius(10)
        }
        
    }
}

