//
//  ControlView.swift
//  Fitness
//
//  Created by Sopnil Sohan on 11/5/22.
//

import SwiftUI

struct ControlView: View {
    //@Binding var heartRate: Int
    @EnvironmentObject var manager: HeartRateManager
    var body: some View {
        VStack {
            ZStack {
                Circle()
                    .fill(ColorConstants.hexagonLinearInverted)
                    .frame(width: 50, height: 50)
                Text("i")
                    .font(.title)
                    .bold()
                    .foregroundColor(.white)
            }
            
            VerticalSlider(bpm: $manager.menus[manager.lastSelectedMenuIndex].currentValue)
        }
    }
}

struct ControlView_Previews: PreviewProvider {
    static var previews: some View {
        ControlView()
    }
}
