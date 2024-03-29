//
//  AnimalListItemView.swift
//  Africa-Animals-SwiftUI
//
//  Created by hakkı can şengönül on 21.06.2022.
//

import SwiftUI

struct AnimalListItemView: View {
    // MARK: - PROPERTIES
    let animal : Animal
    
    // MARK: - BODY
    var body: some View {
        HStack(alignment: .center, spacing: 16) {
            Image(animal.image)
                .resizable()
                .scaledToFill()
                .frame(width: 90, height: 90)
                .clipShape(RoundedRectangle(cornerRadius: 12))
            
            VStack(alignment: .leading, spacing: 8) {
                Text(animal.name)
                    .font(.title3)
                    .fontWeight(.heavy)
                    .foregroundColor(Color("ColorRedDark"))
                    .multilineTextAlignment(.leading)
                
                Text(animal.headline)
                    .font(.footnote).multilineTextAlignment(.leading)
                    .lineLimit(2)
                    .padding(.trailing,8)
                    .foregroundColor(Color(.black))
                
            }
        }
    }
}



// MARK: - PREVIEW
struct AnimalListItemView_Previews: PreviewProvider {
    static let animals : [Animal] = Bundle.main.decode("animals.json")
    static var previews: some View {
        AnimalListItemView(animal: animals[3]).previewLayout(.sizeThatFits)
            .padding()
    }
}
