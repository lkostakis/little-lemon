//
//  MenuIcon.swift
//  Little Lemon
//
//  Created by Lefteris Kostakis on 15/7/23.
//

import SwiftUI

struct MenuIcon: View {

    @State var title: String

    var body: some View {

        VStack {
            Rectangle()
                .frame(width: 110, height: 100)
                .foregroundColor(.black)
            Text(title)
                .padding(3)
                .foregroundColor(.black)
                .font(.subheadline)
        }
    }
}

struct MenuIcon_Previews: PreviewProvider {
    static var previews: some View {
        MenuIcon(title: "makaronia")
    }
}
