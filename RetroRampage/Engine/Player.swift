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
    public var radius: Double = 0.5

    public init(position: Vector)  {
        self.position = position
        self.velocity = Vector(x: 1, y: 1)
    }
}

public extension Player {
    var rect: Rect {
        let halfSize = Vector(x: radius, y: radius)
        return Rect(min: position - halfSize, max: position + halfSize)
    }
}
