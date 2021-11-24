//
//  ViewController.swift
//  ShowAnimation
//
//  Created by Никита Рыжкин on 24.11.2021.
//

import Spring

class ViewController: UIViewController {

    @IBOutlet var animatedView: SpringView!
    @IBOutlet var presetLabel: UILabel!
    @IBOutlet var curveLabel: UILabel!
    @IBOutlet var forceLabel: UILabel!
    @IBOutlet var durationLabel: UILabel!
    @IBOutlet var delayLabel: UILabel!
    
    private var animationValue = Animation(preset: "", curve: "", force: 0, duration: 0, delay: 0)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setRandomValues()
        setLabels()
    }

    @IBAction func runAnimationButtonPressed(_ sender: UIButton) {
        setLabels()
        setAnimationValues()
        animatedView.animate()
        setRandomValues()
        sender.setTitle("run \(animationValue.preset)", for: .normal)
    }
    
    private func setLabels() {
        presetLabel.text = "preset: \(animationValue.preset)"
        curveLabel.text = "curve: \(animationValue.curve)"
        forceLabel.text = String(format: "forse: %.2f", animationValue.force)
        durationLabel.text = String(format: "duration: %.2f", animationValue.duration)
        delayLabel.text = String(format: "delay: %2.f", animationValue.delay)
    }
    
    private func setAnimationValues() {
        animatedView.animation = animationValue.preset
        animatedView.curve = animationValue.curve
        animatedView.force = animationValue.force
        animatedView.duration = animationValue.duration
        animatedView.delay = animationValue.delay
    }
    
    private func setRandomValues() {
        animationValue.preset = Spring.AnimationPreset.allCases.randomElement()!.rawValue
        animationValue.curve = Spring.AnimationCurve.allCases.randomElement()!.rawValue
        animationValue.force = Double.random(in: 0.5...2)
        animationValue.duration = Double.random(in: 0.5...2)
        animationValue.delay = Double.random(in: 0...2)
        
    }
    
}

