//
//  ViewController.swift
//  FunWithViews
//
//  Created by Jim Campagno on 9/17/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

 // top die
    @IBOutlet weak var viewOne: UILabel!
    @IBOutlet weak var viewTwo: UILabel!
    @IBOutlet weak var viewThree: UILabel!
    @IBOutlet weak var viewFour: UILabel!
    @IBOutlet weak var viewFive: UILabel!
    @IBOutlet weak var viewSix: UILabel!
    @IBOutlet weak var ViewSev: UILabel!
    @IBOutlet weak var viewEight: UILabel!
    @IBOutlet weak var viewNine: UILabel!
    
  // roll results
    @IBOutlet weak var rollOne: UILabel!
    @IBOutlet weak var rollTwo: UILabel!
    @IBOutlet weak var rollThree: UILabel!
    @IBOutlet weak var rollFour: UILabel!
    @IBOutlet weak var rollFive: UILabel!
    @IBOutlet weak var rollSix: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func dieButtonTapped(_ sender: AnyObject) {
        arrangeDie(roll: randomDiceRoll())
    }
    
    
    func arrangeDie (roll: Int) {
        
        switch roll {
        case 1:
            viewFive.isHidden = false
        case 2:
            viewOne.isHidden = false
            viewNine.isHidden = false
        case 3:
            viewOne.isHidden = false
            viewFive.isHidden = false
            viewNine.isHidden = false
        case 4:
            viewOne.isHidden = false
            viewThree.isHidden = false
            ViewSev.isHidden = false
            viewNine.isHidden = false
        case 5:
            viewOne.isHidden = false
            viewThree.isHidden = false
            viewFive.isHidden = false
            ViewSev.isHidden = false
            viewNine.isHidden = false
        case 6:
            viewOne.isHidden = false
            viewThree.isHidden = false
            viewFour.isHidden = false
            viewSix.isHidden = false
            ViewSev.isHidden = false
            viewNine.isHidden = false
        default:
            viewOne.isHidden = true
            viewTwo.isHidden = true
            viewThree.isHidden = true
            viewFour.isHidden = true
            viewFive.isHidden = true
            viewSix.isHidden = true
            ViewSev.isHidden = true
            viewEight.isHidden = true
            viewNine.isHidden = true
        }
    }
    
    
    // Returns back a random Int (1, 2, 3, 4, 5, or 6)
    func randomDiceRoll() -> Int {
        return Int(arc4random_uniform(6) + 1)
    }

}
