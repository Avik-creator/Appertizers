//
//  AppetizersApp.swift
//  Appetizers
//
//  Created by AVIK MUKHERJEE on 24/04/24.
//

import SwiftUI

@main
struct AppetizersApp: App {
    
    var order = Order()
    
    var body: some Scene {
        WindowGroup {
            AppetizerTabView().environmentObject(order)
        }
    }
}
