//
//  CustomBackgroundView.swift
//  Hike
//
//  Created by Ferrakkem Bhuiyan on 2023-10-16.
//

import SwiftUI

struct CustomBackgroundView: View {
    var body: some View {
        ZStack {
            // MARK: - 3. DEPTH
            Color.customGreenDark
                .cornerRadius(40)
                .offset(y: 12)
            // MARK: - 2. Light
            Color.customGreenLight
                .cornerRadius(40)
                .offset(y: 3)
                .opacity(0.85)
            // MARK: - 1. SURFACE
            LinearGradient(
                colors: [
                    .customGreenLight,
                    .customGreenDark],
                startPoint: .top,
                endPoint: .bottom
            )
            .cornerRadius(40)
        }
    }
}
#Preview {
    CustomBackgroundView()
        .padding()
}
