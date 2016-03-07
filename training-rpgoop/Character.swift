//
//  Character.swift
//  training-rpgoop
//
//  Created by Ryan Collins on 2016-03-07.
//  Copyright © 2016 Ryan Collins. All rights reserved.
//

import Foundation

class  Character {
    private var _hp: Int
    private var _attackPower: Int
    
    var attackPower: Int {
        return _attackPower
    }
    
    var hp: Int {
        return _hp
    }

    init(startingHp: Int, attackPower: Int) {
        self._hp = startingHp
        self._attackPower = attackPower
    }
    
    func attemptAttack (attackPwr: Int) -> Bool {
        self._hp -= attackPwr
        
        return true
    }
    
    var isAlive: Bool {
        get {
            if hp <= 0 {
                return false
            } else {
                return true
            }
        }
    }

}