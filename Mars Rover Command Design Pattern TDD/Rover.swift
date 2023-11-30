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
    
    private var buffer: [Command] = []
}
