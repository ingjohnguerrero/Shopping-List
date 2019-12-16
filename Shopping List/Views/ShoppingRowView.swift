//
//  ShoppingRowView.swift
//  Shopping List
//
//  Created by John Edwin Guerrero Ayala on 8/12/19.
//  Copyright © 2019 John Edwin Guerrero Ayala. All rights reserved.
//

import SwiftUI

struct ShoppingRowView: View {
    var inCart: Bool
    var shopItem: ShopItem
    var body: some View {
        HStack{
            Text(shopItem.name)
            Text("$\(String(format: "%.2f", shopItem.price))")
                .fontWeight(.bold)
            Spacer()
            Image(systemName: inCart ? "checkmark.circle.fill" : "checkmark.circle")
                .resizable()
                .aspectRatio(1, contentMode: .fit)
                .frame(maxWidth: 40)
        }
    }
}

struct ShoppingRowView_Previews: PreviewProvider {
    static var previews: some View {
        ShoppingRowView(inCart: false, shopItem: ShopItem.generateFake(withQuantity: 1).first!)
    }
}
