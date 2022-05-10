//
//  OptionMenuView.swift
//  Fitness
//
//  Created by Sopnil Sohan on 11/5/22.
//

import SwiftUI


struct OptionMenuView: View {
    let menu: Models.HeartRateMenu
    var body: some View {
        VStack(spacing: 4) {
            Text(menu.name)
                .foregroundColor(menu.selected ? Color.white: ColorConstants.textCircleSecendary)
            Rectangle()
                .fill(ColorConstants.selectedColor)
                .frame(width: 40, height: 2)
                .shadow(color: ColorConstants.selectedColor, radius: 8)
                .opacity(menu.selected ? 1.0 : 0.0)
        }
    }
}

//struct OptionMenuView_Previews: PreviewProvider {
//    static var previews: some View {
//        OptionMenuView(menu: name: "Resting", currentValue: 80)
//    }
//}
