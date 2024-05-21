//
//  LastView.swift
//  ConfettisAnimation
//
//  Created by Philippe MICHEL on 21/05/2024.
//

import SwiftUI

struct LastView: View {
    @Environment(\.openURL) var openURL
    var body: some View {
        VStack {
            Button(action: {
                if let url = URL(string: "https://titastus.com/mes-realisations/") {
                    openURL(url)
                }
            }, label: {
                Image("logo")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 130, height: 130)
            })
            Text("THE END")
            .font(.system(size:(40)))
            .foregroundStyle(.red)
        }
    }
}

#Preview {
    LastView()
}
