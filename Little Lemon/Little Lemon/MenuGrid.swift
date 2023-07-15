//
//  MenuGrid.swift
//  Little Lemon
//
//  Created by Lefteris Kostakis on 15/7/23.
//

import SwiftUI

struct MenuGrid: View {

    @State var gridLayout = [GridItem(), GridItem(), GridItem()]
    var menu: [MenuItem]

    var body: some View {

        LazyVGrid(columns: gridLayout, alignment: .leading, spacing: 40) {

            ForEach(0..<menu.count) { index in
                MenuIcon(title: menu[index].title)
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
