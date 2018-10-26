//
//  ViewController.swift
//  Magic 8 Ball
//
//  Created by Ryan Moye on 10/12/18.
//  Copyright © 2018 Ryan Moye. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var ballArray = ["ball1", "ball2", "ball3", "ball4", "ball5"]
    
    
    @IBOutlet weak var ballImage: UIImageView!
    
    @IBAction func askButtonPressed(_ sender: UIButton) {
        randomBallImage()
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    func randomBallImage() {
        let randomBall = Int.random(in: 0 ... 4)
        ballImage.image = UIImage(named: ballArray[randomBall])
    }

    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        randomBallImage()
    }
}

