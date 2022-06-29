//
//  EditButtonView.swift
//  SwiftfulThinkingBootCamp
//
//  Created by Amby on 29/06/2022.
//

import SwiftUI

struct EditButtonView: View {
    @State private var animals = ["cats", "Dogs", "Goats"]

    var body: some View {
        NavigationView {
            List {
                ForEach(animals, id: \.self) { animal in
                    Text(animal)
                }.onDelete(perform: removeAnimal)
            }
            .navigationBarItems(trailing: EditButton())
            .navigationBarTitle(Text("editButtonView"), displayMode: .inline)
        }
    }

    func removeAnimal(at offsets: IndexSet) {
        animals.remove(atOffsets: offsets)
    }
}

struct EditButtonView_Previews: PreviewProvider {
    static var previews: some View {
        EditButtonView()
    }
}
