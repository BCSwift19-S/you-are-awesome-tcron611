//
//  ViewController.swift
//  You Are Awesome!
//
//  Created by Thomas Ronan on 1/13/19.
//  Copyright © 2019 Thomas Ronan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var awesomeImageView: UIImageView!
    @IBOutlet weak var messageLabel: UILabel!
    var index = -1
    var imageIndex = -1
    let numberOfImages = 10
    
    override func viewDidLoad() {
        super.viewDidLoad()
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
        
        var newIndex: Int //initializes but not declares
        
        repeat {
            newIndex = Int.random(in: 0..<messages.count)
        } while index == newIndex
        
        index = newIndex
        messageLabel.text = messages[index]
        
        repeat {
            newIndex = Int.random(in: 0..<numberOfImages)
        } while imageIndex == newIndex
        
        imageIndex = newIndex
        awesomeImageView.image = UIImage(named: "image\(imageIndex)")
    }
    
}

