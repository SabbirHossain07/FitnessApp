//
//  ThumbView.swift
//  Fitness
//
//  Created by Sopnil Sohan on 11/5/22.
//

import SwiftUI


struct ThumbView: View {
    let width: CGFloat
    let spacing: CGFloat
    var body: some View {
        VStack(spacing: spacing) {
            Rectangle()
                .frame(width: width, height: 1)
            Rectangle()
                .frame(width: width, height: 1)
        }
    }
}

struct ThumbView_Previews: PreviewProvider {
    static var previews: some View {
        ThumbView(width: 44, spacing: 20)
    }
}
