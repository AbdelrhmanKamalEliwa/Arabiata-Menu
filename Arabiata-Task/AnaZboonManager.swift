//
//  AnaZboonManager.swift
//  Arabiata-Task
//
//  Created by Abdelrhman Eliwa on 3/19/20.
//  Copyright © 2020 Abdelrhman Eliwa. All rights reserved.
//

import Foundation

class AnaZboonManager: MenuManager {
    var zboonName: String = ""
    var zboonOrder = [String:Int]()
    let defaults = UserDefaults.standard
    
    
    func addZboon() {
        print("Enter your name:")
        if let zboon = readLine() {
            zboonName = zboon
        }
        TakeOrder()
        print("Total: \(getTotal())")
        zboonOrder[itemName[integerItemNumber - 1]] = integerItemAmount
        print("Order: \(zboonOrder)")
        defaults.set(zboonOrder, forKey: zboonName)
    }
    
    
    func getZboonOrder() {
        print("Enter your Name:")
        if let anazboon = readLine() {
            if let zboon = defaults.object(forKey: anazboon) {
                print(zboon)
            }
        }
    }
    
    
}
