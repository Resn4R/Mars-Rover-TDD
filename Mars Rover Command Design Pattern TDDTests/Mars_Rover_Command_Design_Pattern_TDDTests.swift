//
//  Mars_Rover_Command_Design_Pattern_TDDTests.swift
//  Mars Rover Command Design Pattern TDDTests
//
//  Created by Vito Borghi on 30/11/2023.
//

import XCTest
@testable import Mars_Rover_Command_Design_Pattern_TDD

final class Mars_Rover_Command_Design_Pattern_TDDTests: XCTestCase {
    func testStartingPoint() {
        let rover = Rover()
        let defaultStartingPoint = ["0", "0", "N"]
        
        XCTAssertEqual([String(rover.xPos), String(rover.yPos), rover.direction], defaultStartingPoint)
    }
    
    func testRoverCommandBuffer() {
        var rover = Rover()
        let commands = ["R", "F"]
        
        commands.forEach{ rover.buffer.append($0) }
        
        XCTAssertEqual(rover.buffer, commands)
        
    }
    
    
}
