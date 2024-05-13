//
//  Date+Ext.swift
//  Appetizers
//
//  Created by AVIK MUKHERJEE on 13/05/24.
//

import Foundation

extension Date{
    var eighteenYearsAgo: Date{
        Calendar.current.date(byAdding: .year, value: -18, to: Date())!
    }
    
    var oneHundredTenYearsAgo: Date{
        Calendar.current.date(byAdding: .year, value: -110, to: Date())!
    }
}
