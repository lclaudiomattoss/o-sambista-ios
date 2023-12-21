//
//  LaunchView.swift
//  SambistaSwiftUI
//
//  Created by Luiz Claudio Mattos da Silva on 19/12/23.
//

import SwiftUI
import CoreData

struct LaunchView: View {
    var body: some View {
        VStack {
            Image("01")
                .resizable()
                .scaledToFit()
                .frame(width: 140, height: 140)
        }//: VStack
        .padding()
        .opacity(0.7)
    }
}

struct LaunchView_Previews: PreviewProvider {
    static var previews: some View {
        LaunchView()
    }
}
