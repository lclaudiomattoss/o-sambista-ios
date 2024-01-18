//
//  AnimalDetailView.swift
//  Africa-Animals-SwiftUI
//
//  Created by hakkı can şengönül on 21.06.2022.
//

import SwiftUI

struct AnimalDetailView: View {
    // MARK: - PROPERTIES
    let animal : Animal
    
    // MARK: - BODY
    var body: some View {
        ScrollView(.vertical, showsIndicators: false) {
            VStack (alignment: .center, spacing: 20){
                //HERO IMAGE
                Image(animal.image)
                    .resizable()
                    .scaledToFit()
                // TITLE
                Text(animal.name.uppercased())
                    .font(.title2)
                    .fontWeight(.heavy)
                    .multilineTextAlignment(.center)
                    .padding(.vertical,8)
                    .foregroundColor(.primary)
                    .background(Color("ColorRedDark").frame(height: 6).offset(y : 24))
                //HEADLINE
                Text(animal.headline)
                    .font(.headline)
                    .multilineTextAlignment(.leading)
                    .foregroundColor(.black)
                    .padding(.horizontal)
                    
                //GALLERY
                Group{
                    HeadingView(headingImage: "photo.on.rectangle.angled", headingText: "Galeria de fotos")
                    InsetGalleryView(animal: animal)
                    
                }.padding(.horizontal)
                //FACTS
                Group{
                    
                }.padding(.horizontal)
                // DESCRIPTION
                Group{
                    
                    HeadingView(headingImage: "info.circle", headingText: "Tudo sobre \(animal.name)")
                    Text(animal.description)
                        .multilineTextAlignment(.leading)
                        .layoutPriority(1)
                    
                    
                }.padding(.horizontal)
                
                //LINK
                
                Group{
                    
                    HeadingView(headingImage: "books.vertical", headingText: "Leia mais")
                    
                    ExtarnalWeblinkView(animal: animal)
                    
                    
                }.padding(.horizontal)
                
                
            }//:VSTACK
            
            
            
        }//:Scroll
        .navigationTitle("Notícia")
        .navigationBarTitleDisplayMode(.inline)
        
    }
}


// MARK: - PREVIEW
struct AnimalDetailView_Previews: PreviewProvider {
    static let animals : [Animal] = Bundle.main.decode("animals.json")
    static var previews: some View {
        NavigationView {
            AnimalDetailView(animal: animals[2])
        }
    }
}
