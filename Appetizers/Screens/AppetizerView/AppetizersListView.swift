//
//  AppetizersListView.swift
//  Appetizers
//
//  Created by AVIK MUKHERJEE on 24/04/24.
//

import SwiftUI

struct AppetizersListView: View {
    
    @StateObject var viewModel = AppetizerListViewModel()

    var body: some View {
        ZStack{
            NavigationView{
                Group {
                    if viewModel.isLoading {
                        ProgressView("Loading...")
                            .progressViewStyle(CircularProgressViewStyle(tint: Color.green))
                            .scaleEffect(2)
                    }else {
                        List(viewModel.appetizers){
                            appetizer in AppetizerListCell(appetizer: appetizer)
                                .onTapGesture {
                                    viewModel.selectedAppetizer = appetizer
                                    viewModel.isShowingDetail = true
                                }
                        }
                    }
                    
                    
                    
                }
                .navigationTitle("🍕 Appetizers")
                .disabled(viewModel.isShowingDetail)
            }
//            .onAppear{
//                viewModel.getAppetizers()
//            }
            .task{
                await viewModel.getAppetizers()
            }
            .blur(radius: viewModel.isShowingDetail ? 20 : 0)
            
            if(viewModel.isShowingDetail){
                AppetizerDetailView(appetizer: viewModel.selectedAppetizer ?? MockData.sampleAppetizer, isShowingDetail: $viewModel.isShowingDetail)
            }
        }
        .alert(item: $viewModel.alertItem) { alertItem in
            Alert(title: alertItem.title, message: alertItem.message, dismissButton: alertItem.dismissButton )
        }
    }
}

struct AppetizersListView_Previews: PreviewProvider {
    static var previews: some View {
        AppetizersListView()
    }
}
