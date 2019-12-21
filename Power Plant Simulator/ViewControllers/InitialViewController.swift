//
//  InitialViewController.swift
//  Power Plant Simulator
//
//  Created by William Choi on 12/20/19.
//  Copyright © 2019 William Choi. All rights reserved.
//

import UIKit

final class InitialViewController: UIViewController {
    
    private lazy var runCountLabel: UILabel = {
        let label = UILabel()
        label.text = "0"
        
        return label
    }()
    
    private lazy var runButton: UIButton = {
        let button = UIButton()
        
        button.setTitle("Run", for: .normal)
        
    }()
    
    private var timer = Timer.scheduledTimer(withTimeInterval: 1.0, repeats: true) { (timer) in
        CalculationEngine.engine.run()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        NotificationCenter.default.addObserver(self, selector: #selector(updateUI), name: .init("calculation"), object: nil)
        
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        
        NotificationCenter.default.removeObserver(self)
    }
    
    @objc func updateUI() {
        print("Ran for \(Plant.main.runTime)")
    }
}
