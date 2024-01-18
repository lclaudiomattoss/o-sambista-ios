//
//  Components.swift
//  SambistaSwiftUI
//
//  Created by Luiz Claudio Mattos da Silva on 07/01/24.
//

import Foundation
import SwiftUI

struct SocalLoginButton: View {
    var image: Image
    var text: Text
    
    var body: some View {
        HStack {
            image
                .padding(.horizontal)
            Spacer()
            text
                .font(.title2)
            Spacer()
        }
        .padding()
        .frame(maxWidth: .infinity)
        .background(Color.white)
        .cornerRadius(50.0)
        .shadow(color: Color.black.opacity(0.08), radius: 60, x: /*@START_MENU_TOKEN@*/0.0/*@END_MENU_TOKEN@*/, y: 16)
    }
}

struct TabbarButton: View {
    public var image: String
    public var selectedTabBar: String
    public var reader: GeometryProxy
    public var xOffSet: CGFloat = 0
    let action: () -> Void
    
    var body: some View {
        Button(action: action) {
            Image(image)
                .resizable()
                .renderingMode(.template)
                .scaledToFit()
                .frame(width: 25, height: 25)
                .foregroundColor(selectedTabBar == image ? Color.red : Color.gray)
                .padding(selectedTabBar == image ? 15 : 0)
                .background(Color.white.opacity(selectedTabBar == image ? 1 : 0)
                .clipShape(Circle()))
                .offset(x: selectedTabBar == image ? (reader.frame(in: .global).minX-reader.frame(in: .global).midX) : 0, y: selectedTabBar == image ? -50 : 0)
        }
    }
}

struct StoryView : View {
    
    var body: some View {
        
        ScrollView([.horizontal], showsIndicators: false) {
            HStack {
                ForEach(getUserStory()) { story in
                    StoryViewRow(model: story)
                        .padding(.trailing ,5)
                }
            }
        }.frame(height: 220).offset(y: -20)
    }
}

struct StoryViewRow: View {
    var model: StoryModel
    var body: some View {
        ZStack(alignment: .top) {
            Image(model.imageName)
                .resizable()
                .frame(width: 110, height: 150)
                .cornerRadius(30)
                
            Text(model.personName)
                .offset(y: 150)
                .padding()
            
        }.frame(height: 220)
    }
}

extension View {
    public func addBorder<S>(_ content: S, width: CGFloat = 1, cornerRadius: CGFloat) -> some View where S : ShapeStyle {
        let roundedRect = RoundedRectangle(cornerRadius: cornerRadius)
        return clipShape(roundedRect)
             .overlay(roundedRect.strokeBorder(content, lineWidth: width))
    }
}

struct StoryModel: Identifiable {
    var id = UUID()
    var imageName : String
    var personName : String
}

func getUserStory() -> [StoryModel] {
    return [StoryModel(imageName: "1", personName: "Tarcízio Zanon"),
            StoryModel(imageName: "2", personName: "Fantasia"),
            StoryModel(imageName: "3", personName: "Fernando Horta"),
            StoryModel(imageName: "4", personName: "Fantasia 2"),
            StoryModel(imageName: "5", personName: "Thamiris Hauch"),]
}
