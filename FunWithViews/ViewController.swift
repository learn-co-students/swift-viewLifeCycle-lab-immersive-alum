//
//  ViewController.swift
//  FunWithViews
//
//  Created by Jim Campagno on 9/17/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var topLeftDie: UIView!
    @IBOutlet weak var topRightDie: UIView!
    @IBOutlet weak var middleLeftDie: UIView!
    @IBOutlet weak var middleDie: UIView!
    @IBOutlet weak var middleRightDie: UIView!
    @IBOutlet weak var bottomLeftDie: UIView!
    @IBOutlet weak var bottomRightDie: UIView!
    @IBOutlet weak var dieRollOne: UIView!
    @IBOutlet weak var dieRollTwo: UIView!
    @IBOutlet weak var dieRollThree: UIView!
    @IBOutlet weak var dieRollFour: UIView!
    @IBOutlet weak var dieRollFive: UIView!
    @IBOutlet weak var dieRollSix: UIView!
    @IBOutlet weak var dieRollOneLabel: UILabel!
    @IBOutlet weak var dieRollTwoLabel: UILabel!
    @IBOutlet weak var dieRollThreeLabel: UILabel!
    @IBOutlet weak var dieRollFourLabel: UILabel!
    @IBOutlet weak var dieRollFiveLabel: UILabel!
    @IBOutlet weak var dieRollSixLabel: UILabel!
    var currentRoll = 0
    override func viewDidLoad() {
        super.viewDidLoad()
        topLeftDie.isHidden = true
        topRightDie.isHidden = true
        middleLeftDie.isHidden = true
        middleDie.isHidden = true
        middleRightDie.isHidden = true
        bottomLeftDie.isHidden = true
        bottomRightDie.isHidden = true
        dieRollOne.isHidden = true
        dieRollOne.backgroundColor = UIColor.red
        dieRollTwo.isHidden = true
        dieRollTwo.backgroundColor = UIColor.orange
        dieRollThree.isHidden = true
        dieRollThree.backgroundColor = UIColor.yellow
        dieRollFour.isHidden = true
        dieRollFour.backgroundColor = UIColor.green
        dieRollFive.isHidden = true
        dieRollFive.backgroundColor = UIColor.blue
        dieRollSix.isHidden = true
        dieRollSix.backgroundColor = UIColor.purple
    }
    
    @IBAction func dieButtonTapped(_ sender: AnyObject) {
        currentRoll = currentRoll + 1

        topLeftDie.isHidden = true
        topRightDie.isHidden = true
        middleLeftDie.isHidden = true
        middleDie.isHidden = true
        middleRightDie.isHidden = true
        bottomLeftDie.isHidden = true
        bottomRightDie.isHidden = true
        let num = randomDiceRoll()
        switch num {
        case 1:
            middleDie.isHidden = false
        case 2:
            topLeftDie.isHidden = false
            bottomRightDie.isHidden = false
        case 3:
            topRightDie.isHidden = false
            middleDie.isHidden = false
            bottomLeftDie.isHidden = false
        case 4:
            topLeftDie.isHidden = false
            topRightDie.isHidden = false
            bottomLeftDie.isHidden = false
            bottomRightDie.isHidden = false
        case 5:
            topLeftDie.isHidden = false
            topRightDie.isHidden = false
            bottomLeftDie.isHidden = false
            bottomRightDie.isHidden = false
            middleDie.isHidden = false
        case 6:
            topLeftDie.isHidden = false
            topRightDie.isHidden = false
            bottomLeftDie.isHidden = false
            bottomRightDie.isHidden = false
            middleLeftDie.isHidden = false
            middleRightDie.isHidden = false
        default:
            break
        }
        switch currentRoll {
        case 1:
            dieRollOne.isHidden = false
            dieRollOneLabel.text = String(num)
            
        case 2:
            dieRollTwo.isHidden = false
            dieRollTwoLabel.text = String(num)
        case 3:
            dieRollThree.isHidden = false
            dieRollThreeLabel.text = String(num)
        case 4:
            dieRollFour.isHidden = false
            dieRollFourLabel.text = String(num)
        case 5:
            dieRollFive.isHidden = false
            dieRollFiveLabel.text = String(num)
        case 6:
            dieRollSix.isHidden = false
            dieRollSixLabel.text = String(num)
        default:
            dieRollOne.isHidden = true
            dieRollTwo.isHidden = true
            dieRollThree.isHidden = true
            dieRollFour.isHidden = true
            dieRollFive.isHidden = true
            dieRollSix.isHidden = true
            topLeftDie.isHidden = true
            topRightDie.isHidden = true
            middleLeftDie.isHidden = true
            middleDie.isHidden = true
            middleRightDie.isHidden = true
            bottomLeftDie.isHidden = true
            bottomRightDie.isHidden = true
            currentRoll = 0
        }
    }
    
    // Returns back a random Int (1, 2, 3, 4, 5, or 6)
    func randomDiceRoll() -> Int {
        return Int(arc4random_uniform(6) + 1)
    }

}
