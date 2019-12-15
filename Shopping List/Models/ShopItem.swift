//
//  ShopItem.swift
//  Shopping List
//
//  Created by John Edwin Guerrero Ayala on 14/12/19.
//  Copyright © 2019 John Edwin Guerrero Ayala. All rights reserved.
//

import Foundation
import Fakery

struct ShopItem : Identifiable{
    var id = 0
    var name = ""
    var price = 0.0
    
    init(id: Int, name: String, price: Double) {
        self.id = id
        self.name = name
        self.price = price
    }
    
    static func generateFake(withQuantity quantity: Int) -> [ShopItem] {
        var shopItems = [ShopItem]()
        let faker = Faker(locale: "en")
        for i in 1...quantity {
            let shopItem = ShopItem(id: i, name: "Awesome product \(i)", price: faker.commerce.price())
            shopItems.append(shopItem)
        }
        return shopItems
    }
}
