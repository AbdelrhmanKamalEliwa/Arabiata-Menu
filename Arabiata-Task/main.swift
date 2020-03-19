//
//  main.swift
//  Arabiata-Task
//
//  Created by Abdelrhman Eliwa on 3/18/20.
//  Copyright © 2020 Abdelrhman Eliwa. All rights reserved.
//

import Foundation


let menuManager = MenuManager()
let anaZboonManager = AnaZboonManager()
menuManager.displayMenu()
print(menuManager.displayMenu())
print("Press 1 to Make Order.")
print("Press 2 for Ana zoboon")
let firstChoosen = readLine()
if let choice = firstChoosen {
    if choice == "1" {
        menuManager.TakeOrder()
        menuManager.MakeOrder()
    } else if choice == "2" {
        print("Write addzboon to add or anazboon to get zboon order.")
        if let safeChoice = readLine() {
            if safeChoice == "addzboon" {
                anaZboonManager.addZboon()
            } else if safeChoice == "anazboon" {
                anaZboonManager.getZboonOrder()
            } else {
                print("Please write a valid choice")
            }
        }
    } else {
        print("Please choose a valid number")
    }
}
