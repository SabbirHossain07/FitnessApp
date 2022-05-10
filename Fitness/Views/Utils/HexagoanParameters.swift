//
//  HexagoanParameters.swift
//  Fitness
//
//  Created by Sopnil Sohan on 11/5/22.
//

import SwiftUI

struct HexagoanParameters {
    struct Segment {
        let xFactors: (CGFloat, CGFloat, CGFloat)
        let yFactors: (CGFloat, CGFloat, CGFloat)
    }
    
    static let points = [
        Segment(xFactors: (0.6, 0.4, 0.5),
                yFactors: (0.05, 0.05, 0.0)),
        
        Segment(xFactors: (0.08, 0.0, 0.0),
                yFactors: (0.2, 0.35, 0.25)),
        
        Segment(xFactors: (0.0, 0.08, 0.0),
                yFactors: (0.65, 0.8, 0.75)),
        
        Segment(xFactors: (0.4, 0.6, 0.5),
                yFactors: (0.95, 0.95, 1.0)),
        
        Segment(xFactors: (0.92, 1.0, 1.0),
                yFactors: (0.8, 0.65, 0.75)),
        
        Segment(xFactors: (1.0, 0.92, 1.0),
                yFactors: (0.35, 0.2, 0.25))
    ]
}
