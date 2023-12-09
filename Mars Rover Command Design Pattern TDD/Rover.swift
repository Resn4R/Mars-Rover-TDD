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
    
    static let directives: [String : Command] = [
        "F" : MoveForward(),
        "B" : MoveBackward(),
        "L" : TurnLeft(),
        "R" : TurnRight()
    ]
    
   private var buffer: [String] = []
   private var orderQueue: [Command] = []
    
    mutating func addToOrderQueue() {
        buffer.forEach { order in
            orderQueue.append( Self.directives[order]! )
        }
    }
    
    mutating func addCommandsToBuffer(_ commands: [String]) {
        buffer.append(contentsOf: commands)
        addToOrderQueue()
    }
    
    func getCommandBuffer() -> [String] {
        buffer
    }
    
}
