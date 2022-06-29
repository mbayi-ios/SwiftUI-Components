//
//  DealingWithText.swift
//  SwiftfulThinkingBootCamp
//
//  Created by Amby on 29/06/2022.
//

import SwiftUI

struct DealingWithText: View {

    @State var password = "1234"
    @State var someText = "initial text"

    var body: some View {
        VStack {
            Text("Hello World")
                .fontWeight(.medium)
            SecureField("Enter a password", text: $password)
                .padding()
            Text("Password Entered is:  \(password)")
                .italic()
            TextField("Enter some text", text: $someText)
                .padding()
                
            Text("\(someText)")
                .font(.largeTitle)
                .underline()
            Text("Change text color and make it bold")
                .foregroundColor(Color.blue)
            Text("use kerning to change space between lines of text")
                .kerning(7)
            Text("Chanign baseline offset")
                .baselineOffset(20)
            Text("Strikethrough")
                .strikethrough()
            Text("This is a multiline tet implemented in swiftUI. The trailing modifier was added to the text. This text also implemtnes multiple modifiers ")
                .background(Color.yellow)
                .multilineTextAlignment(.trailing)
                .lineSpacing(10)


        }
    }
}

struct DealingWithText_Previews: PreviewProvider {
    static var previews: some View {
        DealingWithText()
    }
}
