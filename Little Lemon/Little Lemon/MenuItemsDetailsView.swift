//
//  MenuItemsDetailsView.swift
//  Little Lemon
//
//  Created by Lefteris Kostakis on 15/7/23.
//

import SwiftUI

struct MenuItemsDetailsView: View {

    let menuItem: MenuItem

    var body: some View {
        
        ScrollView {

            VStack {

                HStack {
                    Text(menuItem.title)
                        .font(.largeTitle)
                        .fontWeight(.bold)
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .padding()
                }

                HStack {
                    Image("littlelemon")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 250, alignment: .center)
                }

                VStack(alignment: .center) {
                    Text("Price:")
                        .bold()
                    Text("\(menuItem.price, specifier: "%.2f")")

                    Spacer()

                    Text("Ordered:")
                        .bold()
                    Text("\(menuItem.ordersCount)")

                    Spacer()

                    Text("Ingredients:")
                        .fontWeight(.bold)
                    ForEach(menuItem.ingredients, id: \.self) { ingredient in
                        Text(ingredient.rawValue)
                    }
                }
            }

        }
    }
}

struct MenuItemsDetailsView_Previews: PreviewProvider {
    static var previews: some View {
        MenuItemsDetailsView(menuItem: MenuItem(title: "Traxanas",
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
                                                              .tomatoSauce]))
    }
}
