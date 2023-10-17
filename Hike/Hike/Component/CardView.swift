//
//  CardView.swift
//  Hike
//
//  Created by Ferrakkem Bhuiyan on 2023-10-16.
//

import SwiftUI

struct CardView: View {
    var body: some View {
        // MARK: - CARD
        ZStack {
            CustomBackgroundView()
            VStack {
                // MARK: - HEADER
                VStack (alignment: .leading){
                    HStack {
                        Text("Hiking")
                            .fontWeight(.black)
                            .font(.system(size: 52))
                            .foregroundStyle(
                                .linearGradient(
                                    colors: [.customGrayLight, .customGrayMedium],
                                    startPoint: .top,
                                    endPoint: .bottom)
                        )
                        Spacer()
                        Button(action: {
                            // MARK: - ACTION
                            print("The button was pressed")
                        }, label: {
                            CustomButtonView()
                        })
                    }
                    Text("Fun and enjoyable outdoor activity for friends and families.")
                        .multilineTextAlignment(.leading)
                        .italic()
                        .foregroundColor(.customGrayMedium)
                }.padding(.horizontal, 30)
                // MARK: - MAIN HEADER
                ZStack {
                    Circle()
                        .fill(
                            LinearGradient(
                                colors:
                                    [Color("ColorIndigoMedium"),
                                     Color("ColorSalmonLight")],
                                startPoint: .topLeading,
                                endPoint: .bottomTrailing
                            )
                        )
                        .frame(width: 256, height: 256)
                    
                    Image("image-1")
                        .resizable()
                    .scaledToFit()
                }
                // MARK: - FOOTER
            }
            //: CARD
            .frame(width: 320, height: 570)
        }
        .padding(40)
    }
}

#Preview {
    CardView()
}
