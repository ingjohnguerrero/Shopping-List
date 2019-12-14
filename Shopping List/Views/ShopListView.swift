//
//  ShopListView.swift
//  Shopping List
//
//  Created by John Edwin Guerrero Ayala on 8/12/19.
//  Copyright © 2019 John Edwin Guerrero Ayala. All rights reserved.
//

import SwiftUI

struct ShopListView: View {
    var body: some View {
        NavigationView {
            List{
                ShoppingRowView()
                ShoppingRowView()
            }
            .navigationBarTitle(Text("The Shop"))
            .navigationBarItems(trailing: CartView())
        }
    }
}

struct CartView: View {
    var body: some View {
        Image(systemName: "cart")
            .resizable()
            .aspectRatio(1, contentMode: .fill)
            .frame(maxWidth: 50)
    }
}

struct ShopListView_Previews: PreviewProvider {
    static var previews: some View {
        ShopListView()
    }
}
