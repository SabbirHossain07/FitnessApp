//
//  NeomorphicRectangleInvertedTopBottom.swift
//  Fitness
//
//  Created by Sopnil Sohan on 11/5/22.
//

import SwiftUI

struct NeomorphicRectangleInvertedTopBottom: ViewModifier {
    func body(content: Content) -> some View {
        content
            .overlay(
                RoundedRectangle(cornerRadius: 20)
                    .stroke(Color.black, lineWidth: 2)
                    .blur(radius: 4)
                    .offset(x: 0, y: 3)
                    .mask(RoundedRectangle(cornerRadius: 20))
            )
            .overlay(
                RoundedRectangle(cornerRadius: 20)
                    .stroke(ColorConstants.whiteClearWithStopTopMiddleToBottomMiddleLinear, lineWidth: 2)
                    .blur(radius: 4)
                    .offset(x: 0, y: -3)
                    .mask(RoundedRectangle(cornerRadius: 20))
            )
    }
}
