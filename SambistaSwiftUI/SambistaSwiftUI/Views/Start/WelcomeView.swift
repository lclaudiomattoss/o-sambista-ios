//
//  WelcomeView.swift
//  SambistaSwiftUI
//
//  Created by Luiz Claudio Mattos da Silva on 04/01/24.
//

import Foundation
import SwiftUI

struct WelcomeView: View {
    var body: some View {
        NavigationView {
            ZStack {
                Color("BgColor").edgesIgnoringSafeArea(.all)
                VStack {
                    Spacer()
                    Image("04")
                        .resizable()
                        .padding(.bottom, 4.0)
                        .frame(width: 180, height: 150)
                    Text("Aconselho a você:")
                        .font(.title3)
                        .fontWeight(.black)
                        .foregroundColor(Color("ColorRedDark"))
                        .multilineTextAlignment(.center)
                    Text("Seja O Sambista também!")
                        .font(.title2)
                        .fontWeight(.black)
                        .foregroundColor(Color("Purple"))
                        .multilineTextAlignment(.center)
                    Spacer()
                    PrimaryButton(title: "Cadastre-se")
                    
                    NavigationLink(
                        destination: LoginView().navigationBarHidden(true),
                        label: {
                            Text("Login")
                                .font(.title3)
                                .fontWeight(.bold)
                                .foregroundColor(Color("ColorRedDark"))
                                .padding()
                                .frame(maxWidth: .infinity)
                                .background(Color.white)
                                .cornerRadius(50.0)
                                .shadow(color: Color.black.opacity(0.08), radius: 60, x: 0.0, y: 16)
                                .padding(.vertical)
                        })
                        .navigationBarHidden(true)
                    
                    HStack {
                        Text("Quer conhecer a rede? ")
                        Text("Saiba mais")
                            .foregroundColor(Color("ColorRedDark"))
                    }
                }
                .padding()
            }
        }
    }
}

struct WelcomeScreenView_Previews: PreviewProvider {
    static var previews: some View {
        WelcomeView()
    }
}

struct PrimaryButton: View {
    var title: String
    var body: some View {
        Text(title)
            .font(.title3)
            .fontWeight(.bold)
            .foregroundColor(.white)
            .frame(maxWidth: .infinity)
            .padding()
            .background(Color("ColorRedDark"))
            .cornerRadius(50)
    }
}

