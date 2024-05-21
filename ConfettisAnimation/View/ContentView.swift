//
//  ContentView.swift
//  ConfettisAnimation
//
//  Created by Philippe MICHEL on 20/05/2024.
//

import SwiftUI

struct ContentView: View {
    @State private var showConfetti:Bool = false
    @State private var isRunning:Bool = false
    
    var body: some View {
        ZStack {
            TimerAnim(confettiStart: $showConfetti)
            ConfettiView(show: $showConfetti)
                .edgesIgnoringSafeArea(.all)
        }
        .onChange(of: showConfetti) {
            if showConfetti == true {
                DispatchQueue.main.asyncAfter(deadline: .now() + 10) {
                    showConfetti = false
                    isRunning = true
                }
            }
        }
        .fullScreenCover(isPresented: $isRunning) {
            LastView()
        }
       
    }
}
#Preview {
    ContentView()
}
