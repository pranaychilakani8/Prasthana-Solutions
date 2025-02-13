//
//  uiHeaderView.swift
//  JSONUsingScrollView
//
//  Created by Pranay on 13/02/25.
//

import SwiftUI

struct uiHeaderView: View {
    var body: some View {
        VStack {
            HStack(spacing: -5)
            {
                ZStack{
                    Circle()
                        .fill(Color(UIColor(red: 0, green: 0.5, blue: 0, alpha: 0.7)))
                        .frame(width: 30, height: 30)
                        .overlay {
                            Circle().stroke(.white, lineWidth: 2)
                        }
                        .shadow(radius: 3)
                    Text("JP")
                        .foregroundColor(Color.black)
                }
                ZStack{
                    Circle()
                        .fill(Color(UIColor(red: 0, green: 0.5, blue: 0, alpha: 0.7)))
                        .frame(width: 30, height: 30)
                        .overlay {
                            Circle().stroke(.white, lineWidth: 2)
                        }
                        .shadow(radius: 3)
                    Text("K1")
                        .foregroundColor(Color.black)
                }
                ZStack{
                    Circle()
                        .fill(Color(UIColor(red: 0, green: 0.5, blue: 0, alpha: 0.7)))
                        .frame(width: 30, height: 30)
                        .overlay {
                            Circle().stroke(.white, lineWidth: 2)
                        }
                        .shadow(radius: 3)
                    Text("P")
                        .foregroundColor(Color.black)
                }
                Spacer()
                HStack{
                    Button(action: {}, label:{
                        Text("+")
                            .font(.title)
                            .fontWeight(.bold)
                            .foregroundColor(/*@START_MENU_TOKEN@*/Color(hue: 0.173, saturation: 0.712, brightness: 0.774, opacity: 0.928)/*@END_MENU_TOKEN@*/)
                        
                    })
                    .padding(.all)
                    
                }
            }
            .padding(.leading,10)
        }
    }
}

#Preview {
    uiHeaderView()
}
