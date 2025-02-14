//
//  customTapBar.swift
//  tabView
//
//  Created by Pranay on 14/02/25.
//

import SwiftUI

struct customTapBar: View {
    var body: some View {
        
        NavigationStack{
            Spacer()
            HStack(spacing:70){
                //1
                VStack(spacing: 4){
                    NavigationLink(destination: chats()) {
                        Image(systemName: "bubble.left")
                    }
                    Text("Chats")
                }
                
                //2
                VStack(spacing: 4){
                    NavigationLink(destination: NewChat()){
                        Image(systemName: "plus.circle.fill")
                    }
                    Text("New Chat")
                }
                
                //3
                VStack(spacing: 4){
                    Button("\(Image(systemName: "person.fill"))") {
                        /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/ /*@END_MENU_TOKEN@*/
                    }
                    Text("Contacts")
                }
                
            }
        }
        .padding()
    }
}

#Preview {
    customTapBar()
}


struct chats: View {
    var body: some View {
        VStack{
            Text("welcome")
        }
    }
}

struct NewChat : View{
    var body: some View{
        VStack{
            Text("Welcome to chat section")
        }
    }
}
