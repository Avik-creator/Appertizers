//
//  Alert.swift
//  Appetizers
//
//  Created by AVIK MUKHERJEE on 24/04/24.
//

import SwiftUI

struct AlertItem: Identifiable{
    let id = UUID()
    let title: Text
    let message: Text
    let dismissButton: Alert.Button
}

struct AlertContext {
    static let invalidURL = AlertItem(
        title: Text("Server Error"),
        message: Text("The provided URL is invalid."),
        dismissButton: Alert.Button.default(Text("OK"))
    )
    
    static let invalidResponse = AlertItem(
        title: Text("Server Error"),
        message: Text("The server responded with an invalid response."),
        dismissButton: Alert.Button.default(Text("OK"))
    )
    
    static let invalidData = AlertItem(
        title: Text("Server Error"),
        message: Text("The received data is invalid."),
        dismissButton: Alert.Button.default(Text("OK"))
    )
    
    static let unableToComplete = AlertItem(
        title: Text("Server Error"),
        message: Text("An unknown error occurred. Please try again later."),
        dismissButton: Alert.Button.default(Text("OK"))
    )
    
    static let invalidForm = AlertItem(
        title: Text("Invalid Form"),
        message: Text("Please ensure all the fields in the form have been filled out"),
        dismissButton: Alert.Button.default(Text("OK"))
    )
    
    static let invalidEmail = AlertItem(
        title: Text("Invalid Email"),
        message: Text("Entered Invalid Email. Please enter correct mail"),
        dismissButton: Alert.Button.default(Text("OK"))
    )
    
    static let userSaveSuccess = AlertItem(
        title: Text("Profile Saved"),
        message: Text("Your profile information was successfully saved."),
        dismissButton: Alert.Button.default(Text("OK"))
    )
    
    static let userUnsuccessfullySave = AlertItem(
        title: Text("Profile Not Saved"),
        message: Text("Your Profile Information was not saved successfully. Please Try Again"),
        dismissButton: Alert.Button.default(Text("Retry"))
    )
}

