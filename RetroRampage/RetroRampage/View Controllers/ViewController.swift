//
//  ViewController.swift
//  RetroRampage
//
//  Created by Owen Henley on 07/07/2019.
//  Copyright © 2019 Owen Home. All rights reserved.
//

import UIKit
import Engine

class ViewController: UIViewController {
    private let imageView = UIImageView()
    private var player = Player(position: Vector(x: 4, y: 4))
    private var lastFrameTime = CACurrentMediaTime()

    override func viewDidLoad() {
        super.viewDidLoad()
        setupImageView()
        
        let displayLink = CADisplayLink(target: self, selector: #selector(update))
        displayLink.add(to: .main, forMode: .common)
    }

    private func setupImageView() {
        view.addSubview(imageView)
        imageView.fillSuperview()
        imageView.contentMode = .scaleAspectFit
        imageView.backgroundColor = .black
        imageView.layer.magnificationFilter = .nearest
    }

    @objc
    private func update(_ displayLink: CADisplayLink) {
        let timeStep = displayLink.timestamp - lastFrameTime
        player.update(timeStep: timeStep)
        lastFrameTime = displayLink.timestamp

        var renderer = Renderer(width: 8, height: 8)
        renderer.draw(player)

        imageView.image = UIImage(bitmap: renderer.bitmap)
    }
}

