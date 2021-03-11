//
//  SwiftUIView.swift
//  The Social Revolution
//
//  Created by Karim Elgendy on 19/02/2021.
//

import SwiftUI

private typealias ButtonAndAction = (title: String, action: () -> ())

struct Home: View {
    @State var showPopover = false
    @State var data = [("Process a single \nautomatic thought", {}), ("Initiate a full session", {}), ("Quick log an emotion", {})]
    
    var body: some View {
        ZStack {
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
            
            // Popover overlay & Bottom right button & button menu
            ZStack {
                // popover overlay
                Color.black.opacity(showPopover ? 0.5 : 0)
                    .onTapGesture {
                        withAnimation(.spring()) {
                            showPopover.toggle()
                        }
                    }
                
                
                // Bottom right corner button
                VStack {
                    Spacer()
                    HStack(spacing: 20) {
                        Spacer()

                        CircularButtonView(
                            buttonAction: {
                                withAnimation(.spring()) {
                                    showPopover.toggle()
                                }
                            }
                        )
                        
                    }.padding(EdgeInsets(top: 0, leading: 0, bottom: 50, trailing: 40))
                    
                }
                
                // Button menu
                VStack {
                    Spacer()
                    
                    HStack {
                        Spacer()
                        
                        VStack(alignment: .center, spacing: 20) {
                            ForEach(0..<data.count) { index in
                                FloatingButton(
                                    buttonAction: data[index].1,
                                    title: data[index].0
                                )
                                .padding(.trailing, CGFloat(index)*(80))
                            }
                        }.opacity(showPopover ? 1 : 0)
                    }
                    
                }.padding(EdgeInsets(top: 0, leading: 0, bottom: 60, trailing: 0))
            }
                
            
        }
    }
}

struct Home_Previews: PreviewProvider {
    static var previews: some View {
        Home()
    }
}

struct FloatingButton: View {
    var buttonAction: () -> ()
    var title: String
    
    var body: some View {
        Button(action: {
            buttonAction()
        }, label: {
            Text(title)
                .padding(8)
                .background(Color.white)
                .cornerRadius(6)
                .foregroundColor(.black)
            }
        )
            
    }
}
