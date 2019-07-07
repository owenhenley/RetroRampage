//
//  ViewController.swift
//  RetroRampage
//
//  Created by Owen Home on 07/07/2019.
//  Copyright © 2019 Owen Home. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    private let imageView = UIImageView()

    override func viewDidLoad() {
        super.viewDidLoad()
        setupImageView()
    }
    
    private func setupImageView() {
        view.addSubview(imageView)
        imageView.fillSuperview()
        imageView.contentMode = .scaleAspectFit
        imageView.backgroundColor = .black
    }
}

