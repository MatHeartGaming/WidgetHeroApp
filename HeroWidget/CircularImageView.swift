//
//  CircularImageView.swift
//  HeroWidget
//
//  Created by Matteo Buompastore on 05/05/23.
//

import SwiftUI

struct CircularImageView: View {
    
    let image : Image
    
    var body: some View {
        image
            .resizable()
            .aspectRatio(contentMode: .fit)
            .clipShape(Circle())
            .overlay(Circle().stroke(Color.purple, lineWidth: 3))
            .shadow(radius: 15)
            .padding(8)
    }
}

struct CircularImageView_Previews: PreviewProvider {
    static var previews: some View {
        CircularImageView(image: Image("batman"))
    }
}
