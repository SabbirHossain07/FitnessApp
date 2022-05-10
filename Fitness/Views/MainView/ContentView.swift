//
//  ContentView.swift
//  Fitness
//
//  Created by Sopnil Sohan on 8/5/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            TopNavigationBar()
                .padding(.top, 60)
                .padding(.leading, 30)
                .padding(.trailing, 30)
            
           DashbordView()
                .padding(.leading, 30)
                .padding(.trailing, 30)
            
            GraphBarView()
                .padding(.leading, 30)
                .padding(.trailing, 30)
            
            Spacer()
            
            TabBarView()
                .frame(height: 70)
        }
        .environmentObject(DashboardManager())
        .background(ColorConstants.backgroundLinear)
        .edgesIgnoringSafeArea(.all)
    }
}

extension View {
    func invertedRectangleNeomorphify(topBlur: CGFloat = 3,
                                      bottomBlur: CGFloat = 6,
                                      cornerRadius: CGFloat = 10,
                                      topOffset: CGFloat = 3,
                                      bottomOffset: CGFloat = -2) -> some View {
        self.modifier(NeomorphicRectangleInverted(topBlur: topBlur, bottomBlur: bottomBlur, cornerRadius: cornerRadius, topOffset: topOffset, bottomOffset: bottomOffset))
    }
    
    func invertedRectangleMiddleNeomorphify() -> some View {
        self.modifier(NeomorphicRectangleInvertedTopBottom())
    }
}



struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
