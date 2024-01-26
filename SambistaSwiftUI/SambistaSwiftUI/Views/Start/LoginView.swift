//
//  LoginView.swift
//  SambistaSwiftUI
//
//  Created by Luiz Claudio Mattos da Silva on 04/01/24.
//

import Foundation
import SwiftUI

struct LoginView: View {
    @State private var email: String = "" // by default it's empty
    var body: some View {
        ZStack {
            Color("BgColor").edgesIgnoringSafeArea(.all)
            VStack {
                HStack{
                    Image("back")
                        .foregroundColor(Color("ColorRedDark"))
                    Spacer()
                    Image("04M")
                }
                
                Spacer()
                
                VStack {
                    Text("Acessar")
                        .font(.largeTitle)
                        .fontWeight(.bold)
                        .padding(.bottom, 30)
                    
                    SocalLoginButton(image: Image(uiImage: #imageLiteral(resourceName: "google")), text: Text("Login com o google").foregroundColor(Color("ColorRedDark")))
                        .padding(.vertical)
                    
                    Text("ou entre com seu cadastro")
                        .foregroundColor(Color.black.opacity(0.4))
                    
                    TextField("Digite seu e-mail", text: $email)
                        .font(.title3)
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(Color.white)
                        .cornerRadius(50.0)
                        .shadow(color: Color.black.opacity(0.08), radius: 60, x: /*@START_MENU_TOKEN@*/0.0/*@END_MENU_TOKEN@*/, y: 16)
                    
                    TextField("Digite sua senha", text: $email)
                        .font(.title3)
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(Color.white)
                        .cornerRadius(50.0)
                        .shadow(color: Color.black.opacity(0.08), radius: 60, x: /*@START_MENU_TOKEN@*/0.0/*@END_MENU_TOKEN@*/, y: 16)
                        .padding(.vertical)
                    
                    NavigationLink(
                        destination: TabBarController().navigationBarHidden(true),
                        label: {
                            Text("Entrar")
                                .font(.title3)
                                .fontWeight(.bold)
                                .foregroundColor(Color.white)
                                .padding()
                                .frame(maxWidth: .infinity)
                                .background(Color("ColorRedDark"))
                                .cornerRadius(50.0)
                                .shadow(color: Color.black.opacity(0.08), radius: 60, x: 0.0, y: 16)
                                .padding(.vertical)
                        })
                        .navigationBarHidden(true)
                    
                    HStack {
                        Text("Esqueceu a senha? ")
                        Text("Clique aqui")
                            .foregroundColor(Color("ColorRedDark"))
                    }
                    
                }
                
                Spacer()
                Divider()
                Spacer()
                Text("Você está completamente seguro.")
                Text("Leia os termos e condições.")
                    .foregroundColor(Color("ColorRedDark"))
                Spacer()
                
            }
            .padding()
        }
    }
}

struct SignInScreenView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
