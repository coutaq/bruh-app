//
//  SettingsView.swift
//  Bruh
//
//  Created by Michael on 04.05.2020.
//  Copyright © 2020 coutaq. All rights reserved.
//

import SwiftUI

struct SettingsView: View {
    var body: some View {
        VStack {
            Text("Settings")
                .font(.largeTitle)
            Text("Voice")
                .font(.callout)
            Picker(selection: .constant(0), label: Text("Picker")) {
                Text("Standart").tag(0)
                Text("Misha").tag(1)
                Text("Lesha").tag(2)
            }.pickerStyle(SegmentedPickerStyle())
            Spacer()
        }.padding()
    }
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
    }
}
