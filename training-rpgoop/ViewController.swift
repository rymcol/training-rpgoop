//
//  ViewController.swift
//  training-rpgoop
//
//  Created by Ryan Collins on 2016-03-07.
//  Copyright © 2016 Ryan Collins. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var printLabel: UIImageView!
    @IBOutlet weak var playerHPLabel: UILabel!
    @IBOutlet weak var enemyHPLabel: UILabel!
    @IBOutlet weak var enemyImage: UIImageView!
    @IBOutlet weak var chestButton: UIButton!
    
    
    @IBAction func onChestTapped(sender: UIButton) {
        
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

