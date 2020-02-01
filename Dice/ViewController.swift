//
//  ViewController.swift
//  Dice
//
//  Created by Darren Rambaud on 01/31/2020.
//  Copyright © 2020 Darren Rambaud. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var diceImageLeft: UIImageView!
    @IBOutlet weak var diceImageRight: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func randomizeStatusPostPress(_ sender: Any) {
        diceImageLeft.image = randomize()
        diceImageRight.image = randomize()
    }
    
    
    /// Function will return a random dice image representing an integer number between 1..6
    ///
    /// - Returns A UIImage object
    func randomize() -> UIImage {
        let AVAILABLE_DICE = [#imageLiteral(resourceName: "DiceOne"), #imageLiteral(resourceName: "DiceTwo"), #imageLiteral(resourceName: "DiceThree"), #imageLiteral(resourceName: "DiceFour"), #imageLiteral(resourceName: "DiceFive"), #imageLiteral(resourceName: "DiceSix")]
        return AVAILABLE_DICE[Int.random(in: 0 ..< 6)]
    }
}
