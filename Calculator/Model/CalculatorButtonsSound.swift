//
//  CalculatorButtonsSound.swift
//  Calculator
//
//  Created by Madwor1d3 on 06/03/2019.
//  Copyright © 2019 London App Brewery. All rights reserved.
//

import Foundation
import AVFoundation

struct CalculatorButtonsSound {
    
    private var audioPlayer: AVAudioPlayer!
    let soundArray = ["click1", "click2"]
    
    
    mutating func playSound(soundFileName: String) {
        
        let soundURL = Bundle.main.url(forResource: soundFileName, withExtension: "wav")
        do {
            audioPlayer = try AVAudioPlayer(contentsOf: soundURL!)
        } catch {
            print(error)
        }
        audioPlayer.play()
    }
}
