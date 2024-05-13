//
//  Appetizer.swift
//  Appetizers
//
//  Created by AVIK MUKHERJEE on 24/04/24.
//

import Foundation

struct Appetizer: Decodable, Identifiable{
    let id: Int
    let name: String
    let description: String
    let price: Double
    let imageURL: String
    let calories: Int
    let protein: Int
    let carbs: Int
}

struct AppetizerResponse: Decodable{
    let request: [Appetizer]
}

struct MockData {
    static let sampleAppetizer = Appetizer(id: 001, name: "Test", description: "This is a Test Appetizer Description", price: 9.99, imageURL: "", calories: 99, protein:99, carbs: 0)
    
    static let appetizers = [sampleAppetizer, sampleAppetizer, sampleAppetizer, sampleAppetizer]
    
    static let orderItemOne = Appetizer(id: 001, name: "Test", description: "This is a Test Appetizer Description", price: 9.99, imageURL: "", calories: 99, protein:99, carbs: 0)
    static let orderItemTwo = Appetizer(id: 002, name: "Test", description: "This is a Test Appetizer Description", price: 9.99, imageURL: "", calories: 99, protein:99, carbs: 0)
    static let orderItemThree = Appetizer(id: 003, name: "Test", description: "This is a Test Appetizer Description", price: 9.99, imageURL: "", calories: 99, protein:99, carbs: 0)
    
    static let orderItems = [orderItemOne, orderItemTwo, orderItemThree]
}
