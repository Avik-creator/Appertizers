//
//  APButton.swift
//  Appetizers
//
//  Created by AVIK MUKHERJEE on 10/05/24.
//

import SwiftUI

struct APButton: View {
    let title: LocalizedStringKey
    var body: some View {
        Text(title)
            .font(.title3)
            .fontWeight(.bold)
            .frame(width: 260, height: 50)
            .foregroundStyle(.white)
            .background(Color.brandPrimary)
            .clipShape(RoundedRectangle(cornerRadius: 10, style: .continuous))
    }
}

#Preview {
    APButton(title: "Hello World")
}
