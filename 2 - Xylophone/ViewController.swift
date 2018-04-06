//
//  ViewController.swift
//  2 - Xylophone
//
//  Created by Kelvin Tan on 3/19/18.
//  Copyright © 2018 Kelvin Tan. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController, AVAudioPlayerDelegate {
    var player: AVAudioPlayer!
    var selected: String = ""
    let sounds = ["note1","note2","note3","note4","note5","note6","note7"]
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func notePressed(_ sender: UIButton) {
        selected = sounds[sender.tag]
        playSound()
    }
    
    func playSound(){
        let url = Bundle.main.url(forResource: selected, withExtension: "wav")
        do {
            player = try AVAudioPlayer(contentsOf: url!)
        } catch {
            print(error)
        }
        player.play()
    }
    
}

