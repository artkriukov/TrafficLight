//
//  ViewController.swift
//  TrafficLight
//
//  Created by Artem on 10/22/24.
//

import UIKit

class ViewController: UIViewController {
    
    enum Light {
        case red
        case yellow
        case green
    }

    @IBOutlet weak var redLight: UIView!
    @IBOutlet weak var yellowLight: UIView!
    @IBOutlet weak var greenLight: UIView!
    
    var currentLight: Light = .green
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }


    @IBAction func changedLight(_ sender: UIButton) {
        switch currentLight {
        case .green:
            currentLight = .red
            redLight.alpha = 1.0
            yellowLight.alpha = 0.3
            greenLight.alpha = 0.3
        case .red :
            currentLight = .yellow
            yellowLight.alpha = 1.0
            redLight.alpha = 0.3
            greenLight.alpha = 0.3
        case .yellow:
            currentLight = .green
            greenLight.alpha = 1.0
            yellowLight.alpha = 0.3
            redLight.alpha = 0.3
        }
        
        sender.setTitle("Next", for: .normal)
    }
}

