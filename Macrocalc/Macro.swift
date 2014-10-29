//
//  macro.swift
//  Macrocalc
//
//  Created by Samuel Doherty on 10/28/14.
//  Copyright (c) 2014 home. All rights reserved.
//

import Foundation
import UIKit


struct Macro {
    let carb = 4
    let pro = 4
    let fat = 9
    
    
    func computeCarbs(totalCals: Double) -> Double {
        var totalCarbCals = totalCals * 0.30
        var totalCarbs = totalCarbCals / Double(self.carb)
        return totalCarbs
    }
    
    
    func computeFats(totalCals: Double) -> Double {
        var totalFatCals = totalCals * 0.30
        var totalFats = totalFatCals / Double(self.fat)
        return totalFats
    }
    
    func computePros(totalCals: Double) -> Double {
        var totalProCals = totalCals * 0.40
        var totalPros = totalProCals / Double(self.carb)
        return totalPros
    }
}
