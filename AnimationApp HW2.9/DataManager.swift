//
//  DataManager.swift
//  AnimationApp HW2.9
//
//  Created by Sergey Yurtaev on 04.12.2021.
//

import Spring

class DataManager {
    
    static let shared = DataManager()
   
    var animations = Spring.AnimationPreset.allCases
    var curves = Spring.AnimationCurve.allCases
}

