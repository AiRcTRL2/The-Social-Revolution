//
//  SwiftUIView.swift
//  The Social Revolution
//
//  Created by Karim Elgendy on 19/02/2021.
//

import SwiftUI

struct Home: View {
    var body: some View {
        ZStack {
            Color.blue.opacity(0.1)
                .ignoresSafeArea()
            VStack {
                // Greeting
                Text("Good afternoon, Karim")
                    .font(.title)
                    .fontWeight(.ultraLight)
                    .kerning(-0.3)
                
                // Therapist avatar
                CircularImageView(imageName: "happyRobot")
                    .frame(width: 150, height: 150, alignment: .center)
                    .onTapGesture {
                        print("Hello world")
                    }
                
                // Discussion button
                Button(action: {
                    print("Button pressed")
                }, label: {
                    RoundedTextViewButtonStyle(text: "Tap me to initiate a discussion")
                })
                .padding(.top, 10)
                .shadow(color: .black, radius: 1.5, x: 1, y: 1.5)
                
                List(1..<3+1) { index in
                    Text("Goal #\(index): Do this thing")
                }
                
                Spacer()
                
            }.padding(.top, 20)
        }
    }
}

struct Home_Previews: PreviewProvider {
    static var previews: some View {
        Home()
    }
}
