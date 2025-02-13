//
//  DataFlowStateManagementApp.swift
//  DataFlowStateManagement
//
//  Created by Pranay on 13/02/25.
//

import SwiftUI

@main
struct DataFlowStateManagementApp: App {
    var body: some Scene {
        WindowGroup {
            AccountView()
                .environmentObject(Profile())
        }
    }
}
