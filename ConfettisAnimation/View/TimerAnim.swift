//
//  TimerAnim.swift
//  ConfettisAnimation
//
//  Created by Philippe MICHEL on 20/05/2024.
//

import SwiftUI

struct TimerAnim: View {
    @State var width: CGFloat =  300
    @State var height:CGFloat = 300
    @State private var initialNumber: Int = 10
    @State private var progressCover:Double = 100
    @State private var timer: Timer?
    @State private var segment:Double = 0
    @Binding var confettiStart:Bool
    
    var body: some View {
        ZStack {
            Circle()
                .stroke(Color.gray.opacity(0.20), lineWidth: 25)
                .shadow(color: .black.opacity(0.1), radius: 10, x: 10, y: 10)
                .frame(width: width, height: height)
                .opacity(initialNumber > 0 ? 1 : 0)
            Circle()
                .trim(from:0.0, to: 1 * progressCover / 100)
                .stroke(Color.purple.opacity(0.70), lineWidth: 25)
                .rotationEffect(.degrees(-90))
                .frame(width: width, height: height)
                .opacity(initialNumber > 0 ? 1 : 0)
            Text("\(initialNumber)")
                .font(.system(size: 150))
                .foregroundColor(.red)
                .bold()
                .opacity(initialNumber > 0 ? 1 : 0)
                .onAppear {
                    segment = Double(100 / initialNumber)
                    startTimer()
                }
        }
    }
    
    // Fonction pour démarrer le timer
    func startTimer() {
        timer = Timer.scheduledTimer(withTimeInterval: 1.0, repeats: true) { _ in
            runningCount()
        }
    }
    
    // Fonction de compte à rebours
    func runningCount() {
        
        if initialNumber > 0 {
            initialNumber -= 1
            progressCover -= segment
        } else {
            timer?.invalidate()
            timer = nil
            confettiStart = true
        }
    }
}

#Preview {
    TimerAnim(confettiStart: .constant(false))
}
