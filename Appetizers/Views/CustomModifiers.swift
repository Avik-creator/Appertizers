//
//  CustomModifiers.swift
//  Appetizers
//
//  Created by AVIK MUKHERJEE on 12/05/24.
//

import SwiftUI

struct standardButtonStyle: ViewModifier{
    func body(content: Content) -> some View{
        content
            .buttonStyle(.bordered)
            .tint(.brandPrimary)
            .controlSize(.large)
    }
}



