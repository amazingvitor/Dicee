//
//  ViewController.swift
//  Dicee
//
//  Created by Vitor Hugo on 12/1/19.
//  Copyright © 2019 Vitor Hugo. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    
    // Dice Images Outlets
    @IBOutlet weak var leftDice: UIImageView!
    @IBOutlet weak var rightDice: UIImageView!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        // Dice Images when launch
        leftDice.image = #imageLiteral(resourceName: "DiceFive")
        rightDice.image = #imageLiteral(resourceName: "DiceTwo")
    }
    
    // Roll Button Action
    @IBAction func rollButton(_ sender: Any) {
        
        let imageArray = [ #imageLiteral(resourceName: "DiceOne"), #imageLiteral(resourceName: "DiceTwo"), #imageLiteral(resourceName: "DiceThree"), #imageLiteral(resourceName: "DiceFour"), #imageLiteral(resourceName: "DiceFive"), #imageLiteral(resourceName: "DiceSix") ]
        
        leftDice.image = imageArray[Int.random(in: 1...5)]
        rightDice.image = imageArray[Int.random(in: 1...5)]
    }
    
    
}

