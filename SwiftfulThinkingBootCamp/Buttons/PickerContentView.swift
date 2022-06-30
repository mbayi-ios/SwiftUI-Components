//
//  PickerContentView.swift
//  SwiftfulThinkingBootCamp
//
//  Created by Amby on 30/06/2022.
//

import SwiftUI

struct PickerContentView: View {
    @State var choice = 0
    @State var showText = false
    @State var transmitMode = ["bike", "car", "bus"]
    @State var sliderVal: Float = 0
    @State var stepVal = 0
    @State var gameTime = Date()

    var body: some View {
        Form {
            Section{
                Picker("Transmit Modes", selection: $choice) {
                    ForEach (0 ..< transmitMode.count) { index in
                        Text("\(self.transmitMode[index])")
                    }
                }.pickerStyle(SegmentedPickerStyle())
                Text("Current choice: \(transmitMode[choice])")
            }
            Section{
                Toggle(isOn: $showText) {
                    Text("show text")
                }
                if showText {
                    Text("the text is toggle is on")
                }
            }
            Section {
                Slider(value: $sliderVal, in: 0...10, step: 0.001)
                Text("Slider current value is \(sliderVal, specifier: "%.1f")")
            }
            Section {
                Stepper("Stepper", value: $stepVal, in: 0...5)
                Text("Steppper cuurent value \(stepVal)")
            }
            Section {
                DatePicker("Please select a date", selection: $gameTime)
            }
            Section {
                DatePicker("Please select a date", selection: $gameTime, in: Date()...)
            }
        }
    }
}

struct PickerContentView_Previews: PreviewProvider {
    static var previews: some View {
        PickerContentView()
    }
}
