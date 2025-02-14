//
//  ContentView.swift
//  NavigationStack
//
//  Created by Pranay on 14/02/25.
//

import SwiftUI

struct ContentView: View {
    
    let fruits = ["Apple","Mango","Grapes"]
    
    var body: some View {
        NavigationStack{
            ScrollView{
                VStack(spacing: 40){
                    
                    ForEach(fruits ,id: \.self){ fruit in
                        NavigationLink(value: fruit, label: {
                            Text(fruit)
                        })
                    }
                    
                    ForEach(0..<10){ x in
                        NavigationLink(value: x) {
                            Text("Click me : \(x)")
                        }
                    }
                }
            }
            .navigationTitle("Header")
            .navigationDestination(for: Int.self) { value in
                MySecondView(value: value)
            }
            .navigationDestination(for: String.self){ fruit in
                Text(fruit)
            }
        }
    }
}

struct MySecondView : View {
    let value : Int
    
    init(value: Int) {
        self.value = value
    }
    
    var body: some View {
        Text("INIT : \(value)")
    }
}

#Preview {
    ContentView()
}
