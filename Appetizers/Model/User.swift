//
//  User.swift
//  Appetizers
//
//  Created by AVIK MUKHERJEE on 10/05/24.
//

import Foundation

struct User: Codable{
    var firstName = ""
    var lastName = ""
    var email = ""
    var brithdate = Date()
    var extraNapkins = false
    var frequentRefills = false
}
