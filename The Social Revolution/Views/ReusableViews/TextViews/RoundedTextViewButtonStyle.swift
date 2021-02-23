//
//  RoundedTextViewButtonStyle.swift
//  The Social Revolution
//
//  Created by Karim Elgendy on 21/02/2021.
//

import SwiftUI

struct RoundedTextViewButtonStyle: View {
    private let text: String
    private let backgroundColor: Color
    private let textColor: Color
    
    init(text: String, backgroundColor: Color = .blue, textColor: Color = .white) {
        self.text = text
        self.backgroundColor = backgroundColor
        self.textColor = textColor
    }
    
    var body: some View {
        Text(text)
            .font(.subheadline)
            .fontWeight(.light)
            .kerning(-0.4)
            .foregroundColor(textColor)
            .padding(EdgeInsets(top: 10, leading: 20, bottom: 10, trailing: 20))
            .background(backgroundColor)
            .cornerRadius(12)
    }
}

struct RoundedTextViewButtonStyle_Previews: PreviewProvider {
    static var previews: some View {
        RoundedTextViewButtonStyle(text: "")
    }
}
