//
//  OrderView.swift
//  Appetizers
//
//  Created by AVIK MUKHERJEE on 24/04/24.
//

import SwiftUI

struct OrderView: View {
    @EnvironmentObject var order: Order
    var body: some View {
        NavigationView{
            ZStack{
                VStack{
                    List{
                        ForEach(order.items){
                            appetizer in AppetizerListCell(appetizer: appetizer)
                        }
                        .onDelete(perform: order.deleteItems)
                        
                    }
                    .listStyle(.automatic)
                    
                    Button{
                        print("Order Placed")
                    }label:{
//                        APButton(title: "$\(order.totalPrice, specifier: "%.2f") - Place Order")
                        Text("$\(order.totalPrice, specifier: "%.2f") - Place Order")
                    }
                    .modifier(standardButtonStyle())
                    .padding(.bottom, 20)
                }
                if(order.items.isEmpty){
                    EmptyState(imageName: "Empty-order", message: "You have no items in your order. \nPlease add an appetizer!")
                }
                
            }
            .navigationTitle("🚚 Order")
            
        }
       
        
    }
    
    
}

#Preview {
    OrderView()
}
