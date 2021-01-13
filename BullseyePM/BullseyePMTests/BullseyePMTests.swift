//
//  BullseyePMTests.swift
//  BullseyePMTests
//
//  Created by P.M. Class on 1/6/21.
//

import XCTest
@testable import BullseyePM

class BullseyePMTests: XCTestCase {
    
    var game: Game!
    
    override func setUpWithError() throws {
      game = Game()
    }
    
    override func tearDownWithError() throws {
        game = nil
    }
    
    func testScorePositive() {
        let guess = game.target + 5
        let score = game.points(sliderValue: guess)
        XCTAssertEqual(score, 95)
    }
    
    func testScoreNegative() {
        let guess = game.target - 5
        let score = game.points(sliderValue: guess)
        XCTAssertEqual(score, 95)
    }
    
}
