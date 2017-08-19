//
//  ViewController.swift
//  AppScript
//
//  Created by Karlo Beas on 8/19/17.
//  Copyright © 2017 Karlo Beas. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    var player: AVAudioPlayer!
    
    @IBOutlet weak var user: UITextField!
    @IBOutlet weak var password: UITextField!
    
    
    @IBAction func cancel(_ sender: Any) {
        print("cancel")
    }
    
    @IBAction func ok(_ sender: Any) {
        print("ok")
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


extension UIViewController {
    func hideKeyboardWhenTappingAround() {
        let tap: UITapGestureRecognizer = UITapGestureRecognizer (target: self, action: #selector(UIViewController.dismissKeyboard))
        view.addGestureRecognizer(tap)
    }
    
    func dismissKeyboard() {view.endEditing(true)}
}
