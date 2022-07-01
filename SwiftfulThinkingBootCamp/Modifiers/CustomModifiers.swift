//
//  CustomModifiers.swift
//  SwiftfulThinkingBootCamp
//
//  Created by Amby on 30/06/2022.
//

import SwiftUI

struct CustomModifiers: View {
    var body: some View {
        Text("Perfect")
            .modifier(BackgroundStyle(bgColor: .blue ))
    }
}

struct CustomModifiers_Previews: PreviewProvider {
    static var previews: some View {
        CustomModifiers()
    }
}

struct BackgroundStyle: ViewModifier {
    var bgColor: Color

    func body(content: Content) -> some View {
        content
            .frame(width: UIScreen.main.bounds.width * 0.3)
            .foregroundColor(Color.black)
            .padding()
            .background(bgColor)
            .cornerRadius(CGFloat(20))
    }
}
