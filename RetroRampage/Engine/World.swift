//
//  World.swift
//  Engine
//
//  Created by Owen Henley on 09/07/2019.
//  Copyright © 2019 Owen Henley. All rights reserved.
//

public struct World {
    public let size: Vector
    public var player: Player

    public init() {
        self.size = Vector(x: 8, y: 8)
        self.player = Player(position: Vector(x: 4, y: 4))
    }
}

public extension World {
    mutating func update(timeStep: Double) {
        player.position += player.velocity * timeStep
        player.position.x.formTruncatingRemainder(dividingBy: size.x)
        player.position.y.formTruncatingRemainder(dividingBy: size.y)
    }
}
