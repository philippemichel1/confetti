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
    // définition de la position de départ
    func setup(frame: CGRect) {
        // position
        emitterPosition = CGPoint(x: frame.width / 2, y: -10)
        emitterShape = .line
        // définition de la taille
        emitterSize = CGSize(width: frame.width, height: 2)
    }
    // lancer confetti
    func throwConfetti() {
        emitterCells = createcells()
    }
    
    // return un tableau de confettis
    func createcells() -> [Confetti] {
        var confettis = [Confetti]()
        for _ in 0...35 {
            confettis.append(Confetti())
        }
        return confettis
    }
}
