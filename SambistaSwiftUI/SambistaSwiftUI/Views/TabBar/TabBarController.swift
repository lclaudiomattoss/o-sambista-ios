//
//  TabBarController.swift
//  SambistaSwiftUI
//
//  Created by Luiz Claudio Mattos da Silva on 07/01/24.
//

import SwiftUI

struct TabBarController: View {
    
    init() {
        // Defina a cor de destaque desejada para a aba selecionada
        UITabBar.appearance().unselectedItemTintColor = UIColor.black
    }
    
    var body: some View {
        TabView {
            // Conteúdo da primeira aba
            NewsView()
                .tabItem {
                    Image(systemName: "newspaper.fill")
                }

            // Conteúdo da segunda aba
            ForumView()
                .tabItem {
                    Image(systemName: "message.fill")
                        .foregroundColor(.black)
                }
            
            // Conteúdo da terceira aba
            Text("Câmera")
                .tabItem {
                    Image(systemName: "camera.on.rectangle.fill")
                        .foregroundColor(.black)
                }
            
            // Conteúdo da quarta aba
            MuseumView()
                .tabItem {
                    Image(systemName: "crown.fill")
                        .foregroundColor(.black)
                }
            
            // Conteúdo da quinta aba
            ProfileView()
                .tabItem {
                    Image(systemName: "person.fill")
                        .foregroundColor(.black)
                }

            // Adicione mais abas conforme necessário
        }
    }
}

struct TabBarController_Previews: PreviewProvider {
    static var previews: some View {
        TabBarController()
    }
}
