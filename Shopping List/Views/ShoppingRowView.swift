//
//  ShoppingRowView.swift
//  Shopping List
//
//  Created by John Edwin Guerrero Ayala on 8/12/19.
//  Copyright © 2019 John Edwin Guerrero Ayala. All rights reserved.
//

import SwiftUI

struct ShoppingRowView: View {
    var body: some View {
        HStack{
            Text("Nike Air")
            Text("$9.99")
                .fontWeight(.bold)
            Spacer()
            Image(systemName: "checkmark.circle")
                .resizable()
                .aspectRatio(1, contentMode: .fit)
                .frame(maxWidth: 50)
        }
    }
}

struct ShoppingRowView_Previews: PreviewProvider {
    static var previews: some View {
        ShoppingRowView()
    }
}
