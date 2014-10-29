//
//  goal.swift
//  Macrocalc
//
//  Created by Samuel Doherty on 10/28/14.
//  Copyright (c) 2014 home. All rights reserved.
//

import Foundation

class Goal {
    var activityLevel = ""
    var totalPounds: Double = 0
    
    func loseWeight() -> Double {
        var activity = 0
        switch self.activityLevel {
            case "low":
                activity = 12
            case "med":
                activity = 13
            case "high":
                activity = 14
            default:
                activity = 12
        }
        
        var totalCals = (Double(totalPounds) * Double(activity) ) * 0.8
        return totalCals
    }
    
    
    func gainWeigth() -> Double {
        var activity = 0
        switch self.activityLevel {
        case "low":
            activity = 12
        case "med":
            activity = 13
        case "high":
            activity = 14
        default:
            activity = 12
        }
        
        var totalCals = (Double(totalPounds) * Double(activity) ) * 1.2
        return totalCals
    }
    
    
    
    
}
