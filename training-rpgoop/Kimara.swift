//
//  Kimara.swift
//  training-rpgoop
//
//  Created by Ryan Collins on 2016-03-08.
//  Copyright © 2016 Ryan Collins. All rights reserved.
//

import Foundation

class Kimara: Enemy {
    
    let IMMUNE_MAX = 15
    
    override var loot: [String] {
        return ["Torch","Kimara Venom", "Rare Trident"]
    }
    
    override var type: String {
        return "Kimara"
    }
    
    override func attemptAttack(attackPwr: Int) -> Bool {
        if attackPwr >= IMMUNE_MAX {
            return super.attemptAttack(attackPwr)
        } else {
            return false
        }
    }
    
}