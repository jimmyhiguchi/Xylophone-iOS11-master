//
//  ViewController.swift
//  Xylophone
//
//  Created by Angela Yu on 27/01/2016.
//  Copyright © 2016 London App Brewery. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController{
    
    var xylophoneSound: AVAudioPlayer?
    let soundArray = ["note1","note2","note3","note4","note5","note6","note7"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }



    @IBAction func notePressed(_ sender: UIButton) {
        let soundFile: String?
        
        soundFile = soundArray[sender.tag - 1]
        
        playSound(soundFile: soundFile!)
        
    }
    
    func playSound(soundFile: String) {
        
        let path = Bundle.main.path(forResource: soundFile, ofType: "wav")!
        let url = URL(fileURLWithPath: path)
        
        do {
            xylophoneSound = try AVAudioPlayer(contentsOf: url)
            xylophoneSound?.play()
        } catch {
            print(error)
        }
    }
  

}

