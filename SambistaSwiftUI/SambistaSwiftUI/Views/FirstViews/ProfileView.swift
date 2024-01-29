//
//  ProfileView.swift
//  SambistaSwiftUI
//
//  Created by Luiz Claudio Mattos da Silva on 29/01/24.
//

import SwiftUI

struct ProfileView: View {
    var body: some View {
        ZStack{
            VStack{
                Image("cover-buffalo")
                    .resizable()
                    .scaledToFit()
                    .ignoresSafeArea(.all)
                Spacer()
                Spacer()
                Spacer()
            }
            VStack{
                Spacer()
                Spacer()
                Image("3")
                    .resizable()
                    .frame(width: 130, height: 130)
                    .clipShape(Circle())
                Text("Luiz Claudio")
                    .font(.largeTitle)
                    .fontWeight(.heavy)
                    .foregroundColor(Color.black)
                Spacer()
                Spacer()
                Spacer()
                Spacer()
                Spacer()
            }
        }
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}
