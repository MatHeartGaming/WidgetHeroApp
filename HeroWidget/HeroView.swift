//
//  HeroView.swift
//  HeroWidget
//
//  Created by Matteo Buompastore on 05/05/23.
//

import SwiftUI

struct HeroView: View {
    
    let hero : SuperHero
    
    var body: some View {
        HStack(alignment: .center) {
            CircularImageView(image: Image(hero.image))
                .frame(width: 100, height: 100)
            
            Spacer()
            VStack {
                Text(hero.name)
                    .font(.title2)
                    .bold()
                Text(hero.realName)
                    .fontWeight(.semibold)
            }
            
            Spacer()
        }
        .contentShape(Rectangle())
        .padding(8)
        .frame(width: UIScreen.main.bounds.width)
        
    }
}

struct HeroView_Previews: PreviewProvider {
    static var previews: some View {
        HeroView(hero: wolverine)
    }
}
