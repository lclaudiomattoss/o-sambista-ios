//
//  TabBarController.swift
//  SambistaSwiftUI
//
//  Created by Luiz Claudio Mattos da Silva on 07/01/24.
//

import SwiftUI

struct TabBarController : View {
    let tabList: [String] = ["home", "heart", "", "dumbbell", "camera"]
    @State private var selectedTabBar = "home"
    @State public var xOffSet: CGFloat = 0
    init() { UITabBar.appearance().isHidden = true }
    
    var body: some View {
        ZStack (alignment: Alignment(horizontal: .center,
                                     vertical: .bottom)) {
            TabView(selection: $selectedTabBar) {
                if selectedTabBar == tabList[0] {
                    NewsView()
                } else if selectedTabBar == tabList[1] {
                    ForumView()
                } else if selectedTabBar == tabList[2] {
                    Color.orange.ignoresSafeArea()
                } else if selectedTabBar == tabList[3] {
                    MuseumView()
                } else {
                    Color.green.ignoresSafeArea()
                }
            }
            
            HStack() {
                ForEach(tabList,id: \.self) { image in
                    GeometryReader { reader in
                        TabbarButton(image: image, selectedTabBar:
                        selectedTabBar, reader: reader) {
                            withAnimation(Animation.linear(duration: 0.3)) {
                                selectedTabBar = image
                                xOffSet = reader.frame(in: .global).minX
                            }
                        }
                        .onAppear(perform: {
                            if image == tabList.first {
                                xOffSet = reader.frame(in: .global).minX
                            }
                        })
                    }.frame(width: 30, height: 30)
                    if image != tabList.last { Spacer(minLength: 0) }
                }
            }
            .padding(.horizontal, 25).padding(.vertical)
            .background(Color.white.clipShape(CustomShape(xOffSet: xOffSet)).cornerRadius(10))
            .padding(.horizontal)
        }
    }
}


struct TabBarController_Previews: PreviewProvider {
    static var previews: some View {
        TabBarController()
    }
}
