//
//  StartView.swift
//  SambistaSwiftUI
//
//  Created by Luiz Claudio Mattos da Silva on 20/12/23.
//

import Foundation
import SwiftUI
import CoreData

struct StartView: View {
    @State private var isAnimating = false
    @State private var imageOffset: CGSize = .zero
    @State private var buttonOffset: CGFloat = 0
    @State private var showSecondScreen = false
    
    let buttonHeight:CGFloat = 80
    
    var body: some View {
        
        GeometryReader { geometry in
            ZStack {
                
                Circle()
                    .foregroundColor(Color("ColorRed"))
                    .frame(width: isAnimating ? 200 : 0)
                    .position(x: isAnimating ? 50 : -50, y: isAnimating ? 100 : -100)
                    .blur(radius: 60)
                    .opacity(isAnimating ? 0.5 : 0)
                
                Circle()
                    .foregroundColor(Color("ColorRedDark"))
                    .frame(width: isAnimating ? 200 : 0)
                    .position(x: geometry.size.width - 50, y: isAnimating ? geometry.size.height + 50 : geometry.size.height + 50)
                    .blur(radius: 60)
                    .opacity(isAnimating ? 0.5 : 0)
                VStack {
                    Spacer()
                    Image("01")
                        .resizable()
                        .frame(width: 250, height: 180)
                        .shadow(radius: 40)
                        .padding(isAnimating ? 32 : 92)
                        .opacity(isAnimating ? 1 : 0)
                        .offset(x: imageOffset.width, y: imageOffset.height)
                        .gesture(DragGesture()
                            .onChanged({ gesture in
                                withAnimation(.easeOut(duration: 0.5)){
                                    imageOffset = gesture.translation
                                }
                                
                                //print(gesture.translation)
                            })
                                .onEnded({ _ in
                                    withAnimation(.easeOut(duration: 0.5)){
                                        imageOffset = .zero
                                    }
                                })
                        )
                    Spacer()
                    ZStack {
                        Capsule()
                            .fill(Color("ColorRed").opacity(0.2))
                        Capsule()
                            .fill(Color("ColorRed").opacity(0.2))
                            .padding(8)
                        
                        Text("Entrar")
                            .font(.title2)
                            .bold()
                            .foregroundColor(Color("Purple"))
                            .offset(x: 20)
                        
                        HStack {
                            Capsule()
                                .fill(Color("ColorRed"))
                                .frame(width: buttonOffset + buttonHeight)
                            
                            Spacer()
                        }
                        
                        
                        HStack{
                            ZStack {
                                Circle()
                                    .fill(Color("ColorRed"))
                                Circle()
                                    .fill(Color("ColorRed"))
                                    .padding(8)
                                
                                Image(systemName: "chevron.right.2")
                                    .font(.system(size: 24))
                                    .bold()
                                    .foregroundColor(.white)
                            }
                            Spacer()
                        }
                        .offset(x: buttonOffset)
                        .gesture(
                            DragGesture()
                                .onChanged({ gesture in
                                    
                                    if gesture.translation.width >= 0 && buttonOffset <= (geometry.size.width - 60) - buttonHeight {
                                        withAnimation(.easeInOut(duration: 0.25)){
                                            buttonOffset = gesture.translation.width
                                        }
                                    }
                                    
                                })
                                .onEnded({ _ in
                                    
                                    if buttonOffset > (geometry.size.width - 60)/2 {
                                        showSecondScreen = true
                                    } else {
                                        withAnimation(.easeInOut(duration: 0.25)){
                                            buttonOffset = 0
                                        }
                                    }
                                })
                        )
                    }
                    .frame(width: geometry.size.width - 60, height: buttonHeight)
                    .opacity(isAnimating ? 1 : 0)
                    .offset(y: isAnimating ? 0 : 100)
                }
                .onAppear {
                    withAnimation(.easeOut(duration: 3)){
                        isAnimating = true
                    }
                }
            }
            .fullScreenCover(isPresented: $showSecondScreen){
                WelcomeView()
            }
        }
        
    }
}

struct StartView_Previews: PreviewProvider {
    static var previews: some View {
        StartView()
    }
}
