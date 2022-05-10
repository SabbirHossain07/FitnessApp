//
//  HexagoanRounded.swift
//  Fitness
//
//  Created by Sopnil Sohan on 11/5/22.
//

import SwiftUI

struct HexagoanRounded: Shape {
    func path(in rect: CGRect) -> Path {
        var path = Path()
        
        let width = rect.width
        let height = rect.height
        
        path.move(to: CGPoint(
                    x: width * HexagoanParameters.points[0].xFactors.0,
                    y: height * HexagoanParameters.points[0].yFactors.0))
        
        HexagoanParameters.points.forEach {
            path.addLine(to: CGPoint(
                            x: width * $0.xFactors.0,
                            y: height * $0.yFactors.0))
            
            path.addQuadCurve(to: CGPoint(
                                x: width * $0.xFactors.1,
                                y: height * $0.yFactors.1),
                              control: CGPoint(
                                x: width * $0.xFactors.2,
                                y: height * $0.yFactors.2))
        }
        
        return path
    }
}
