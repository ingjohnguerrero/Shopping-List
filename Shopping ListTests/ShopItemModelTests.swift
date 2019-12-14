//
//  ShopItemModelTests.swift
//  Shopping ListTests
//
//  Created by John Edwin Guerrero Ayala on 9/12/19.
//  Copyright © 2019 John Edwin Guerrero Ayala. All rights reserved.
//

import XCTest

@testable import Shopping_List

class ShopItemModelTests: XCTestCase {
    
    var sut = ShopItem(id: 0, name: "Nike shoes", price: 100.0)

    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func test_instance_with_id() {
        XCTAssertEqual(0, sut.id)
    }
    
    func test_instance_with_name() {
        XCTAssertEqual("Nike shoes", sut.name)
    }
    
    func test_instance_with_price() {
        XCTAssertEqual(100.0 , sut.price)
    }
}
