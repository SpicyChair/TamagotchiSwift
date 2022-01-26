//
//  Tamagotchi.swift
//  TamagotchiSwift
//
//  Created by Hin, Ethan-Scott (WING) on 19/01/2022.
//

import Foundation

class Tamagotchi {
    
    var hunger:Int = 5
   
    func eatSnack() {
        let reduceHungerBy = 1
        
        if self.hunger >= 1 {
            self.hunger -= reduceHungerBy
        }
    }
    
}
