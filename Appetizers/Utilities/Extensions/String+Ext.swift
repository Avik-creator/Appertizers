//
//  String+Ext.swift
//  Appetizers
//
//  Created by AVIK MUKHERJEE on 10/05/24.
//

import Foundation

extension String{
    var isValidEmail: Bool{
        let emailFormat = "^[a-zA-Z0-9+_.-]+@[a-zA-Z0-9.-]+$"
        let emailPredicate = NSPredicate(format: "SELF MATCHES %@", emailFormat)
        return emailPredicate.evaluate(with: self)
    }
}
