//
//  ViewController.swift
//  swipesShakes
//
//  Created by Kaylan Smith on 7/16/16.
//  Copyright © 2016 Kaylan Smith. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    // for swipes
    override func viewDidLoad() {
        super.viewDidLoad()

    
        var swipeRight = UISwipeGestureRecognizer(target: self, action: "swiped:")
        swipeRight.direction = UISwipeGestureRecognizerDirection.Right
        self.view.addGestureRecognizer(swipeRight)
        
        var swipeUp = UISwipeGestureRecognizer(target: self, action: "swiped:")
        swipeUp.direction = UISwipeGestureRecognizerDirection.Up
        self.view.addGestureRecognizer(swipeUp)
        
    }
    
    // for shakes
    override func motionEnded(motion: UIEventSubtype, withEvent event: UIEvent?) {
        
        if event?.subtype == UIEventSubtype.MotionShake {
        
            print("Device was shaken")
            
        }
        
    }
    
    
    // set up similar to long press
    func swiped(gesture: UISwipeGestureRecognizer) {
        
        // tests to see if gesture that calls this function is a swipe
        if let swipeGesture = gesture as? UISwipeGestureRecognizer {
        
            // these are the only gestures that can be recognized
            switch swipeGesture.direction {
            
            case UISwipeGestureRecognizerDirection.Right:
                
                print("Swiped Right")
                
            case UISwipeGestureRecognizerDirection.Up:
                
                print("Swiped Up")
            
            // will break the switch and end it
            default:
                
                break
            
            }
            
        }
    
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

