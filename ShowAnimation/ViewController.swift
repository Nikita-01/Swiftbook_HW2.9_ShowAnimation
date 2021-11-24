//
//  ViewController.swift
//  ShowAnimation
//
//  Created by Никита Рыжкин on 24.11.2021.
//

import Spring

class ViewController: UIViewController {

    @IBOutlet var animatedView: UIView!
    @IBOutlet var presetLabel: UILabel!
    @IBOutlet var curveLabel: UILabel!
    @IBOutlet var forceLabel: UILabel!
    @IBOutlet var durationLabel: UILabel!
    @IBOutlet var delayLabel: UILabel!
    @IBOutlet var runAnimationButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func runAnimationButtonPressed(_ sender: UIButton) {
    }
    
}

