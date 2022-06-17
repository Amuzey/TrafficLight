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
        
        redView.layer.cornerRadius = redView.frame.width / 2
        yellowView.layer.cornerRadius = yellowView.frame.width / 2
        greenView.layer.cornerRadius = greenView.frame.width / 2
        startButton.layer.cornerRadius = 15
        
    }

    @IBAction func startButtonTap() {
        startButton.setTitle("NEXT", for: .normal)
       
    }
    
}

