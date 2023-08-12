//
//  ViewController.swift
//  Dicee-iOS13
//
//  Created by Angela Yu on 11/06/2019.
//  Copyright © 2019 London App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
	// Referencing UI Element
	@IBOutlet weak var diceImageViewLeft: UIImageView!
	@IBOutlet weak var diceImageViewRight: UIImageView!
	
	let diceImages = [ #imageLiteral(resourceName: "DiceOne"), #imageLiteral(resourceName: "DiceTwo"), #imageLiteral(resourceName: "DiceThree"), #imageLiteral(resourceName: "DiceFour"), #imageLiteral(resourceName: "DiceFive"), #imageLiteral(resourceName: "DiceSix") ]
	
	override func viewDidLoad() {
        super.viewDidLoad()
		
//		Same function, the first line is for Xcode 14
//		diceImageViewLeft.image = UIImage(named: "DiceSix")
//		diceImageViewLeft.image = #imageLiteral(resourceName: "DiceSix")
//		diceImageViewRight.image = UIImage(named: "DiceTwo")
//		diceImageViewRight.image = #imageLiteral(resourceName: "DiceTwo")
		
//		Changing Alpha from image
		diceImageViewLeft.alpha = 0
		diceImageViewRight.alpha = 0
    }

	@IBAction func rollButtomPressed(_ sender: UIButton) {
		print("Buttom got tapped.")
		
		diceImageViewLeft.alpha = 1
		diceImageViewRight.alpha = 1
		
		diceImageViewLeft.image = diceImages[Int.random(in: 0...5)]
		diceImageViewRight.image = diceImages[Int.random(in: 0...5)]

	}
	
}

