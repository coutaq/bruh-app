//
//  ViewRouter.swift
//  Bruh
//
//  Created by Michael on 04.05.2020.
//  Copyright © 2020 coutaq. All rights reserved.
//

import Foundation
import Combine
import SwiftUI

class ViewRouter: ObservableObject{
    let objectWillChange = PassthroughSubject<ViewRouter,Never>()
    var currentPage: pages = .ContentView {
        didSet {
            objectWillChange.send(self)
        }
    }
}
