//
//  VerticalSlider.swift
//  Fitness
//
//  Created by Sopnil Sohan on 11/5/22.
//

import SwiftUI

struct VerticalSlider: View {
    @State var progress: CGFloat = -0.1
    let minProgress: CGFloat = 0.07
    let maxProgress: CGFloat = 1.0
    let step: CGFloat = 0.05
    @Binding var bpm: Int
    var body: some View {
        GeometryReader { geomemtry in
            ZStack {
                SliderShape(progress: progress, step: step)
                    .fill(ColorConstants.whiteToDarkGrayLinear)
                    .clipShape(Rectangle())
                    .gesture(DragGesture(minimumDistance: 5)
                                .onChanged { value in
                                    let nextProgress = 1 - (value.location.y / geomemtry.size.height)
                                    updateBPM(nextProgress: nextProgress)
                                }
                    )
                    .onAppear {
                        updateInitialProgress()
                    }
                
                ThumbView(width: 18, spacing: 6)
                    .offset(y: calculateThumbPosition(height: geomemtry.size.height))
                
                Rectangle()
                    .fill(ColorConstants.textCirclePrimary)
                    .frame(width: 2, height: 16)
                    .offset(
                        x: -geomemtry.size.width/2,
                        y: calculateThumbPosition(height: geomemtry.size.height))
                
                Rectangle()
                    .fill(ColorConstants.textCircleSecendary)
                    .frame(width: 2, height: 16)
                    .offset(
                        x: -geomemtry.size.width/2,
                        y: calculateThumbPosition(height: geomemtry.size.height, forProgress: minProgress))
                
                Rectangle()
                    .fill(ColorConstants.selectedColor)
                    .frame(width: 2, height: 16)
                    .offset(
                        x: -geomemtry.size.width/2,
                        y: calculateThumbPosition(height: geomemtry.size.height, forProgress: maxProgress))
            }
        }
    }
    
    public func updateInitialProgress() {
        progress = CGFloat(bpm)/250
    }
    
    func updateBPM(nextProgress: CGFloat) {
        if (nextProgress >= minProgress && nextProgress <= maxProgress) {
            let stepProgress = round(nextProgress / step) * step
            progress = max(minProgress, stepProgress)
            bpm = Int(progress * 250)
        }
    }
    
    func calculateThumbPosition(height: CGFloat) -> CGFloat {
        var position: CGFloat
        let progressFromMiddle = 0.5 - progress
        position = (progressFromMiddle * height) + 15
        return position
    }
    
    func calculateThumbPosition(height: CGFloat, forProgress: CGFloat) -> CGFloat {
        var position: CGFloat
        let progressFromMiddle = 0.5 - forProgress
        position = (progressFromMiddle * height) + 15
        return position
    }
}

