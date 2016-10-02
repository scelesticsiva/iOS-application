//
//  FoodTrackerTests.swift
//  FoodTrackerTests
//
//  Created by Apple on 29/09/16.
//  Copyright © 2016 Apple. All rights reserved.
//

import UIKit
import XCTest

class FoodTrackerTests: XCTestCase
{
    // MARK: Initialization tests
    
    func testMealInitilization()
    {
        //success case
        let potentialMeal = Meal(name: "Newest Meal", photo: nil, rating: 4)
        XCTAssertNotNil(potentialMeal)
        
        //failure case
        let anotherMeal = Meal(name: "", photo: nil, rating: 3)
        XCTAssertNil(anotherMeal,"this is not a valid initializer")
        
        //test failure
        let tofu = Meal(name: "tofu", photo: nil, rating: -2)
        XCTAssertNil(tofu,"rating must be greater than zero")
    }
}