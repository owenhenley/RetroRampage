//
//  Renderer.swift
//  Engine
//
//  Created by Owen Henley on 08/07/2019.
//  Copyright © 2019 Owen Henley. All rights reserved.
//

import Foundation
import Engine

public struct Renderer {
    public private(set) var bitmap: Bitmap
    
    public init(width: Int, height: Int) {
        self.bitmap = Bitmap(width: width, height: height, color: .white)
    }
}

public extension Renderer {
    mutating func draw(_ player: Player) {
        bitmap[Int(player.position.x), Int(player.position.y)] = .blue
    }
}
