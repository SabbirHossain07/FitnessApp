//
//  BackButtonView.swift
//  Fitness
//
//  Created by Sopnil Sohan on 11/5/22.
//

import SwiftUI

struct BackButtonView: View {
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 10)
                .fill(ColorConstants.graphUnselected)
                .frame(width: 44, height: 60)
                .shadow(color: Color.white.opacity(0.1), radius: 10, x: -5, y: -5)
                .shadow(color: Color.black.opacity(0.3), radius: 10, x: 5, y: 5)
            
            HStack {
                Circle()
                    .fill(Color.white)
                    .frame(width: 5, height: 5)
                VStack(spacing: 16) {
                    Circle()
                        .fill(Color.white)
                        .frame(width: 5, height: 5)
                    Circle()
                        .fill(Color.white)
                        .frame(width: 5, height: 5)
                }
            }
        }
    }
}

struct BackButtonView_Previews: PreviewProvider {
    static var previews: some View {
        BackButtonView()
    }
}
