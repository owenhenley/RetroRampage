//
//  UIImage+Bitmap.swift
//  RetroRampage
//
//  Created by Owen Henley on 07/07/2019.
//  Copyright © 2019 Owen Henley. All rights reserved.
//

import UIKit
import Engine

extension UIImage {
    convenience init?(bitmap: Bitmap) {
        let alphaInfo = CGImageAlphaInfo.premultipliedLast
        let bytesPerPixel = MemoryLayout<Color>.size
        let bytesPerRow = bitmap.width * bytesPerPixel
        
        guard let providerRef = CGDataProvider(data: Data(bytes: bitmap.pixels, count: bitmap.height * bytesPerRow) as CFData)
            else {
                return nil
        }
        
        guard let cgImage = CGImage(width: bitmap.width,
                                    height: bitmap.height,
                                    bitsPerComponent: 8,
                                    bitsPerPixel: bytesPerPixel * 8,
                                    bytesPerRow: bytesPerRow,
                                    space: CGColorSpaceCreateDeviceRGB(),
                                    bitmapInfo: CGBitmapInfo(rawValue: alphaInfo.rawValue),
                                    provider: providerRef,
                                    decode: nil,
                                    shouldInterpolate: true,
                                    intent: .defaultIntent)
            else {
                return nil
        }
        
        self.init(cgImage: cgImage)
    }
}
