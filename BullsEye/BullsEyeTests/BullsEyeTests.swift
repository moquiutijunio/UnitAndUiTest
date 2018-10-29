//
//  BullsEyeTests.swift
//  BullsEyeTests
//
//  Created by Junio Moquiuti on 29/10/18.
//  Copyright © 2018 Ray Wenderlich. All rights reserved.
//

import XCTest

@testable import BullsEye

class BullsEyeTests: XCTestCase {
    
    var gameUnderTest: BullsEyeGame!
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
        
        gameUnderTest = BullsEyeGame()
        gameUnderTest.startNewGame()
    }
    
    override func tearDown() {
        super.tearDown()
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        
        gameUnderTest = nil
    }
    
//    // XCTAssert to test model
//    private func testScoreIsComputed() {
//        // 1. given
//        let guess = gameUnderTest.targetValue + 5
//
//        // 2. when
//        _ = gameUnderTest.check(guess: guess)
//        
//        // 3. then
//        XCTAssertEqual(gameUnderTest.scoreRound, 95, "Score computed from guess is wrong")
//    }
    
    func testScoreIsComputedWhenGuessGTTarget() {
        // 1. given
        let guess = gameUnderTest.targetValue - 5
        
        // 2. when
        _ = gameUnderTest.check(guess: guess)
        
        // 3. then
        XCTAssertEqual(gameUnderTest.scoreRound, 95, "Score computed from guess is wrong")
    }
}
