//
//  MuseumView.swift
//  SambistaSwiftUI
//
//  Created by Luiz Claudio Mattos da Silva on 08/01/24.
//

import SwiftUI

struct MuseumView: View {
    // MARK: - PROPERTIES
    let animals : [Animal] = Bundle.main.decode("animals.json")
    @State private var isGridViewActive : Bool = false
    let haptics = UIImpactFeedbackGenerator(style: .medium)
    
    @State private var gridLayout : [GridItem] = [GridItem(.flexible())]
    @State private var gridColumn : Int = 1
    @State private var toolbarIcon : String = "square.grid.2x2"
    // MARK: - FUNCTIONS
    func gridSwitch(){
        
        gridLayout = Array(repeating: .init(.flexible()), count: gridLayout.count % 3 + 1)
        gridColumn = gridLayout.count
        
        //Toolbar Image
        switch gridColumn {
        case 1:
            toolbarIcon = "square.grid.2x2"
        case 2:
            toolbarIcon = "square.grid.3x2"
        case 3:
            toolbarIcon = "rectangle.grid.1x2"
        default:
            toolbarIcon = "square.grid.2x2"
        }
    }
    
    
    
    
    // MARK: - BODY
    var body: some View {
        NavigationView {
            Group{
                    ScrollView(.vertical, showsIndicators: false) {
                        LazyVGrid(columns: gridLayout, alignment: .center, spacing: 10) {
                            ForEach(animals){item in
                                NavigationLink(destination: AnimalDetailView(animal: item)) {
                                    AnimalGridItemView(animal: item)
                                }//:Link
                                
                            }//:Loop
                            
                        }//:Grid
                        .padding(10)
                        
                    }//:Scroll
                //:CONDITION
            }//Group
            
            
            .navigationTitle("Museu do samba")
            .navigationBarTitleDisplayMode(.large)
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    HStack(alignment: .center, spacing: 16) {
                        
                        //Grid
                        Button {
                            isGridViewActive = true
                            haptics.impactOccurred()
                            gridSwitch()
                        } label: {
                            Image(systemName: toolbarIcon)
                                .font(.title2)
                                .foregroundColor(isGridViewActive ? .accentColor : .primary)
                        }
                        
                        
                    }
                }
            }
        }
        .navigationViewStyle(.stack)
    }
}

struct MuseuView_Previews: PreviewProvider {
    static var previews: some View {
        MuseumView()
    }
}
