//
//  CartView.swift
//  Shopping List
//
//  Created by John Edwin Guerrero Ayala on 16/12/19.
//  Copyright © 2019 John Edwin Guerrero Ayala. All rights reserved.
//

import SwiftUI

struct CartView: View {
    var cartItems: Int = 0
    var body: some View {
        ZStack{
            
            Image(systemName: "cart")
                .resizable()
                .aspectRatio(1, contentMode: .fit)
                .frame(maxWidth: 50)
            
            ZStack{
                Circle()
                    .fill(Color.red)
                    .frame(maxWidth: 30)
                Text("\(cartItems)")
                    .font(.custom("SanFrancisco", size: 11))
                    .fontWeight(.bold)
                    .foregroundColor(Color.white)
            }
            .offset(x: 15, y: 8)
            .opacity((cartItems > 0) ? 1.0 : 0.0)
        }
    }
}

struct CartView_Previews: PreviewProvider {
    static var previews: some View {
        CartView(cartItems: 0)
    }
}
