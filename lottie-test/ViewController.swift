//
//  ViewController.swift
//  lottie-test
//
//  Created by Ashutosh Mane on 11/11/19.
//  Copyright © 2019 Ashutosh Mane. All rights reserved.
//

import UIKit
import Lottie


class ViewController: UIViewController {
    
    
    
    
    
    var lottieView:AnimationView={
        let animationView=AnimationView()
        return animationView
    }()
    
   
    
    
    
    let myBundle:Bundle=Bundle.main
    
    
    override func viewDidLoad() {
        print(" in vdl")
        super.viewDidLoad()
        self.loadAnimationOnView()
        
        
        
        
        
        
        
        
        
        
        //        starAnimationView.animation = starAnimation
        // Do any additional setup after loading the view.
    }
    
    @IBAction func playAnimation(_ sender: Any) {
        
        
        
        let animation=Animation.named("test_animation")
        
        lottieView.animation=animation
        
        lottieView.play()
        
    }
    
    
    
    func loadAnimationOnView(){
        lottieView.frame=view.frame
        lottieView.contentMode = .scaleAspectFill
        view.addSubview(lottieView)
        view.sendSubviewToBack(lottieView)
        
        
        print("animation loaded")
    }
    
    
}
