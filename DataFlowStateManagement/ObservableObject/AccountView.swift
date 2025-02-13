//
//  AccountView.swift
//  StateManagement
//
//  Created by Pranay on 12/02/25.
//

import SwiftUI

struct AccountView: View {
    
    @EnvironmentObject var profileModel : Profile
    
    var body: some View {
        VStack{
            if profileModel.isLoggedIn == true {
                Text("Hello and welcome back!")
            }
            else{
                Text("Please log in to continue")
            }
            BalanceView()
            Button("Log In") {
                profileModel.isLoggedIn = true
            }
        }
    }
}

#Preview {
    AccountView()
}
