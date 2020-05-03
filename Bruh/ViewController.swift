//
//  ViewController.swift
//  Bruh
//
//  Created by Michael on 03.05.2020.
//  Copyright © 2020 coutaq. All rights reserved.
//

import UIKit

class ViewController: UIViewController{
    @IBAction func handlePan(_ recognizer: UIPanGestureRecognizer){
        guard let recognizerView = recognizer.view else{
            return
        }
        recognizer.maximumNumberOfTouches = 3
        let translation = recognizer.translation(in: view)
        recognizerView.center.x += translation.x
        recognizerView.center.y += translation.y
        recognizer.setTranslation(.zero, in: view)
    }
}
