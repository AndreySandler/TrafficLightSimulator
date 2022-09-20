//
//  ViewController.swift
//  TrafficLightSimulator
//
//  Created by Andrey Sandler on 16.09.2022.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var lightRedView: UIView!
    @IBOutlet var lightYellowVIew: UIView!
    @IBOutlet var lightGreenView: UIView!
    
    @IBOutlet var startButton: UIButton!
    
    @IBOutlet var scoreLabel: UILabel!
    
    private var lightIsOn: CGFloat = 1
    private var lightIsOff: CGFloat = 0.3
    
    private var counter = 0
    private var scoreCounter = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        startButton.layer.cornerRadius = 10
    }
    
    override func viewWillLayoutSubviews() {
        lightRedView.layer.cornerRadius = lightRedView.frame.size.width / 2
        lightYellowVIew.layer.cornerRadius = lightYellowVIew.frame.size.width / 2
        lightGreenView.layer.cornerRadius = lightGreenView.frame.size.width / 2
    }
    
    @IBAction func pressingStartButton() {
        scoreLabel.text = String(scoreCounter)
        
        counter += 1
        scoreCounter += 1
        
        scoreLabel.isHidden == true ? scoreLabel.isHidden.toggle() : nil
        
        if startButton.currentTitle == "Start" {
            startButton.setTitle("Next", for: .normal)
        }
        
        if counter == 1 {
            lightGreenView.alpha = lightIsOff
            lightRedView.alpha = lightIsOn
            startButton.setTitle("Red", for: .normal)
            startButton.backgroundColor = #colorLiteral(red: 1, green: 0.2332399487, blue: 0.1861645281, alpha: 1)
        } else if counter == 2 {
            lightRedView.alpha = lightIsOff
            lightYellowVIew.alpha = lightIsOn
            startButton.setTitle("Yellow", for: .normal)
            startButton.backgroundColor = #colorLiteral(red: 1, green: 0.8001160026, blue: 0.006338531151, alpha: 1)
        } else {
            lightYellowVIew.alpha = lightIsOff
            lightGreenView.alpha = lightIsOn
            startButton.setTitle("Green", for: .normal)
            startButton.backgroundColor = #colorLiteral(red: 0.2066814005, green: 0.7795598507, blue: 0.349144876, alpha: 1)
            counter = 0
        }
    }
}

