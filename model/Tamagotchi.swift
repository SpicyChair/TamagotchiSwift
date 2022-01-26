//
//  Tamagotchi.swift
//  TamagotchiSwift
//
//  Created by Hin, Ethan-Scott (WING) on 19/01/2022.
//

import Foundation

struct Tamagotchi {
    
    var health:Int = 5 {
        didSet (new) {
        }
    }
    var isAlive: Bool = true;
    var fun:Int = 5
    var cleanliness:Int = 5
    var hunger:Int = 5
    
    var message:String = "Attack the Tamagotchi to break its shell!"
    
    private var medicineTakenAtOnce:Int = 0;
    
    
    
    mutating func giveMedicine() {
        
        if health != 5 {
            health += 1
        }
        
        medicineTakenAtOnce += 1
        
        if medicineTakenAtOnce >= 5 {
            health -= 3
            medicineTakenAtOnce = 0
            message = "Tamagotchi has had an overdose! Reducing health by 3."
        }
    }
   
    mutating func eatSnack() {
        let reduceHungerBy = 1
        
        if self.hunger >= 1 {
            self.hunger -= reduceHungerBy
        }
    }
    
    mutating func attack() {
        print("attack")
        let reduceHealthBy = 1
        let reduceFunBy = 1
        health = health - reduceHealthBy
        fun = fun - reduceFunBy
        
        
    }
}
