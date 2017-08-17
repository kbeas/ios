//
//  UKitViewController.swift
//  AppUnion
//
//  Created by Karlo Beas on 8/17/17.
//  Copyright © 2017 Karlo Beas. All rights reserved.
//

import UIKit

class UKitViewController: UIViewController {
    
    @IBOutlet weak var bRotate: UIButton!
    @IBOutlet weak var imageView: UIImageView!
    var animator:UIDynamicAnimator!
    var snapBehaviour:UISnapBehavior!
    
    @IBAction func rotate(_ sender: Any) {
        UIView.animate(withDuration: 0.5, animations: {
            self.imageView.transform =
                CGAffineTransform(rotationAngle: (100 * .pi) /
                    100)
        })
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(userHasTapped))
        self.view.addGestureRecognizer(tapGesture)
        animator = UIDynamicAnimator(referenceView: self.view)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func userHasTapped(tap:UITapGestureRecognizer){
        let touchPoint = tap.location(in: self.view)
        if (snapBehaviour != nil) {
            animator.removeBehavior(snapBehaviour)
        }
        
        snapBehaviour = UISnapBehavior(item: imageView, snapTo: touchPoint)
        snapBehaviour.damping = 5
        animator.addBehavior(snapBehaviour)
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}


