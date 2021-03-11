//
//  CircularButtonView.swift
//  The Social Revolution
//
//  Created by Karim Elgendy on 27/02/2021.
//

import SwiftUI

struct CircularButtonView: View {
    var buttonAction: () -> ()
    var width: CGFloat = 60
    var height: CGFloat = 60
    var fontSize: Double = 32.5
    var buttonColor: Color = .blue
    var textColor: Color = .white
    
    var body: some View {
        Button(action: {
            buttonAction()
        }, label: {
            Text("+")
                .font(.system(size: 32.5, weight: .ultraLight, design: .monospaced))
                .foregroundColor(textColor)
                .frame(minWidth: width, idealWidth: width, maxWidth: width, minHeight: height, idealHeight: height, maxHeight: height, alignment: .center)
                .background(buttonColor)
                .cornerRadius(width/2)

        })
    }
}

struct CircularButtonView_Previews: PreviewProvider {
    static var previews: some View {
        CircularButtonView(buttonAction: {})
    }
}
