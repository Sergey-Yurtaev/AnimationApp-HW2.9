//
//  Animation.swift
//  AnimationApp HW2.9
//
//  Created by Sergey Yurtaev on 04.12.2021.
//
import CoreGraphics  // for CGFloat

struct Animation {
    
    let animationName: String
    let curveName: String
    let forse: CGFloat
    let duration: CGFloat
    let delay: CGFloat
    
    var descriptionAnimation: String {
    """
    Animation - \(animationName)
    Curve - \(curveName)
    Forse - \(String(format: "%.2f", forse))
    Duration - \(String(format: "%.2f", duration))
    Delay - \(String(format: "%.2f", delay))
    """
    }
}

extension Animation {
    static func getAnimationInfo() -> Animation {
        return Animation(
            animationName: DataManager.shared.animations.randomElement()?.rawValue ?? "slideLeft",
            curveName: DataManager.shared.curves.randomElement()?.rawValue ?? "easeIn",
            forse: CGFloat.random(in: 1...3),
            duration: CGFloat.random(in: 1...3),
            delay: CGFloat.random(in: 0.1...1)
        )
    }
}
