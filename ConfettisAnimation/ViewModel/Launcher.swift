//
//  Launcher.swift
//  ConfettisAnimation
//
//  Created by Philippe MICHEL on 20/05/2024.
//

import SwiftUI
class Launcher:CAEmitterLayer {
    
    override init() {
        super.init()
    }
    
    override init(layer: Any) {
        super.init(layer: layer)
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    func setup(frame: CGRect) {
        emitterPosition = CGPoint(x: frame.width / 2, y: -10)
        emitterShape = .line
        emitterSize = CGSize(width: frame.width, height: 2)
    }
    
    func lancerConfettis() {
        emitterCells = creerCells()
    }
    
    func creerCells() -> [Confetti] {
        var confettis = [Confetti]()
        for _ in 0...31 {
            confettis.append(Confetti())
        }
        return confettis
    }
}
