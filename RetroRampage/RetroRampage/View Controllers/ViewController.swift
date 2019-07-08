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
        var renderer = Renderer(width: 8, height: 8)
        renderer.draw()

        imageView.image = UIImage(bitmap: renderer.bitmap)
    }
}

