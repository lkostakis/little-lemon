//
//  MenuItemsView.swift
//  Little Lemon
//
//  Created by Lefteris Kostakis on 15/7/23.
//

import SwiftUI

struct MenuItemsView: View {

    @StateObject private var viewModel = MenuViewViewModel()
    @State private var showMenuItemsOption = false
    @State var gridLayout = [GridItem(), GridItem(), GridItem()]

    var body: some View {
        NavigationView {

            VStack {
                ScrollView {
                    Text("Food")
                        .font(.title)
                        .frame(maxWidth: .infinity, alignment: .leading) // Align text leading
                        .padding()
                    MenuGrid(menu: viewModel.foodMenuItems)

                    Text("Drinks")
                        .font(.title)
                        .frame(maxWidth: .infinity, alignment: .leading) // Align text leading
                        .padding()
                    MenuGrid(menu: viewModel.drinkMenuItems)

                    Text("Dessert")
                        .font(.title)
                        .frame(maxWidth: .infinity, alignment: .leading) // Align text leading
                        .padding()
                    MenuGrid(menu: viewModel.dessertMenuItems)

                    .navigationTitle("Menu")
                    .toolbar {
                        ToolbarItem(placement: .navigationBarTrailing) {
                            Button(action: {
                                showMenuItemsOption = true
                            }) {
                                Image(systemName: "slider.horizontal.3")
                            }
                        }
                    }
                    .sheet(isPresented: $showMenuItemsOption) {
                        MenuItemsOptionView()
                    }
                }
            }

        }
    }
}

struct MenuItemsView_Previews: PreviewProvider {
    static var previews: some View {
        MenuItemsView()
    }
}
