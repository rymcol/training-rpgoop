//
//  Player.swift
//  training-rpgoop
//
//  Created by Ryan Collins on 2016-03-07.
//  Copyright © 2016 Ryan Collins. All rights reserved.
//

import Foundation

class Player: Character {
    private var _name = "Player"
    private var _inventory = [String]()
    
    var name: String {
        return _name
    }
    
    var inventory: [String] {
        return _inventory
    }
    
    convenience init(name: String, hp: Int, attackPwr: Int) {
        self.init(startingHp: hp, attackPower: attackPwr)
        self._name = name
    }
    
}