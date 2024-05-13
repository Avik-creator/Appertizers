//
//  NutitionInfo.swift
//  Appetizers
//
//  Created by AVIK MUKHERJEE on 10/05/24.
//

import SwiftUI

struct NutitionInfo: View {
    let title: String
    let value: String
    var body: some View {
        VStack{
            Text(title)
                .bold()
                .font(.caption)
            
            Text(value)
                .foregroundStyle(.secondary)
                .fontWeight(.semibold)
                .italic()
        }
    }
}

#Preview {
    NutitionInfo(title: "Test Value", value: "99g")
}
