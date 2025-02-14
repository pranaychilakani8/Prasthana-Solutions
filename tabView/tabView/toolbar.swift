//
//  toolbar.swift
//  tabView
//
//  Created by Pranay on 14/02/25.
//

import SwiftUI

struct toolbar: View {
    var body: some View {
        NavigationStack{
            Text("")
            
            .toolbar{
                ToolbarItem(placement: .topBarTrailing)
                {
                    Button("\(Image(systemName: "gear"))") {
                        print("Selected")
                    }

                }
            }
        }
    }
}

#Preview {
    toolbar()
}
