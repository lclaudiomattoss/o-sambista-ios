//
//  NewsView.swift
//  SambistaSwiftUI
//
//  Created by Luiz Claudio Mattos da Silva on 07/01/24.
//

import SwiftUI

struct NewsView: View {
    // MARK: - PROPERTIES
    let animals: [Animal] = Bundle.main.decode("animals.json")
    @State private var isGridViewActive: Bool = false
    let haptics = UIImpactFeedbackGenerator(style: .medium)

    @State private var gridLayout: [GridItem] = [GridItem(.flexible())]
    @State private var gridColumn: Int = 1
    @State private var toolbarIcon: String = "square.grid.2x2"

    // MARK: - BODY
    var body: some View {
        NavigationView {
            VStack {
                ScrollView {
                    StoryView()
                    
                    HStack{
                        Text("Últimas notícias")
                            .font(.title)
                            .fontWeight(.bold)
                            .multilineTextAlignment(.leading)
                            .foregroundColor(Color("ColorRedDark"))
                        Spacer()
                    }
                    
                    CoverImageView()
                        .frame(height: 300)
                        .listRowInsets(EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 0))
                        .cornerRadius(15)

                    ForEach(animals) { animal in
                        NavigationLink(destination: AnimalDetailView(animal: animal)) {
                            AnimalListItemView(animal: animal)
                        }
                    }
                }
                .padding([.top, .leading, .trailing], 16.0)
            }
            .navigationTitle("Home")
            .navigationBarTitleDisplayMode(.large)
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    HStack(alignment: .center, spacing: 16) {
                        Button {
                            isGridViewActive = false
                            haptics.impactOccurred()
                        } label: {
                            Image("04M")
                        }
                    }
                }
            }
        }
        .navigationViewStyle(.stack)
    }
}

struct NewsView_Previews: PreviewProvider {
    static var previews: some View {
        NewsView()
    }
}
