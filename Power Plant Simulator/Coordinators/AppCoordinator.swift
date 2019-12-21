//
//  AppCoordinator.swift
//  Power Plant Simulator
//
//  Created by William Choi on 12/20/19.
//  Copyright © 2019 William Choi. All rights reserved.
//

import UIKit

final class AppCoordinator {
    
    var rootController: UINavigationController
    let initialViewController: UIViewController
    let window: UIWindow
    
    init(with window: UIWindow) {
        rootController = UINavigationController()
        self.window = window
        
        initialViewController = InitialViewController()
        
        window.rootViewController = initialViewController
        window.makeKeyAndVisible()

    }
}

extension AppCoordinator: Coordinator {
    
    func start() {
        
    }
    
}
