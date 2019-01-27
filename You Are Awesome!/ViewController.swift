//
//  ViewController.swift
//  You Are Awesome!
//
//  Created by Thomas Ronan on 1/13/19.
//  Copyright © 2019 Thomas Ronan. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    @IBOutlet weak var awesomeImageView: UIImageView!
    @IBOutlet weak var messageLabel: UILabel!
    var awesomePlayer = AVAudioPlayer()
    var index = -1
    var imageIndex = -1
    var soundIndex = -1
    let numberOfImages = 10
    let numberOfSounds = 5
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    func nonRepeatingRandom(lastNumber: Int, maxValue: Int) -> Int {
        var newIndex: Int
        repeat {
            newIndex = Int.random(in: 0..<maxValue)
        } while lastNumber == newIndex
        return newIndex
    }
    func playSound(soundName: String){
        //can we load in the file soundname?
        if let sound = NSDataAsset(name: soundName) {
            //check if sound.data is a sound file
            do {
                try awesomePlayer = AVAudioPlayer(data: sound.data)
                awesomePlayer.play()
            } catch {
                //if sound.data isn't a sound file
                print("ERROR: data in \(soundName) couldn't be played as a sound")
            }
        }else {
            //if reading in the NSDataAsset didn't work, tell the user report the error
            print("ERROR: file \(soundName) didn't load")
        }
        
    }
    
    
    @IBAction func showMessagePressed(_ sender: UIButton) {
        
        let messages = ["You Are Awesome!",
                        "When the Genius bar needs help they call you!",
                        "You brighten my day!",
                        "Hey, fabulous!",
                        "You Are Fantastic!!!",
                        "You Are Great!",
                        "You Are Amazing!",
                        "You GOT THIS!"]
        
        //show a message
        index = nonRepeatingRandom(lastNumber: index, maxValue: messages.count)
        messageLabel.text = messages[index]
        
        //show an image
        imageIndex = nonRepeatingRandom(lastNumber: imageIndex, maxValue: numberOfImages)
        awesomeImageView.image = UIImage(named: "image\(imageIndex)")
        
        //get random sound number
        soundIndex = nonRepeatingRandom(lastNumber: soundIndex, maxValue: numberOfSounds)
        
        //play a sound
        let soundName = "sound\(soundIndex)"
        playSound(soundName: soundName)
    }
    
}

