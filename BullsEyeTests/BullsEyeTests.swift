//
//  BullsEyeTests.swift
//  BullsEyeTests
//
//  Created by Orkhan Alizada on 11.09.17.
//  Copyright © 2017 Ray Wenderlich. All rights reserved.
//

import XCTest
@testable import BullsEye

class BullsEyeTests: XCTestCase {
    var gameUnderTest: BullsEyeGame!
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
        
        self.gameUnderTest = BullsEyeGame()
        self.gameUnderTest.startNewGame()
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
        
        self.gameUnderTest = nil
    }
    
    func testScoreIsComputed() {
        // given
        let guess = self.gameUnderTest.targetValue + 5
        
        // when
        _ = self.gameUnderTest.check(guess: guess)

        // then
        XCTAssertEqual(self.gameUnderTest.scoreRound, 95, "Score computed from guess is wrong")
    }
    
    func testScoreIsComputedWhenGuessLTTarget() {
        // 1. given
        let guess = gameUnderTest.targetValue - 5
        
        // 2. when
        _ = gameUnderTest.check(guess: guess)
        
        // 3. then
        XCTAssertEqual(gameUnderTest.scoreRound, 95, "Score computed from guess is wrong")
    }
}
