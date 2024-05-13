//
//  AppetizerDetailView.swift
//  Appetizers
//
//  Created by AVIK MUKHERJEE on 29/04/24.
//

import SwiftUI

struct AppetizerDetailView: View {
    
    @EnvironmentObject var order: Order
    
    let appetizer: Appetizer
    @Binding var isShowingDetail: Bool
    var body: some View {
        VStack{
            AppetizerRemoteImage(urlString: appetizer.imageURL)
                .aspectRatio(contentMode: .fit)
                .frame(width: 300, height: 225)
            
            VStack{
                Text(appetizer.name)
                    .font(.title)
                    .fontWeight(.semibold)
                
                Text(appetizer.description)
                    .multilineTextAlignment(.center)
                    .font(.body)
                    .padding()
                
                HStack(spacing: 20){
                    NutitionInfo(title: "Calories", value: "\(appetizer.calories)g")
                    NutitionInfo(title: "Carbs", value: "\(appetizer.carbs)g")
                    NutitionInfo(title: "Proteins", value: "\(appetizer.protein)g")
                }
            }
            
            Spacer()
            
            Button{
                order.add(appetizer)
                isShowingDetail = false
            }label:{
//                APButton(title: "$\(appetizer.price, specifier: "%.2f") - Add to Order")
                Text("$\(appetizer.price, specifier: "%.2f") - Add to Order")
            }
            .modifier(standardButtonStyle())
            .padding(.bottom, 30)
        }
        .frame(width: 300, height: 525)
        .background(Color(.systemBackground))
        .cornerRadius(12)
        .shadow(radius: 40)
        .overlay(Button{
            isShowingDetail = false
            
        }label: {
            ZDismissButton()
        }, alignment: .topTrailing)
    }
}

#Preview {
    AppetizerDetailView(appetizer: MockData.sampleAppetizer, isShowingDetail: .constant(true))
}
