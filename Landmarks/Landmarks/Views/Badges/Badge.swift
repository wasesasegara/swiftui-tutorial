//
//  Badge.swift
//  Landmarks
//
//  Created by Bisma S Wasesasegara on 02/03/24.
//

import SwiftUI

struct Badge: View {
    var badgeSymbols: some View {
        ForEach(0..<8) {
            RotatedBadgeSymbol(
                angle: .degrees(Double($0) / 8 * 360)
            )
        }
        .opacity(0.5)
    }
    
    var body: some View {
        ZStack {
            BadgeBackground()
            
            GeometryReader {
                badgeSymbols
                    .scaleEffect(1 / 4, anchor: .top)
                    .position(
                        x: $0.size.width / 2,
                        y: 3 / 4 * $0.size.height
                    )
            }
        }
        .scaledToFit()
    }
}

struct Badge_Previews: PreviewProvider {
    static var previews: some View {
        Badge()
    }
}
