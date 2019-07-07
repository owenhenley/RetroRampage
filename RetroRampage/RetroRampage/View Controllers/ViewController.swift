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
        
        var bitmap = Bitmap(width: 8, height: 8, color: .white)
        bitmap[0, 0] = .blue
        
        imageView.image = UIImage(bitmap: bitmap)
    }
    
    private func setupImageView() {
        view.addSubview(imageView)
        imageView.fillSuperview()
        imageView.contentMode = .scaleAspectFit
        imageView.backgroundColor = .black
        imageView.layer.magnificationFilter = .nearest
    }
}

