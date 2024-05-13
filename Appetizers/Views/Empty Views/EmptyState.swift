//
//  EmptyState.swift
//  Appetizers
//
//  Created by AVIK MUKHERJEE on 11/05/24.
//

import SwiftUI

struct EmptyState: View {
    let imageName: String
    let message: String
    var body: some View {
        ZStack{
            Color(.systemBackground)
                .ignoresSafeArea(.all)
            
            VStack{
                Image(imageName)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 200, height: 200, alignment: .center)
                
                
                Text(message)
                    .font(.subheadline)
                    .fontWeight(.semibold)
                    .multilineTextAlignment(.center)
                    .foregroundStyle(.secondary)
                    .padding()
            }
            .offset(y: -50)
        }
    }
}

#Preview {
    EmptyState(imageName: "Empty-order", message: "No Order Placed")
}
