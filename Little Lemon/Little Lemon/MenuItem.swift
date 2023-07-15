//
//  MenuItem.swift
//  Little Lemon
//
//  Created by Lefteris Kostakis on 15/7/23.
//

import Foundation

protocol MenuItemProtocol {
    var id: UUID { get }
    var title: String { get }
    var price: Double { get }
    var menuCategory: MenuCategory { get }
    var ordersCount: Int { get set }
    var ingredients: [Ingredient] { get set }
}

struct MenuItem: Identifiable, MenuItemProtocol {

    var id: UUID = UUID()
    var title: String = ""
    var price: Double = 0
    var menuCategory: MenuCategory = .food
    var ordersCount: Int = 0
    var ingredients: [Ingredient] = []
}

extension MenuItem {

    func getMockFoods() -> [MenuItem] {
        let foods: [MenuItem] = [
            MenuItem(title: "Traxanas",
                     price: 19.23,
                     menuCategory: .food,
                     ordersCount: 4355,
                     ingredients: [.pasta,
                                   .broccoli,
                                   .carrot,
                                   .spinach,
                                   .tomatoSauce,
                                   .carrot,
                                   .spinach,
                                   .tomatoSauce,
                                   .pasta,
                                   .broccoli,
                                   .carrot,
                                   .spinach,
                                   .tomatoSauce,
                                   .carrot,
                                   .spinach,
                                   .tomatoSauce]),
            MenuItem(title: "Food 1", price: 10.99, menuCategory: .food),
            MenuItem(title: "Food 2", price: 12.99, menuCategory: .food),
            MenuItem(title: "Food 3", price: 8.99, menuCategory: .food),
            MenuItem(title: "Food 4", price: 9.99, menuCategory: .food),
            MenuItem(title: "Food 5", price: 11.99, menuCategory: .food),
            MenuItem(title: "Food 6", price: 13.99, menuCategory: .food),
            MenuItem(title: "Food 7", price: 7.99, menuCategory: .food),
            MenuItem(title: "Food 8", price: 9.99, menuCategory: .food),
            MenuItem(title: "Food 9", price: 10.99, menuCategory: .food),
            MenuItem(title: "Food 10", price: 12.99, menuCategory: .food),
            MenuItem(title: "Food 11", price: 8.99, menuCategory: .food),
            MenuItem(title: "Food 12", price: 9.99, menuCategory: .food)
        ]

        return foods
    }

    func getMockDrinks() -> [MenuItem] {
        let drinks: [MenuItem] = [
            MenuItem(title: "Drink 1", price: 2.99, menuCategory: .drink),
            MenuItem(title: "Drink 2", price: 3.99, menuCategory: .drink),
            MenuItem(title: "Drink 3", price: 4.99, menuCategory: .drink),
            MenuItem(title: "Drink 4", price: 2.49, menuCategory: .drink),
            MenuItem(title: "Drink 5", price: 3.49, menuCategory: .drink),
            MenuItem(title: "Drink 6", price: 4.49, menuCategory: .drink),
            MenuItem(title: "Drink 7", price: 2.99, menuCategory: .drink),
            MenuItem(title: "Drink 8", price: 3.99, menuCategory: .drink)
        ]


        return drinks
    }

    func getMockDesserts() -> [MenuItem] {
        let desserts: [MenuItem] = [
            MenuItem(title: "Dessert 1", price: 5.99, menuCategory: .dessert),
            MenuItem(title: "Dessert 2", price: 4.99, menuCategory: .dessert),
            MenuItem(title: "Dessert 3", price: 6.99, menuCategory: .dessert),
            MenuItem(title: "Dessert 4", price: 3.99, menuCategory: .dessert),
            MenuItem(title: "Dessert 5", price: 5.49, menuCategory: .dessert)
        ]

        return desserts
    }
}
