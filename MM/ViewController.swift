//
//  ViewController.swift
//  MM
//
//  Created by Aidan Maldonado on 3/16/19.
//  Copyright © 2019 Aidan Maldonado. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var mats = 0
    var marauders = 0
    var regionProv = regionProvider()
    var cost = 0
    var percentChance = 0
    
    @IBOutlet weak var matsLabel: UILabel!
    @IBOutlet weak var maraudersLabel: UILabel!
    @IBOutlet weak var regionText: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    func updateLabels() {
        matsLabel.text = String(mats)
        maraudersLabel.text = String(marauders)
        regionText.text = "Cost: \(cost), \(percentChance)%"
    }
    
    @IBAction func getMats() {
        let matBonus = 1 + (marauders * 1)
        mats += matBonus
        updateLabels()
    }
    
    @IBAction func trainMarauder() {
        if mats >= 10 {
            mats -= 10
            marauders += 1
        }
        updateLabels()
    }
    
    @IBAction func region1() {
        
    }
    
    @IBAction func region2() {
        
    }
    
    @IBAction func region3() {
        
    }
    
    @IBAction func region4() {
        
    }
}

