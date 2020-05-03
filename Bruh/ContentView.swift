//
//  ContentView.swift
//  Bruh
//
//  Created by Michael on 03.05.2020.
//  Copyright © 2020 coutaq. All rights reserved.
//

import SwiftUI
import SwiftySound
import AVFoundation

struct ContentView: View {
    @State var angle = Angle(degrees: 0.0)
    let bruh = Sound(url: URL(fileURLWithPath: Bundle.main.path(forResource: "bruhsound", ofType: "mp3")!))!
    var body: some View {
        ZStack {
            Color.white.edgesIgnoringSafeArea(.all)
                .onTapGesture {
                    Sound.category = .playback
                   self.bruh.play()
                }
            Image("bruh")
                .resizable()
                .aspectRatio(contentMode: ContentMode.fit)
                .background(Color.white)
                .rotationEffect(self.angle)
                .onTapGesture {
                    Sound.category = .playback
                    self.bruh.play()
            }.gesture(RotationGesture()
                .onChanged({ angle in
                let rotate = Int(angle.degrees)
                
                print(rotate)
                if rotate>0{
                    self.angle = Angle(degrees: 0.0)
                }else if rotate < -90{
                    self.angle = Angle(degrees: -90.0)
                }else if rotate == -90{
                    //self.viewRouter.currentPage = .SettingsView
                }else{
                    self.angle = angle
                    }
            }))
        }
    }
}

struct ContentView_Previews: PreviewProvider {
   
    static var previews: some View {
        ContentView()
    }
}

