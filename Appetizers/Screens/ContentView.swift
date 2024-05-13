//
//  ContentView.swift
//  Appetizers
//
//  Created by AVIK MUKHERJEE on 24/04/24.
//

import SwiftUI

struct AppetizerTabView: View {
    @EnvironmentObject var order: Order
    var body: some View {
        TabView{
            AppetizersListView()
                .tabItem {
                    Label("Home", systemImage: "house")
                }
            AccountView()
                .tabItem {
                    Label("Account", systemImage: "person")
                }
            OrderView()
                .tabItem {
                    Label("Order", systemImage: "bag")
                       
                }
                .badge(order.items.count)
        }
        .tint(Color("brandPrimary"))
    }
}

#Preview {
    AppetizerTabView()
}
