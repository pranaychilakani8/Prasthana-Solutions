//
//  ContentView.swift
//  WarGame
//
//  Created by Pranay on 10/02/25.
//

import SwiftUI

struct ContentView: View {
    
    @State var playerCard = "card3"
    @State var cpuCard = "card4"
    @State var playerScore = 0
    @State var cpuScore = 0
    
    var body: some View {
        ZStack {
            Image("background")
                .ignoresSafeArea()
            
            VStack(spacing: 20) {
                Spacer()
                Image("logo")
                Spacer()
                HStack(spacing: 90){
                    Image(playerCard)
                    Image(cpuCard)
                }
                Spacer()
                
                Button(action: {
                    
                    //Generate a random number between 2 and 14
                    let playerRandfom = Int.random(in: 2...14 )
                    let cpuRandom = Int.random(in: 2...14)
                    
                    
                    //update the cards
                    playerCard = "card" + String(playerRandfom)
                    cpuCard = "card" + String(cpuRandom)
                    
                    //update the Score
//                    playerScore += 1
//                    cpuScore += 1
                    
                    if playerRandfom > cpuRandom {
                        playerScore += 1
                    }
                    else{
                        cpuScore += 1
                    }
                }) {
                    Image("dealbutton")
                }
                
                Spacer()
                HStack(spacing: 80){
                    VStack
                    {
                        Text("Player")
                            .font(.headline)
                            .foregroundColor(Color.white)
                            .padding(.bottom)
                        Text(String(playerScore))
                            .foregroundColor(Color.white)
                    }
                    VStack
                    {
                        Text("CPU")
                            .font(.headline)
                            .foregroundColor(Color.white)
                            .padding(.bottom)
                        Text(String(cpuScore))
                            .foregroundColor(Color.white)
                    }
                }
                Spacer()
                
            }
        }
       
    }
}

#Preview {
    ContentView()
}
