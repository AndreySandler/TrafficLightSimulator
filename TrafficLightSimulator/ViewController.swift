//
//  ViewController.swift
//  TrafficLightSimulator
//
//  Created by Andrey Sandler on 16.09.2022.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var trafficLightRedView: UIView!
    @IBOutlet var trafficLightYellowVIew: UIView!
    @IBOutlet var trafficLightGreenView: UIView!
    @IBOutlet var startButton: UIButton!
    
    var counter = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        trafficLightRedView.layer.cornerRadius = 90
        trafficLightYellowVIew.layer.cornerRadius = 90
        trafficLightGreenView.layer.cornerRadius = 90
        startButton.layer.cornerRadius = 10
    }
    
    @IBAction func pressingStartButton() {
        startButton.setTitle("Next", for: .normal)
        counter += 1
        
        if counter == 1 {
            trafficLightGreenView.alpha = 0.3
            trafficLightRedView.alpha = 1
        } else if counter == 2 {
            trafficLightRedView.alpha = 0.3
            trafficLightYellowVIew.alpha = 1
        } else if counter == 3 {
            trafficLightYellowVIew.alpha = 0.3
            trafficLightGreenView.alpha = 1
            counter = 0
        }
    }
}

