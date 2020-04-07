//
//  SplashViewController.swift
//  Channels
//
//  Created by Aya E  Mahmoud on 4/7/20.
//  Copyright © 2020 Aya E  Mahmoud. All rights reserved.
//

import UIKit

class SplashViewController: UIViewController {

    @IBOutlet private weak var imageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        animateAndResetRoot()
    }
    
    func animateAndResetRoot() {
        let random = Int.random(in: 3...5)
        let delayTime = DispatchTime.now() + Double(random)
        UIView.animateKeyframes(withDuration: TimeInterval(random), delay: 0, options: .calculationModeCubic, animations: {
        UIView.addKeyframe(withRelativeStartTime: 0.0, relativeDuration: 0.25) {
            self.imageView.transform = CGAffineTransform(scaleX: 2, y: 2)
        }
                          
        })
            
        DispatchQueue.main.asyncAfter(deadline: delayTime, execute: {
            self.resetRoot()
        })
    }
    
    func resetRoot(){
        let story = UIStoryboard(name: "Main", bundle:nil)
        let vc = story.instantiateViewController(withIdentifier: "ViewController") as! ViewController
        UIApplication.shared.windows.first?.rootViewController = vc
        UIApplication.shared.windows.first?.makeKeyAndVisible()
    }
          
}

