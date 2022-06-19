//
//  ViewController.swift
//  AnimationApp HW2.9
//
//  Created by Sergey Yurtaev on 03.12.2021.
//

import Spring

class AnimationViewController: UIViewController {
    
    // MARK: - IB Outlets
    @IBOutlet var descriptionAnimationLabel: UILabel!
    @IBOutlet var animationView: SpringView!
    @IBOutlet var buttonLabel: UIButton!
    
    // MARK: - Private properties
    var animation = Animation.getAnimationInfo()
    
    // MARK: - IB Actions
    @IBAction func animationButton() {
        descriptionAnimationLabel.text = animation.descriptionAnimation
        
        animationView.animation = animation.animationName
        animationView.curve = animation.curveName
        animationView.duration = animation.duration
        animationView.delay = animation.delay
        animationView.force = animation.forse
        animationView.animate()
        
        animation = Animation.getAnimationInfo()
        buttonLabel.setTitle("Run \(animation.animationName)", for: .normal)
    }
    
    deinit {
        print("AnimationViewController has been dealocated")
    }
}
