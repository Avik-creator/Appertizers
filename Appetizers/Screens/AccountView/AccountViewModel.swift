//
//  AccountViewModel.swift
//  Appetizers
//
//  Created by AVIK MUKHERJEE on 10/05/24.
//

import SwiftUI

final class AccountViewModel: ObservableObject{
    @Published var user = User()
    @AppStorage("user") private var userData: Data?
    @Published var alertItem: AlertItem?
    
    var isValidForm: Bool{
        guard !user.firstName.isEmpty && !user.lastName.isEmpty && !user.email.isEmpty else{
            alertItem = AlertContext.invalidForm
            return false
        }
        
        guard user.email.isValidEmail else{
            alertItem = AlertContext.invalidEmail
            return false
        }
        
        return true
    }
    
    func saveChanges(){
        guard isValidForm else {return}
        
        do{
            let data = try JSONEncoder().encode(user)
            userData = data
            alertItem = AlertContext.userSaveSuccess
        }catch{
            alertItem = AlertContext.userUnsuccessfullySave
        }
    }
    
    func retrieveUser(){
        guard let userData else {return}
        
        do{
            user = try JSONDecoder().decode(User.self, from: userData)
            
        }catch{
            alertItem = AlertContext.userUnsuccessfullySave
        }
    }
}
