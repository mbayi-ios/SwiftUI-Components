//
//  DealingWithImage.swift
//  SwiftfulThinkingBootCamp
//
//  Created by Amby on 29/06/2022.
//

import SwiftUI

struct DealingWithImage: View {
    var body: some View {

        VStack{
       Image("image-1")
            .resizable()
            .aspectRatio(contentMode: .fit)

        VStack {
            Image("image-2")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width:300, height: 200)
                .clipShape(Circle())
                .overlay(Circle().stroke(Color.blue, lineWidth: 6))
                .shadow(radius: 10)
            Image(uiImage: getImageFromUIImage(image: "image-3"))
                .resizable()
                .frame(width: 200, height: 200)
                .aspectRatio(contentMode: .fit)
            }
        }
    }

    func getImageFromUIImage(image: String) -> UIImage {
        guard let img = UIImage(named: image) else {
            fatalError("unable to load image")
        }
        return img
    }
}

struct DealingWithImage_Previews: PreviewProvider {
    static var previews: some View {
        DealingWithImage()
    }
}
