//
//  ZDismissButton.swift
//  Appetizers
//
//  Created by AVIK MUKHERJEE on 10/05/24.
//

import SwiftUI

struct ZDismissButton: View {
    var body: some View {
        ZStack{
            Circle()
                .frame(width: 30, height: 30)
                .foregroundStyle(.white)
                .opacity(/*@START_MENU_TOKEN@*/0.8/*@END_MENU_TOKEN@*/)
            
            Image(systemName: "xmark")
                .imageScale(.medium)
                .frame(width: 44, height: 44)
                .foregroundStyle(.black)
        }
    }
}

#Preview {
    ZDismissButton()
}
