//
//  PlayerView.swift
//  basic
//
//  Created by Gustavo Lembert da Cunha on 02/04/20.
//  Copyright © 2020 Marcos Oliveira. All rights reserved.
//

import UIKit
import AVKit

class PlayerView: UIView {
    var player: AVPlayer? {
        get {
            return playerLayer.player
        }
        set {
            playerLayer.player = newValue
        }
    }
    
    var playerLayer: AVPlayerLayer {
        return layer as! AVPlayerLayer
    }
    
    // Override UIView property
    override static var layerClass: AnyClass {
        return AVPlayerLayer.self
    }
}
