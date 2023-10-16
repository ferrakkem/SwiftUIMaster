//
//  ContentView.swift
//  SwiftUIProjects
//
//  Created by Ferrakkem Bhuiyan on 2023-10-14.
//

import SwiftUI

struct SwiftUIAsyncImage: View {
    private let imageURL: String = "https://credo.academy/credo-academy@3x.png"
    var body: some View {
        // MARK: - 1. BASIC
        // AsyncImage(url: URL(string: imageURL))
        
        // MARK: - 2. Scale
        // AsyncImage(url: URL(string: imageURL), scale: 3.0)
        
        // MARK: - 3. Placeholder
        /*
        AsyncImage(url: URL(string: imageURL), scale: 3.0) { image in
            image
                .imageModifier()
        } placeholder: {
            Image(systemName: "photo.circle.fill")
                .iconModifier()
        }
        .padding(40)
        */
        
        // MARK: - 4. Implementing Phase
        /*
        AsyncImage(url: URL(string: imageURL), scale: 3.0) { phase in
            // SUCCESS: - THE IMAGE successfully loaded
            // FAILURE: - The image failed to load with an Error
            // EMPTY: - No image is loaded
            if let image = phase.image {
                image
                    .iconModifier()
            } else if phase.error != nil {
                Image(systemName: "ant.circle.fill").iconModifier()
            } else {
                Image(systemName: "photo.circle.fill").iconModifier()
            }
        }.padding(40)
        */
        // MARK: - 5. Adding Animation and Refactoring the code using SWITCH CASES
        AsyncImage(url: URL(string: imageURL), scale: 3.0, transaction: Transaction(animation: .spring(response: 0.5, dampingFraction: 0.6,blendDuration: 0.25))) { phase in
            switch phase {
            case .success(let image):
                image
                    .imageModifier()
                    .transition(.move(edge: .bottom))
            case .failure(_):
                Image(systemName: "ant.circle.fill").iconModifier()
            case .empty:
                Image(systemName: "photo.circle.fill").iconModifier()
            @unknown default:
                ProgressView()
            }
        }.padding(40)
    }
}

#Preview {
    SwiftUIAsyncImage()
}
// MARK: - Image Extension
extension Image {
    func imageModifier() -> some View {
        self
            .resizable()
            .scaledToFit()
    }
    
    func iconModifier() -> some View {
        self
            .imageModifier()
            .frame(maxWidth: 128)
            .foregroundColor(.cyan)
    }
}
