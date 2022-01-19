//
//  TamagotchiTest.swift
//  TamagotchiSwiftTests
//
//  Created by Hin, Ethan-Scott (WING) on 19/01/2022.
//

import XCTest

class TamagotchiTest: XCTestCase {
    
    
    //GREEN
    func testEatingSnackDecreasesHungerByOne() throws {
        //arrange (set up)
        let tamagotchi = Tamagotchi()
        let expectedHunger = 4
        
        //act (perform the functionality we want to test)
        tamagotchi.eatSnack()
        
        //assert (check it did what we expected)
        XCTAssertEqual(tamagotchi.hunger, expectedHunger)
    }
    
    //GREEN
    func testWhereTamagotchiHasZeroHungerEatSnackKeepsHungerAtZero() throws {
        //arrange (set up)
        let tamagotchi = Tamagotchi()
        
        //act (perform the functionality we want to test)
        for _ in 0...5 {
            tamagotchi.eatSnack()
        }
        
        
        //assert (check it did what we expected)
        XCTAssertEqual(tamagotchi.hunger, 0)
    }

}
