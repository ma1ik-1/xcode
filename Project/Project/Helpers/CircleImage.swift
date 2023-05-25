//
//  CircleImage.swift
//  Project
//
//  Created by Malik on 25/05/2023.
//

import SwiftUI

struct CircleImage: View {
    var image: Image
    
    var body: some View {
        image
            .resizable()
            .clipShape(Rectangle())
            .frame(width: 300, height: 300)
            .overlay {
                Rectangle().stroke(.white, lineWidth: 4)
                
            }
            .shadow(radius: 7)
    }
}

struct CircleImage_Previews: PreviewProvider {
    static var previews: some View {
        CircleImage(image: Image("spiderman"))
    }
}
