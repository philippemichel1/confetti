//
//  ConfettiView.swift
//  ConfettisAnimation
//
//  Created by Philippe MICHEL on 20/05/2024.
//

import SwiftUI

// utilise comme passerelle pour des element UIKIT
struct ConfettiView: UIViewRepresentable {
    @Binding var show: Bool
    
    func makeUIView(context: Context) -> UIView {
        let view = UIView(frame: .zero)
        return view
    }
    
    func updateUIView(_ uiView: UIView, context: Context) {
        if show {
            let lanceur = Launcher()
            lanceur.setup(frame: uiView.frame)
            uiView.layer.addSublayer(lanceur)
            lanceur.throwConfetti()
        } else {
            uiView.layer.sublayers?.removeAll(where: { $0 is Launcher })
        }
    }
}

#Preview {
    ConfettiView(show: .constant(true))
}
