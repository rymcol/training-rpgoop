//
//  Enemy.swift
//  training-rpgoop
//
//  Created by Ryan Collins on 2016-03-07.
//  Copyright © 2016 Ryan Collins. All rights reserved.
//

import Foundation

class Enemy: Character {
    
    var loot: [String] {
        return ["Rusty Dagger", "Cracked Muffler"]
    }
    
    var type: String {
        return "Grunt"
    }
    
    func dropLoot() -> String? {
        if !isAlive {
            let random = Int(arc4random_uniform(UInt32(loot.count)))
            
            return loot[random]
        }
        
        return nil
    }
    
}