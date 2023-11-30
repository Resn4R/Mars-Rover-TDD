//
//  Rover.swift
//  Mars Rover Command Design Pattern TDD
//
//  Created by Vito Borghi on 30/11/2023.
//

import Foundation

struct Rover {
    var xPos = 0
    var yPos = 0
    var direction = "N"
    
//    static let directives: [String : Command] = [
//        "F" : MoveForward(),
//        "B" : MoveBackward(),
//        "L" : TurnLeft(),
//        "R" : TurnRight()
//    ]
    
    var buffer: [String] = []
//    var orderQueue: [Command] = []
//    
//    mutating func addCommand(_ command: String) {
//        orderQueue.append( Self.directives[command]! )
//    }
    
}
