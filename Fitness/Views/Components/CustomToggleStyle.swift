//
//  CustomToggleStyle.swift
//  Fitness
//
//  Created by Sopnil Sohan on 11/5/22.
//

import SwiftUI

struct CustomToggleStyle: ToggleStyle {
    func makeBody(configuration: Configuration) -> some View {
        return
            HStack {
                ZStack {
                    RoundedRectangle(cornerRadius: 20)
                        .fill(Color.clear)
                        .frame(width: 60, height: 40)
                        .invertedRectangleMiddleNeomorphify()
                    
                    Group {
                        Circle()
                            .fill(configuration.isOn ? ColorConstants.selectedColor : ColorConstants.toggleUnselected)
                            .frame(width: 25, height: 25)
                        ThumbView(width: 9, spacing: 4)
                            .foregroundColor(ColorConstants.heartRateBackground)
                    }
                    .offset(x: configuration.isOn ? 13 : -13)
                    
                }
                .padding(.trailing, 10)
                
                configuration.label
            }
            .onTapGesture {
                withAnimation {
                    configuration.isOn.toggle()
                }
            }
    }
}
