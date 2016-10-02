//
//  File.swift
//  FoodTracker
//
//  Created by Apple on 02/10/16.
//  Copyright © 2016 Apple. All rights reserved.
//

import UIKit

class Meal
{
    // MARK: Properties
    
    var name: String
    var photo: UIImage?
    var rating: Int
    
    // MARK: Initialization
    
    init?(name: String, photo: UIImage?, rating: Int)
    {
        self.name = name
        self.photo = photo
        self.rating = rating
        //Initializer should fail if the name is empty or the rating is less than zero
        if name.isEmpty || rating < 0 {
            return nil
        }
    }
}
