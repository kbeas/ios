//
//  ViewController.swift
//  AppTV
//
//  Created by Karlo Beas on 8/19/17.
//  Copyright © 2017 Karlo Beas. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {

    var player: AVAudioPlayer!
    
    @IBAction func on(_ sender: Any) {
        player.setVolume(1, fadeDuration: 2)
    }
    
    @IBAction func off(_ sender: Any) {
        player.setVolume(0, fadeDuration: 2)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        guard let asset = NSDataAsset(name: "BTDB") else { print("Error Loading Audio.");
            return }
        
        do {
            player = try AVAudioPlayer(data: asset.data)
            player.volume = 0
            player.numberOfLoops = -1
            player.play()
        } catch { print("Error playing audio"); return }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}

