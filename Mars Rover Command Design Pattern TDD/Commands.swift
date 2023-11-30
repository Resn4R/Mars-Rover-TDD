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
    func execute() {
        
    }
    
}

struct MoveBackward: Command {
    func execute() {
        
    }
}

