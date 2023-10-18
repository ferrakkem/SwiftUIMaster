//
//  GradientButtonStyle.swift
//  Hike
//
//  Created by Ferrakkem Bhuiyan on 2023-10-17.
//

import Foundation
import SwiftUI

struct GradientButton: ButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
        configuration
            .label
            .padding(.vertical)
            .padding(.horizontal, 30)
            .background(
                // Conditional statement with nil Coalescing
                // Condition ? A : B
                configuration.isPressed ?
                LinearGradient(
                    colors: [
                        .customGrayMedium,
                        .customGrayLight],
                    startPoint: .top,
                    endPoint: .bottom
                ):
                // A: when user pressed the button
                // B: when the button is not pressed
                LinearGradient(
                    colors: [
                        .customGrayLight,
                        .customGrayMedium],
                    startPoint: .top,
                    endPoint: .bottom
                )
            ).cornerRadius(40)
    }
}

