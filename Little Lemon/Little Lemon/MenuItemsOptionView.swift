//
//  MenuItemsOptionView.swift
//  Little Lemon
//
//  Created by Lefteris Kostakis on 15/7/23.
//

import SwiftUI

struct MenuItemsOptionView: View {

    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {

        NavigationView {

            List {

                Section("SELECTED CATEGORIES") {
                    Text("Food")
                    Text("Drink")
                    Text("Desert")
                }

                Section("SORT BY") {
                    Text("Most Popular")
                    Text("Price $-$$$")
                    Text("A-Z")
                }
            }
            .navigationTitle("Filter")
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button("Done") {
                        presentationMode.wrappedValue.dismiss()
                    }
                    .fontWeight(.bold)
                }
            }
        }
    }
}

struct MenuItemsOptionView_Previews: PreviewProvider {
    static var previews: some View {
        MenuItemsOptionView()
    }
}
