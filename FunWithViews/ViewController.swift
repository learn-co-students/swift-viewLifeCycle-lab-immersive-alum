//
//  ViewController.swift
//  FunWithViews
//
//  Created by Jim Campagno on 9/17/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var topLeft: UIView!
    
    @IBOutlet weak var topRight: UIView!
    
    @IBOutlet weak var midLeft: UIView!
    
    @IBOutlet weak var midMid: UIView!
    
    @IBOutlet weak var midRight: UIView!
    
    @IBOutlet weak var botLeft: UIView!
    
    @IBOutlet weak var botRight: UIView!
    
    @IBOutlet weak var label1: UILabel!
    
    @IBOutlet weak var label2: UILabel!
    
    @IBOutlet weak var label3: UILabel!
    
    @IBOutlet weak var label4: UILabel!
    
    @IBOutlet weak var label5: UILabel!
    
    @IBOutlet weak var label6: UILabel!
    
    @IBOutlet weak var label7: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func dieButtonTapped(_ sender: AnyObject) {
        let roll=String(randomDiceRoll())
        topLeft.isHidden=true
        topRight.isHidden=true
        midRight.isHidden=true
        midMid.isHidden=true
        midLeft.isHidden=true
        botLeft.isHidden=true
        botRight.isHidden=true
        updateLabel(roll:roll)
        rearrangeDie(roll:roll)
        
        
    }
    
    // Returns back a random Int (1, 2, 3, 4, 5, or 6)
    func randomDiceRoll() -> Int {
        return Int(arc4random_uniform(6) + 1)
    }
    
    func rearrangeDie(roll:String){
        if roll=="1"{
            midMid.isHidden=false
        }
        else if roll=="2"{
            topRight.isHidden=false
            botLeft.isHidden=false
        }
        else if roll=="3"{
            midMid.isHidden=false
            topRight.isHidden=false
            botLeft.isHidden=false
        }else if roll=="4"{
            topRight.isHidden=false
            botLeft.isHidden=false
            topLeft.isHidden=false
            botRight.isHidden=false
        }else if roll=="5"{
            topRight.isHidden=false
            botLeft.isHidden=false
            topLeft.isHidden=false
            botRight.isHidden=false
            midMid.isHidden=false
        }else{
            topRight.isHidden=false
            botLeft.isHidden=false
            topLeft.isHidden=false
            midLeft.isHidden=false
            midRight.isHidden=false
            botRight.isHidden=false
        }
        
    }
    
    func updateLabel(roll:String){
        if label6.isHidden==false{
            label1.isHidden=true
            label2.isHidden=true
            label3.isHidden=true
            label4.isHidden=true
            label5.isHidden=true
            label6.isHidden=true
        }
        if label1.isHidden{
        label1.text=roll
            label1.isHidden=false
        }else if label2.isHidden{
            label2.text=roll
            label2.isHidden=false
        }else if label3.isHidden{
            label3.text=roll
            label3.isHidden=false
        }else if label4.isHidden{
            label4.text=roll
            label4.isHidden=false
        }else if label5.isHidden{
            label5.text=roll
            label5.isHidden=false
        }else if label6.isHidden{
            label6.text=roll
            label6.isHidden=false
        }else {label7.text="Game Over"
            label7.isHidden=false
        }
    }

}
