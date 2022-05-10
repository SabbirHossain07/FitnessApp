//
//  TabBarView.swift
//  Fitness
//
//  Created by Sopnil Sohan on 11/5/22.
//

import SwiftUI

struct TabBarView: View {
    var body: some View {
        ZStack {
            TabWaveShape()
                .fill(ColorConstants.topBackground)
                .frame(height: 100)
            
            Circle()
                .fill(ColorConstants.hexagonLinear)
                .frame(width: 200, height: 200)
                .offset(x: -155, y: 40)
                .clipShape(
                    Rectangle()
                        .rotation(Angle.degrees(8))
                        .offset(x: -155, y: 55)
                )
                .opacity(0.3)
            
            Circle()
                .fill(ColorConstants.hexagonLinearInverted)
                .frame(width: 200, height: 200)
                .offset(x: 155, y: 40)
                .clipShape(
                    Rectangle()
                        .rotation(Angle.degrees(82))
                        .offset(x: 155, y: 55)
                )
                .opacity(0.3)
            
            HStack {
                Image(systemName: "eyedropper.halffull")
                Spacer()
                Image(systemName: "books.vertical.fill")
                Spacer()
                Image(systemName: "applelogo")
            }
            .font(.title2)
            .foregroundColor(ColorConstants.circle)
            .padding(.leading, 30)
            .padding(.trailing, 30)
        }
    }
}
struct TabBarView_Previews: PreviewProvider {
    static var previews: some View {
        TabBarView()
    }
}
