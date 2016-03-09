//
//  ViewController.swift
//  training-rpgoop
//
//  Created by Ryan Collins on 2016-03-07.
//  Copyright © 2016 Ryan Collins. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var printLabel: UILabel!
    @IBOutlet weak var playerHPLabel: UILabel!
    @IBOutlet weak var enemyHPLabel: UILabel!
    @IBOutlet weak var enemyImage: UIImageView!
    @IBOutlet weak var chestButton: UIButton!
    
    var player: Player!
    var enemy: Enemy!
    var chestMessage: String?
    
    
    @IBAction func onChestTapped(sender: UIButton) {
        chestButton.hidden = true
        
        if let msg = chestMessage{
           printLabel.text = msg
        }
        
        NSTimer.scheduledTimerWithTimeInterval(2.0, target: self, selector: #selector(ViewController.generateRandomEnemy), userInfo: nil, repeats: false)
        
    }
    
    @IBAction func attackTapped(sender: UIButton) {
        
        if enemy.attemptAttack(player.attackPower) {
            printLabel.text = "Attacked \(enemy.type) for \(player.attackPower) HP"
            enemyHPLabel.text = "\(enemy.hp)"
        } else {
            printLabel.text = "Attack Failed!"
        }
        
        if let loot = enemy.dropLoot() {
            player.addItemToInventory(loot)
            printLabel.text = "\(enemy.type) dropped \(loot)"
            chestMessage = "\(player.name) found \(loot)"
            chestButton.hidden = false
        }
        
        if !enemy.isAlive {
            enemyHPLabel.text = ""
            printLabel.text = "You KILLED the \(enemy.type)"
            enemyImage.hidden = true
        }
        
    }
    
    
    func generateRandomEnemy() {
        let rand = Int(arc4random_uniform(2))
        
        if rand == 0 {
            enemy = Kimara(startingHp: 50, attackPower: 12)
        } else {
            enemy = DevilWizard(startingHp: 60, attackPower: 15)
        }
        
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        
        player = Player(name: "Marla", hp: 110, attackPwr: 20)
        playerHPLabel.text = "\(player.hp)"
        
        generateRandomEnemy()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

