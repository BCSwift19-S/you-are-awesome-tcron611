//
//  ViewController.swift
//  You Are Awesome!
//
//  Created by Thomas Ronan on 1/13/19.
//  Copyright © 2019 Thomas Ronan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var messageLabel: UILabel!
    var index = 0
    // Code below executes when the app's view first loads!
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
        
        messageLabel.text = messages[index]
        if index == messages.count - 1 {
            index = 0
        } else {
            index += 1
        }
//        let message1 = "You Are Awesome!"
//        let message2 = "You Are Great!"
//        let message3 = "You Are Amazing!"
//
//        if messageLabel.text == message1 {
//            messageLabel.text = message2
//        } else if messageLabel.text == message2 {
//            messageLabel.text = message3
//        } else {
//            messageLabel.text = message1
//
//        }
   
    }
    
}

