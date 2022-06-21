//
//  ViewController.swift
//  TrafficLight
//
//  Created by Алексей on 17.06.2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var redView: UIView!
    @IBOutlet weak var yellowView: UIView!
    @IBOutlet weak var greenView: UIView!
    @IBOutlet weak var startButton: UIButton!
    
    private var lightTurnOff: CGFloat = 0.3
    private var lightTurnOn: CGFloat = 1
    private var tapCount = 1
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        startButton.layer.cornerRadius = 15
        redView.alpha = lightTurnOff
        yellowView.alpha = lightTurnOff
        greenView.alpha = lightTurnOff
        
    }
    
    override func viewDidLayoutSubviews() {
        
        redView.layer.cornerRadius = redView.frame.width / 2
        yellowView.layer.cornerRadius = yellowView.frame.width / 2
        greenView.layer.cornerRadius = greenView.frame.width / 2
    }

    @IBAction func startButtonTap() {
        
        startButton.setTitle("NEXT", for: .normal)
        
        if tapCount % 3 == 1 {
            greenView.alpha = lightTurnOff
            redView.alpha = lightTurnOn
        } else if tapCount % 3 == 2 {
            redView.alpha = lightTurnOff
            yellowView.alpha = lightTurnOn
        } else if tapCount % 3 == 0 {
            yellowView.alpha = lightTurnOff
            greenView.alpha = lightTurnOn
        }
        tapCount += 1
    }
}


