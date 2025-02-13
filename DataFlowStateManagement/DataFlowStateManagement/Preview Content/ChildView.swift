//
//  ChildView.swift
//  StateManagement
//
//  Created by Pranay on 12/02/25.
//

import SwiftUI

struct ChildView: View {
    @Binding  var userInput : String
    var body: some View {
        TextField(" ",text: $userInput)
    }
}

//#Preview {
//    ChildView()
//}
