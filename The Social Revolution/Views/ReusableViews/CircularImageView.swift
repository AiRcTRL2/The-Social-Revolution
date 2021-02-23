//
//  CircularImageView.swift
//  The Social Revolution
//
//  Created by Karim Elgendy on 19/02/2021.
//

import SwiftUI

/// Frame should be defined on this view with equal width/height
struct CircularImageView: View {
    private let imageName: String
    
    /// Initialises a CircularImageView with a linear gradient border and an image container within
    /// - Parameter imageName: The name of the image to place in the circle
    init(imageName: String = "") {
        self.imageName = imageName
    }
    
    var body: some View {
        ZStack {
            Circle()
                .strokeBorder(
                    LinearGradient(
                        gradient: Gradient(colors: [Color.purple, Color.blue, Color.orange]),
                        startPoint: .topLeading,
                        endPoint: .topTrailing
                    ),
                    lineWidth: 4
                )
                .overlay(
                    Image(imageName)
                        .resizable()
                        .background(Color.clear)
                        .padding(EdgeInsets(top: 30, leading: 30, bottom: 30, trailing: 30))
                )
        }
    }
}

struct CircularImageView_Previews: PreviewProvider {
    static var previews: some View {
        CircularImageView(imageName: "happyRobot")
            .frame(width: 150, height: 150, alignment: .center)
    }
}
