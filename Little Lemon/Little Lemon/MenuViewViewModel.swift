//
//  MenuViewViewModel.swift
//  Little Lemon
//
//  Created by Lefteris Kostakis on 15/7/23.
//

import Foundation

@MainActor
class MenuViewViewModel: ObservableObject {

    @Published var foodMenuItems: [MenuItem] = []
    @Published var drinkMenuItems: [MenuItem] = []
    @Published var dessertMenuItems: [MenuItem] = []

    init(_ menuItem: MenuItem = MenuItem()) {
        foodMenuItems = menuItem.getMockFoods()
        drinkMenuItems = menuItem.getMockDrinks()
        dessertMenuItems = menuItem.getMockDesserts()
    }
}
