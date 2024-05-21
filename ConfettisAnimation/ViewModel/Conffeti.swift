//
//  Conffeti.swift
//  ConfettisAnimation
//
//  Created by Philippe MICHEL on 20/05/2024.
//

import SwiftUI
class Confetti: CAEmitterCell {
    var images = [#imageLiteral(resourceName: "Triangle"), #imageLiteral(resourceName: "Circle"), #imageLiteral(resourceName: "Carre")]
    
    // initialisation du constructeur
    override init() {
        super.init()
        setup()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setup()
    }
    //fonction de paramettre de confetti
    func setup() {
        // affiche les formes aleatoirement à partir du tableau de forme image
        contents = images[Int.random(in: 0..<images.count)].cgImage
        // génére une couleur RGB pour chaque formes
        color = UIColor(red: randomValueColor(), green: randomValueColor(), blue: randomValueColor(), alpha: 1).cgColor
        birthRate = 4
        lifetime = 10
        lifetimeRange = 3
        velocity = 100
        velocityRange = 100
        spin = 4
        spinRange = 4
        scale = 0.25
        scaleRange = 0.7
        emissionLongitude = CGFloat(Double.pi)
        emissionRange = 0.75
    }
    
    // retourne des chiffres aléaloire pour les couleurs RGB
    func randomValueColor() -> CGFloat {
         return CGFloat.random(in: 0...1)
    }
}
