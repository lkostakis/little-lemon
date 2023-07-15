//
//  MenuGrid.swift
//  Little Lemon
//
//  Created by Lefteris Kostakis on 15/7/23.
//

import SwiftUI

struct MenuGrid: View {

    @State var gridLayout = [GridItem(), GridItem(), GridItem()]
    @State var showMenuItemDetails = false
    var menu: [MenuItem]

    var body: some View {

        LazyVGrid(columns: gridLayout, alignment: .leading, spacing: 40) {
            ForEach(menu) { item in
                NavigationLink(destination: MenuItemsDetailsView(menuItem: item)) {
                    MenuIcon(title: item.title)
                }
            }
        }
        .padding()
    }
}

struct MenuGrid_Previews: PreviewProvider {
    static var previews: some View {
        MenuGrid(menu: MenuItem().getMockDrinks())
    }
}
