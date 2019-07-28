//
//  Player.swift
//  Engine
//
//  Created by Owen Henley on 08/07/2019.
//  Copyright © 2019 Owen Henley. All rights reserved.
//

public struct Player {
    public var position: Vector
    public var velocity: Vector

    public init(position: Vector)  {
        self.position = position
        self.velocity = Vector(x: 1, y: 1)
    }
}

public extension Player {
    mutating func update() {
        position += velocity
    }
}
