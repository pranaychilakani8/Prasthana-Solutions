//
//  ContentView.swift
//  Girds
//
//  Created by Pranay on 13/02/25.
//

import SwiftUI

struct ContentView: View {
    
    let columns :[GridItem] = [
        GridItem(.flexible(),spacing: 30),
        GridItem(.flexible(),spacing: 30),
        GridItem(.flexible(),spacing: 30)
        
        //we can write simply
        // Array(repeating: [GridItem(.flexible()], count: 5)
    ]
    
    let rows = Array(repeating: GridItem(.fixed(50)), count: 1)
    
    var body: some View {
        
        
        ScrollView(.horizontal){
            LazyHGrid(rows: rows){
                ForEach(1..<11){ index in
                    Circle()
                        .fill(Color.yellow)
                }
            }
            .padding()
            Spacer()
            
            
            ScrollView{
                LazyVGrid(columns: columns,pinnedViews: .sectionHeaders)
                {
                    
                    //section header and content
                    Section{
                        ForEach(1..<31){ index in
                            Rectangle()
                                .fill(Color.green)
                                .cornerRadius(8)
                                .frame(height: 100)
                        }
                    }header: {
                        Text("Rectangles")
                            .font(.largeTitle).bold()
                            .frame(maxWidth: .infinity,alignment: .leading)
                    }
                    
                    Section{
                        ForEach(1..<31){ index in
                            Rectangle()
                                .fill(Color.indigo)
                                .cornerRadius(8)
                                .frame(height: 100)
                        }
                    }header: {
                        Text("Section 2")
                            .font(.largeTitle).bold()
                            .frame(maxWidth: .infinity,alignment: .leading)
                    }
                    
                    
                    
                }
                .padding()
            }
        }
    }
}

#Preview {
    ContentView()
}
