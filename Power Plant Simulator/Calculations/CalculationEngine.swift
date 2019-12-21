//
//  CalculationEngine.swift
//  Power Plant Simulator
//
//  Created by William Choi on 12/21/19.
//  Copyright © 2019 William Choi. All rights reserved.
//

import Foundation

final class CalculationEngine {
    static let engine = CalculationEngine()
    
    func run() {
        DispatchQueue.global(qos: .default).async {
            let condition = Condition(temperature: 80.0, humidity: 80.0, fuelFlowRate: 100.0)
            Plant.main.run(condition: condition)
            
            let notification = Notification(name: .init(rawValue: "calculation"))
            NotificationCenter.default.post(notification)
        }
    }
}
