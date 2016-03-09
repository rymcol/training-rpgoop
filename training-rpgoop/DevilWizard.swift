//
//  DevilWizard.swift
//  training-rpgoop
//
//  Created by Ryan Collins on 2016-03-08.
//  Copyright © 2016 Ryan Collins. All rights reserved.
//

import Foundation

class DevilWizard: Enemy {
    
    override var loot: [String] {
        return ["Magic Wand","Dark Amulet", "Salt of the Earth"]
    }
    
    override var type: String {
        return "Devil Wizard"
    }
    
}