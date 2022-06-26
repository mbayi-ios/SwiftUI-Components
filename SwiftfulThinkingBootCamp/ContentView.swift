//
//  ContentView.swift
//  SwiftfulThinkingBootCamp
//
//  Created by Amby on 25/06/2022.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        Text("Hello, World!")
            .font(.title)
            .fontWeight(.bold)
            .foregroundColor(Color.blue)
            .multilineTextAlignment(.center)
            .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
