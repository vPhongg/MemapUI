//
//  QuickShotButtonView.swift
//  MemapPresentation
//
//  Created by Vu Dinh Phong on 14/03/2026.
//

import SwiftUI

struct QuickShotButtonView: View {
    var body: some View {
        ReusableButtonView(
            symbolName: "camera.fill",
            size: 55,
            foregroundColor: .white,
            foregroundOpacity: 0.99,
            backgroundStyle: .black,
            backgroundOpacity: 0.5,
            didTapButton: {
                print("did Tap QuickShotButtonView")
            }
        )
    }
}

#Preview {
    QuickShotButtonView()
}
