//
//  Plant.swift
//  Power Plant Simulator
//
//  Created by William Choi on 12/21/19.
//  Copyright © 2019 William Choi. All rights reserved.
//

import Foundation

final class Plant {
    static let main = Plant()
    private var turbine: Turbine
    var runTime: Int
    
    init() {
        turbine = Turbine(capext: 100, name: "1A", efficiency: 0.3, failureChance: 0.001, maintenanceCost: 10, maintenancePeriod: 600)
        runTime = 0
    }
    
    func run(condition: Condition) {
        runTime += 1
    }
    
}
