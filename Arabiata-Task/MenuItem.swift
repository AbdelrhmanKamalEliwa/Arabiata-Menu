//
//  MenuItem.swift
//  Arabiata-Task
//
//  Created by Abdelrhman Eliwa on 3/18/20.
//  Copyright © 2020 Abdelrhman Eliwa. All rights reserved.
//

import Foundation

class MenuItem {
    let itemNumber: [Int]
    let itemName: [String]
    let itemPrice: [Int]
    
    init(itemNumber: [Int], itemName: [String], itemPrice: [Int]) {
        self.itemNumber = itemNumber
        self.itemName = itemName
        self.itemPrice = itemPrice
    }
}

