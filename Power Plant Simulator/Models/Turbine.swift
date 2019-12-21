//
//  Turbine.swift
//  Power Plant Simulator
//
//  Created by William Choi on 12/21/19.
//  Copyright © 2019 William Choi. All rights reserved.
//

import Foundation

struct Turbine {
    var capext: Double
    var name: String
    var efficiency: Double
    var failureChance: Double
    var maintenanceCost: Double
    var maintenancePeriod: Int
}
