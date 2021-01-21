//
//  ContentView.swift
//  Shopping List
//
//  Created by John Edwin Guerrero Ayala on 8/12/19.
//  Copyright © 2019 John Edwin Guerrero Ayala. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ShopListView(availableItems: ShopItem.generateFake(withQuantity: 30))
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
