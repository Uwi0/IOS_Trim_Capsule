//
//  TrimCapsuleView.swift
//  Trim Capsule
//
//  Created by dwi prasetyo on 29/08/24.
//

import SwiftUI

struct TrimCapsuleView: View {
    
    let width: CGFloat?
    let height: CGFloat?
    let leftColor: Color
    let bgLeftColor: Color
    let rigthColor: Color
    let bgRightColor: Color
    let lineWidht: CGFloat
    let strokeColor: Color
    
    var body: some View {
        HStack(spacing: 0) {
            Rectangle()
                .fill(leftColor)
                .padding()
                .background(bgLeftColor)
            
            Rectangle()
                .fill(rigthColor)
                .padding()
                .background(bgRightColor)
        }
        .clipShape(Capsule())
        .overlay(Capsule()
            .trim(from: 0, to: 0.25)
            .stroke(strokeColor, lineWidth: lineWidht))
        .overlay(Capsule()
            .trim(from: 0.75, to: 1)
            .stroke(strokeColor, lineWidth: lineWidht))
        .frame(width: width, height: height)
    }
}

#Preview {
    ZStack {
        LinearGradient(colors: [.purple ,.blue], startPoint: .topLeading, endPoint: .bottomTrailing)
            .opacity(0.1)
            .ignoresSafeArea()
        
        VStack {
            TrimCapsuleView(
                width: nil,
                height: 50,
                leftColor: .blue,
                bgLeftColor: .blue.opacity(0.7),
                rigthColor: .white,
                bgRightColor: .gray,
                lineWidht: 1,
                strokeColor: .gray
            ).padding()
            
            TrimCapsuleView(
                width: 200,
                height: 50,
                leftColor: .green,
                bgLeftColor: .blue.opacity(0.7),
                rigthColor: .yellow,
                bgRightColor: .red.opacity(0.2),
                lineWidht: 3,
                strokeColor: .purple
            )
        }
    }
}
