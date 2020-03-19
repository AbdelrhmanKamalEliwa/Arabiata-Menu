//
//  MenuManager.swift
//  Arabiata-Task
//
//  Created by Abdelrhman Eliwa on 3/19/20.
//  Copyright © 2020 Abdelrhman Eliwa. All rights reserved.
//

import Foundation

class MenuManager {
    
    let itemNumber = [1,2,3,4]
    let itemName = ["Foul", "Falafel", "Btates", "Foul Sogk"]
    let itemPrice = [4,5,8,10]
    var integerItemNumber = 0
    var integerItemAmount = 0
    var total = 0
    var totalAddedItems = 0
    
    func displayMenu() {
        let menu = MenuItem(itemNumber: itemNumber, itemName: itemName, itemPrice: itemPrice)
        for number in menu.itemNumber {
            print("Item Number: \(menu.itemNumber[number - 1])")
            print("Item Name: \(menu.itemName[number - 1])")
            print("Item Price: \(menu.itemPrice[number - 1])")
            print("----------------")
        }
    }
    
    
    
    func TakeOrder() {
        print("Enter Item Numnber:")
        if let itemNumber = readLine() {
            integerItemNumber = Int(itemNumber)!
        }
        print("Enter Item Amount")
        if let itemAmount = readLine() {
            integerItemAmount = Int(itemAmount)!
        }
    }
    
    func getTotal() -> Int{
        let intgerItemPrice = itemPrice[integerItemNumber - 1]
        total = intgerItemPrice * integerItemAmount
        return total
    }
    
    
    func deleteOrder() {
        integerItemNumber = 0
        integerItemAmount = 0
        print("Order deleted. Please enter your order again.")
        TakeOrder()
        print("Total: \(getTotal())")
    }
    
    func MakeOrder() {
        
        print("To get total press 0\nTo add item press 1\nTo delete item press 2.")
        let makeOrder = readLine()
        
        switch makeOrder {
        case "0":
            print("Total: \(getTotal())")
        case "1":
            totalAddedItems = getTotal()
            TakeOrder()
            totalAddedItems = totalAddedItems + getTotal()
            print("Total: \(totalAddedItems)")
        case "2":
            deleteOrder()
        default:
            print("Error")
        }
    }
}
