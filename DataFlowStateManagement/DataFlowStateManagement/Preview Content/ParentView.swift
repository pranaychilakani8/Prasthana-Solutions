//
//  ParentView.swift
//  StateManagement
//
//  Created by Pranay on 12/02/25.
//

import SwiftUI

struct ParentView: View {
   
    @State var userInput = "black"
    
    var body: some View {
        
        VStack {
            Rectangle( )
                .foregroundStyle(userInput.lowercased() == "pink" ? .pink : .blue)
                .ignoresSafeArea()
            ChildView(userInput: $userInput)
        }
    }
}

#Preview {
    ParentView()
}
