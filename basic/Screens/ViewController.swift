//
//  ViewController.swift
//  basic
//
//  Created by Gustavo Lembert da Cunha on 17/03/20.
//  Copyright © 2020 Marcos Oliveira. All rights reserved.
//

import UIKit
import AVFoundation
import AVKit
import MediaPlayer

class ViewController: UIViewController {
   
    // MARK: - Properties
    let playerSegueIdentifier = "goToPlayer"
    let videos = [
        "http://commondatastorage.googleapis.com/gtv-videos-bucket/sample/ElephantsDream.mp4",
        "http://commondatastorage.googleapis.com/gtv-videos-bucket/sample/ForBiggerBlazes.mp4",
        "http://commondatastorage.googleapis.com/gtv-videos-bucket/sample/ForBiggerEscapes.mp4",
        "http://commondatastorage.googleapis.com/gtv-videos-bucket/sample/WeAreGoingOnBullrun.mp4"
    ]
    
    // MARK: - Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    // MARK: - Actions
    @IBAction func play(_ sender: Any) {
        performSegue(withIdentifier: playerSegueIdentifier, sender: videos[0])
    }
    
    // MARK: - Navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        switch segue.identifier {
        case playerSegueIdentifier:
            if let vc = segue.destination as? AVPlayerViewController,
                let url = sender as? String {
                let player = AVPlayer(url: URL(string: url)!)
                vc.player = player
                
            }
        default:
            break
        }
    }
}

