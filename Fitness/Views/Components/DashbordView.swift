//
//  DashbordView.swift
//  Fitness
//
//  Created by Sopnil Sohan on 10/5/22.
//

import SwiftUI

struct DashbordView: View {
    @EnvironmentObject var dashboardManager: DashboardManager
    
    var body: some View {
        ZStack {
            HexagoanRounded()
                .fill(ColorConstants.hexagonLinear)
                .frame(height: 340)
            
            Circle()
                .fill(ColorConstants.circle)
                .frame(width: 180, height: 180)
                .shadow(color: Color.white.opacity(0.15), radius: 20, x: -10, y: -10)
                .shadow(color: Color.black.opacity(0.4), radius: 20, x: 10, y: 10)
            VStack {
                Text(dashboardManager.dashboardMenus[dashboardManager.selectedMenuIndex].currentValue)
                    .font(.title)
                    .foregroundColor(ColorConstants.textCirclePrimary)
                Text(dashboardManager.dashboardMenus[dashboardManager.selectedMenuIndex].unit)
                    .foregroundColor(ColorConstants.textCircleSecendary)
            }
            HStack(spacing: 30) {
                Image(systemName: "ellipsis")
                    .rotationEffect(Angle.degrees(90))
                    .fixedSize()
                    .frame(width: 20, height: 60)
                HStack(spacing: 140) {
                    VStack(spacing: 140) {
                        Image(systemName: dashboardManager.dashboardMenus[0].name)
                            .font(.system(size: 30))
                            .foregroundColor(dashboardManager.selectedMenuIndex == 0 ? ColorConstants.selectedColor : ColorConstants.unselectedBackground)
                            .onTapGesture {
                                dashboardManager.selectMenu(index: 0)
                            }
                            
                        Image(systemName: dashboardManager.dashboardMenus[1].name)
                            .font(.system(size: 30))
                            .foregroundColor(dashboardManager.selectedMenuIndex == 1 ? ColorConstants.selectedColor : ColorConstants.unselectedBackground)
                            .onTapGesture {
                                dashboardManager.selectMenu(index: 1)
                            }
                    }
                    VStack(spacing: 140) {
                        Image(systemName: dashboardManager.dashboardMenus[2].name)
                            .font(.system(size: 30))
                            .foregroundColor(dashboardManager.selectedMenuIndex == 2 ? ColorConstants.selectedColor : ColorConstants.unselectedBackground)
                            .onTapGesture {
                                dashboardManager.selectMenu(index: 2)
                            }
                        Image(systemName: dashboardManager.dashboardMenus[3].name)
                            .font(.system(size: 30))
                            .foregroundColor(dashboardManager.selectedMenuIndex == 3 ? ColorConstants.selectedColor : ColorConstants.unselectedBackground)
                            .onTapGesture {
                                dashboardManager.selectMenu(index: 3)
                            }
                    }
                }
                Text("Analyze")
                    .rotationEffect(Angle.degrees(-90))
                    .fixedSize()
                    .frame(width: 20, height: 60)
            }
            .foregroundColor(ColorConstants.unselectedBackground)
        }
    }
}


struct DashbordView_Previews: PreviewProvider {
    static var previews: some View {
        DashbordView()
            .environmentObject(DashboardManager())
    }
}
