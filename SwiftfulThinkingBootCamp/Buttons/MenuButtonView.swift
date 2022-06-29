//
//  MenuButtonView.swift
//  SwiftfulThinkingBootCamp
//
//  Created by Amby on 29/06/2022.
//

import SwiftUI

struct MenuButtonView: View {
    var body: some View {
        Text("MenuButtons are currently available on MacOs currently")
            .padding()
            .navigationBarTitle("menuButtons", displayMode: .inline)

        /*
         MenuButton("country +" ) {
         Button("USA") {
         print("selected USA")
         }
         .background(Color.accentColor)
         Button("India") {print("selected indea")}
         }
         */
    }
}

struct MenuButtonView_Previews: PreviewProvider {
    static var previews: some View {
        MenuButtonView()
    }
}
