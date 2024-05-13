//
//  Image+Ext.swift
//  Appetizers
//
//  Created by AVIK MUKHERJEE on 12/05/24.
//

import SwiftUI


extension Image {
    
    func AppetizerListCellStype() -> some View {
        self
            .resizable()
            .aspectRatio(contentMode: .fit)
            .frame(width: 120, height: 90)
            .clipShape(RoundedRectangle(cornerSize: CGSize(width: 12, height: 12), style: /*@START_MENU_TOKEN@*/.continuous/*@END_MENU_TOKEN@*/))
    }
}
