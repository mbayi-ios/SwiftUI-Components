//
//  PasteButtonView.swift
//  SwiftfulThinkingBootCamp
//
//  Created by Amby on 29/06/2022.
//

import SwiftUI

struct PasteButtonView: View {
    @State var text = String()

    var body: some View {
        VStack {
            Text("pasteButton controls how you paste in macos but in not available")
                .padding()
        }
        .navigationBarTitle("pasteButton", displayMode: .inline)
    }
}

struct PasteButtonView_Previews: PreviewProvider {
    static var previews: some View {
        PasteButtonView()
    }
}
