//
//  ShopItem.swift
//  Shopping List
//
//  Created by John Edwin Guerrero Ayala on 14/12/19.
//  Copyright © 2019 John Edwin Guerrero Ayala. All rights reserved.
//

import Foundation

struct ShopItem {
    var id = 0
    var name = ""
    var price = 0.0
    
    init(id: Int, name: String, price: Double) {
        self.id = 0
        self.name = name
        self.price = price
    }
}
