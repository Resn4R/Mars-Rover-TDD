//
//  Commands.swift
//  Mars Rover Command Design Pattern TDD
//
//  Created by Vito Borghi on 30/11/2023.
//

import Foundation

protocol Command {
    func execute()
}

struct TurnRight: Command {
    
    func execute() {

    }
    
}

struct TurnLeft: Command {
    func execute() {
        
    }
}

struct MoveForward: Command {
    var rover: Rover
    
    init(){ rover = Rover() }
    
    init(rover: inout Rover) {
        self.rover = rover
    }
    
    func execute() {
        //        switch rover.direction {
        //        case "N":
        //        case "E":
        //        case "S":
        //        case "W":
        //        default:
        //        }
        //    }
    }
}

struct MoveBackward: Command {
    
    var rover: Rover
    
    init(){ rover = Rover() }
    
    init(rover: inout Rover) {
        self.rover = rover
    }
    
    func execute() {
        switch rover.direction {
        case "N": rover.yPos -= 1
        case "E": rover.xPos -= 1
        case "S": rover.yPos += 1
        case "W": rover.xPos += 1
        default: print("")
        }
    }
}

