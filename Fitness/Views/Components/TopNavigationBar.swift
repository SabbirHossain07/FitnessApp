//
//  TopNavigationBar.swift
//  Fitness
//
//  Created by Sopnil Sohan on 10/5/22.
//

import SwiftUI

struct TopNavigationBar: View {
    @EnvironmentObject var dashboardManager: DashboardManager
    @State var showHeartRateView = false
    
    var body: some View {
        HStack {
            VStack(alignment: .leading) {
                Image(systemName: "rectangle.leadinghalf.inset.filled")
                    .resizable()
                    .frame(width: 20, height: 10)
                Text(dashboardManager.dashboardMenus[dashboardManager.selectedMenuIndex].title)
            }
            .foregroundColor(ColorConstants.textCircleSecendary)
            Spacer()
            
            Button {
                showHeartRateView = true
            } label: {
                FourCirculeView()
            }
        }
        .sheet(isPresented: $showHeartRateView) {
            HeartRateSettingsView()
        }

    }
}

struct FourCirculeView: View {
    @EnvironmentObject var dashboardManager: DashboardManager
    
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 10)
                .fill(Color.clear)
                .invertedRectangleNeomorphify(bottomOffset: -1)
                .clipShape(RoundedRectangle(cornerRadius: 10))
            HStack(spacing: 14) {
                VStack(spacing: 14) {
                    Circle()
                        .fill(.white)
                        .frame(width: 5, height: 5)
                    Circle()
                        .fill(.white)
                        .frame(width: 5, height: 5)
                }
                VStack(spacing: 14) {
                    Circle()
                        .fill(.white)
                        .frame(width: 5, height: 5)
                    Circle()
                        .fill(.white)
                        .frame(width: 5, height: 5)
                }
            }
        }
        .frame(width: 60, height: 60)
    }
}


struct TopNavigationBar_Previews: PreviewProvider {
    static var previews: some View {
        TopNavigationBar()
            .environmentObject(DashboardManager())
    }
}
