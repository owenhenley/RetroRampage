//
//  Rect.swift
//  Engine
//
//  Created by Owen Henley on 28/07/2019.
//  Copyright © 2019 Owen Henley. All rights reserved.
//

public struct Rect {
    var min, max: Vector

    public init(min: Vector, max: Vector) {
        self.min = min
        self.max = max
    }
}
