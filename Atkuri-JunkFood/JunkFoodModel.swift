//
//  JunkFoodModel.swift
//  Atkuri-JunkFood
//
//  Created by Atkuri,Ashok on 3/8/18.
//  Copyright © 2018 Atkuri,Ashok. All rights reserved.
//

import Foundation

struct FoodData {
    var name:String
    var calories:Double
    var tally:Int
    
    init(itemName:String, caloriesPerServing:Double, noOfServings:Int){
        name = itemName
        calories = caloriesPerServing
        tally = noOfServings
    }
    
}

class FoodRecorder {
    private static var foodRecorderInstance:FoodRecorder = FoodRecorder()
    var foods:[FoodData]
    
    private init() {
        foods = []
    }
    
    static func getInstance() -> FoodRecorder{
        return foodRecorderInstance
    }
    
    func loadData() {
        foods = [FoodData(itemName: "Popcorn", caloriesPerServing: 106, noOfServings: 1)
            ,FoodData(itemName: "Coke", caloriesPerServing: 140, noOfServings: 1)
            ,FoodData(itemName: "Potato", caloriesPerServing: 152, noOfServings: 1)
            ,FoodData(itemName: "Donut", caloriesPerServing: 182, noOfServings: 1)
            ,FoodData(itemName: "Burger", caloriesPerServing: 202, noOfServings: 1)]
    }
    
    
    func increaseTally(forItem i:Int){
        foods[i].tally += 1
    }
    
    func getCalories(forItem i:Int) -> Double {
        return Double(foods[i].tally)*foods[i].calories
    }
    
    func report(forItem i:Int) -> String {
        return "The calories consumed for \(foods[i].name) is \(getCalories(forItem: i))."
    }
    
    func  totalCalories() -> Double {
        var totalCalories = 0.0
        for i in 0 ..< foods.count {
            totalCalories += getCalories(forItem: i)
        }
        return totalCalories
    }
    
    func combinedReport() -> String {
        var r = ""
        for i in 0 ..< foods.count {
            r += report(forItem: i) + "\n"
        }
        return r + "\nTotal calories consumed \(totalCalories())."
    }
    
    func addNewItem(name:String, calories:Double){
        foods.append(FoodData(itemName: name, caloriesPerServing: calories, noOfServings: 0))
    }
    
    func reset() {
        for i in 0 ..< foods.count {
            foods[i].tally = 0
        }
    }
}
