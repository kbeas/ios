//
//  AVFViewController.swift
//  AppUnion
//
//  Created by Karlo Beas on 8/17/17.
//  Copyright © 2017 Karlo Beas. All rights reserved.
//

import UIKit
import AVFoundation

class AVFViewController: UIViewController {

    var player: AVAudioPlayer!
    
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
    
    @IBAction func onSwitchChanged(_ sender: UISwitch) {
        if sender.isOn {
            player.setVolume(1, fadeDuration: 2)
        } else {
            player.setVolume(0, fadeDuration: 2)
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}
