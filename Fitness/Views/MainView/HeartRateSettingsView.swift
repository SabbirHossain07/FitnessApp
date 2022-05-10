//
//  HeartRateSettingsView.swift
//  Fitness
//
//  Created by Sopnil Sohan on 10/5/22.
//

import SwiftUI

struct HeartRateSettingsView: View {
    
    var body: some View {
        HStack(spacing: 0) {
            InfoView()
            ControlView()
                .frame(width: 100)
        }
        .padding(.top, 50)
        .background(ColorConstants.heartRateBackground)
        .edgesIgnoringSafeArea(.all)
        .environmentObject(HeartRateManager())
    }
}

struct HeartRateSettingsView_Previews: PreviewProvider {
    static var previews: some View {
        HeartRateSettingsView()
    }
}
