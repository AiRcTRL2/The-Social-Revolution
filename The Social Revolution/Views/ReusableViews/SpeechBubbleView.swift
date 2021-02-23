//
//  SpeechBubbleView.swift
//  The Social Revolution
//
//  Created by Karim Elgendy on 19/02/2021.
//

import SwiftUI

struct SpeechBubbleView: View {
    private var width: CGFloat
    private var height: CGFloat
    private let rotationDegrees: Double
    private let displayText: String
    
    /// Configures a speech bubble view with the specified parameters
    /// - Parameters:
    ///   - width: Width of the speech bubble (if rotated 90/180, this becomes the height)
    ///   - height: Height of the speech bubble (if rotated 90/180, this becomes the width)
    ///   - rotation: The degrees by which you want to rotate the bubble
    init(
        width: CGFloat = 200,
        height: CGFloat = 150,
        rotation: Double = 0,
        displayText: String = "Speech bubble display text"
    ) {
        self.width = width
        self.height = height
        self.rotationDegrees = rotation
        self.displayText = displayText

    }
    
    var body: some View {
        ZStack {
            Text(displayText)
                .lineLimit(nil)
                .foregroundColor(.red)
                .padding()
                .background(
                    SpeechBubble()
                        .rotationEffect(.degrees(rotationDegrees), anchor: .center)
                )
                .padding()
            
        }
        
    }
        
        
}


struct SpeechBubbleView_Previews: PreviewProvider {
    static var previews: some View {
        SpeechBubbleView(width: 150, height: 50, rotation: 180)
    }
}

struct SpeechBubble: Shape {
    func path(in rect: CGRect) -> Path {
        var path = Path()
        
        // top left
        path.move(to: CGPoint(x: rect.minX, y: rect.minY))

        path.addLine(to: CGPoint(x: rect.maxX, y: rect.minY))
        path.addLine(to: CGPoint(x: rect.maxX, y: rect.maxY))
        path.addLine(to: CGPoint(x: rect.maxX/1.1, y: rect.maxY))
        path.addLine(to: CGPoint(x: rect.maxX/1.1, y: rect.maxY+20))
        path.addLine(to: CGPoint(x: rect.maxX/1.15, y: rect.maxY))
        path.addLine(to: CGPoint(x: rect.minX, y: rect.maxY))
        
        return path

    }
}


