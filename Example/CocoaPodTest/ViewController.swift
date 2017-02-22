//
//  ViewController.swift
//  CocoaPodTest
//
//  Created by ddpiane1 on 02/22/2017.
//  Copyright (c) 2017 ddpiane1. All rights reserved.
//

import UIKit
import BlinkingLabel

class ViewController: UIViewController {

    var isBlinking = false
    let blinkingLabel = BlinkingLabel(frame:CGRectMake(10,20,200,30))
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        // setup the blinkinglabel
        blinkingLabel.text = "I blink"
        blinkingLabel.font = UIFont.systemFont(ofSize: 20)
        view.addSubview(blinkingLabel)
        blinkingLabel.startBlinking()
        isBlinking = true
    
        // create a uibutton to toggle blinking
        let toggleButton = UIButton(frame: CGRectMake(10,60,125,30))
        toggleButton.setTitle("Toggle Blinking", for: .normal)
        toggleButton.setTitleColor(UIColor.red, for: .normal)
        toggleButton.addTarget(self, action: "toggleBlinking", for: .touchUpInside)
        view.addSubview(toggleButton)
        
    }
    
    func toggleBlinking(){
        if(isBlinking){
            blinkingLabel.stopBlinking()
        } else {
            blinkingLabel.startBlinking()
        }
        isBlinking = !isBlinking
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

