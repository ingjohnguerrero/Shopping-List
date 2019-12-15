//
//  ShopListView.swift
//  Shopping List
//
//  Created by John Edwin Guerrero Ayala on 8/12/19.
//  Copyright © 2019 John Edwin Guerrero Ayala. All rights reserved.
//

import SwiftUI

struct ShopListView: View {
    var availableItems : [ShopItem]
    @State private var cartItems: [Int: ShopItem] = [:]
    var body: some View {
        NavigationView {
            List(availableItems) { item in
                ShoppingRowView(inCart: self.inCart(shopItem: item), shopItem: item)
                    .onTapGesture {
                        self.toggleCartItem(shopItem: item)
                }
            }
            .navigationBarTitle(Text("The Shop"))
            .navigationBarItems(trailing: CartView())
        }
    }
    private func inCart(shopItem: ShopItem) -> Bool {
        return cartItems[shopItem.id] != nil
    }
    private func toggleCartItem(shopItem: ShopItem) {
        if cartItems[shopItem.id] == nil {
            cartItems[shopItem.id] = shopItem
        } else {
            cartItems[shopItem.id] = nil
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
        return ShopListView(availableItems: ShopItem.generateFake(withQuantity: 10))
    }
}
