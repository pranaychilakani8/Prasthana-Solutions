//
//  BalanceView.swift
//  StateManagement
//
//  Created by Pranay on 12/02/25.
//

import SwiftUI

struct BalanceView: View {
    
    @EnvironmentObject var profileModel : Profile
    
    var body: some View {
        if profileModel.isLoggedIn == true{
            Text("10000")
        }
        else{
            Text("0.00")
        }
    }
}

#Preview {
    BalanceView()
}
