//
//  HeartRateOptionView.swift
//  Fitness
//
//  Created by Sopnil Sohan on 11/5/22.
//

import SwiftUI

struct HeartRateOptionView: View {
    @EnvironmentObject var manager: HeartRateManager
    var body: some View {
        VStack {
            ZStack {
                RoundedRectangle(cornerRadius: 30)
                    .fill(Color.clear)
                    .invertedRectangleNeomorphify(
                        topBlur: 6,
                        bottomBlur: 8,
                        cornerRadius: 40)
                    .frame(width: 170, height: 170)
                    .padding(.top, 16)
                
                VStack {
                    Text("\(manager.menus[manager.lastSelectedMenuIndex].currentValue)")
                        .font(.system(size: 50))
                        .bold()
                        .foregroundColor(.white)
                    Text("bpm")
                        .foregroundColor(ColorConstants.textCircleSecendary)
                }
            }
            
            HStack(spacing: 30) {
                ForEach(manager.menus) { menu in
                    OptionMenuView(menu: menu)
                        .onTapGesture{
                            manager.selectMenu(index: menu.id)
                        }
                }
            }
            .onAppear {
                manager.selectMenu(index: 1)
            }
        }
        
    }
}

struct HeartRateOptionView_Previews: PreviewProvider {
    static var previews: some View {
        HeartRateOptionView()
    }
}
