//
//  MotherView.swift
//  Bruh
//
//  Created by Michael on 04.05.2020.
//  Copyright © 2020 coutaq. All rights reserved.
//

import SwiftUI
public enum pages {
    case ContentView
    case SettingsView
}

struct MotherView: View {
    //@ObservedObject var viewRouter: ViewRouter
    @State var page:pages = .ContentView
       
    var body: some View {
        VStack {
            containedView()
        }
    }
    func containedView() -> AnyView {
       
        switch(page) {
        case .ContentView: return AnyView(ContentView())
           case .SettingsView: return AnyView(SettingsView())
        }
    }
}

struct MotherView_Previews: PreviewProvider {
    static var previews: some View {
        MotherView()
    }
}
