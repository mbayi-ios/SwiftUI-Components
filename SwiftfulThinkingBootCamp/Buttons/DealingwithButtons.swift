//
//  DealingwithButtons.swift
//  SwiftfulThinkingBootCamp
//
//  Created by Amby on 29/06/2022.
//

import SwiftUI

struct DealingwithButtons: View {
    var body: some View {
        NavigationView {
            VStack {
                NavigationLink(destination: ButtonView()) {
                    Text("Buttons")
                }
                NavigationLink(destination: EditButtonView()) {
                    Text("EditButtons")
                        .padding()
                }
                NavigationLink(destination: MenuButtonView()) {
                    Text("MenuButtons")
                        .padding()
                }
                NavigationLink(destination: PasteButtonView()) {
                    Text("PasteButtons")
                        .padding()
                }
                NavigationLink(destination: Text("Very long text that should not be displayed in a single line becakuse it is not good design")
                                .padding()
                                .navigationBarTitle(Text("detail"))) {
                    Text("details about the text")
                        .padding()
                }
            }.navigationBarTitle(Text("main View"), displayMode: .inline)
        }
    }
}

struct DealingwithButtons_Previews: PreviewProvider {
    static var previews: some View {
        DealingwithButtons()
    }
}
