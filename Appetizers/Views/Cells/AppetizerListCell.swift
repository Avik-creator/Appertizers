//
//  AppetizerListCell.swift
//  Appetizers
//
//  Created by AVIK MUKHERJEE on 24/04/24.
//

import SwiftUI

struct AppetizerListCell: View {
    let appetizer: Appetizer
    
    var body: some View {
        HStack{
            
            // Old Way Of Image Showing
//            AppetizerRemoteImage(urlString: appetizer.imageURL)
//                .aspectRatio(contentMode: .fit)
//                .frame(width: 120, height: 90)
//                .clipShape(RoundedRectangle(cornerRadius: 12, style: .continuous))
            
            // AsyncImage is Not doing Cache.
            AsyncImage(url: URL(string: appetizer.imageURL)){ image in image.AppetizerListCellStype()
                
            }placeholder: {
                Image("food-placeholder")
                    .AppetizerListCellStype()
            }
        
            
            VStack(alignment: .leading, spacing: 5){
                
                Text(appetizer.name)
                    .font(.title2)
                    .fontWeight(.medium)
                
                Text("$\(appetizer.price, specifier: "%.2f")")
                    .foregroundStyle(.secondary)
                    .fontWeight(.semibold)
            }
            .padding(.leading)
        }
    }
}

#Preview {
    AppetizerListCell(appetizer: MockData.sampleAppetizer)
}
