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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        startButton.layer.cornerRadius = 15
        redView.alpha = 0.3
        yellowView.alpha = 0.3
        greenView.alpha = 0.3
        
    }
    
    override func viewDidLayoutSubviews() {
        
        redView.layer.cornerRadius = redView.frame.width / 2
        yellowView.layer.cornerRadius = yellowView.frame.width / 2
        greenView.layer.cornerRadius = greenView.frame.width / 2
    }
    
   private var tapCount = 1
    
    @IBAction func startButtonTap() {
        
        startButton.setTitle("NEXT", for: .normal)
        
        if tapCount % 3 == 1 {
            greenView.alpha = 0.3
            redView.alpha = 1
        } else if tapCount % 3 == 2 {
            redView.alpha = 0.3
            yellowView.alpha = 1
        } else if tapCount % 3 == 0 {
            yellowView.alpha = 0.3
            greenView.alpha = 1
        }
        tapCount += 1
    }
}


