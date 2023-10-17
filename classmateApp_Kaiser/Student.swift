//
//  Student.swift
//  classmateApp_Kaiser
//
//  Created by ANDREW KAISER on 10/11/23.
//

import Foundation

public class Student{
   
    var name: String
    var age: Int
    var money: Double
    var funny: funnyScale
    
    init(name: String, age: Int, money: Double, funny: funnyScale) {
        self.name = name
        self.age = age
        self.money = money
        self.funny = funny
    }
    
    
    
}

enum funnyScale{
    case HILARIOUS
    case HAHA
    case meh
}

