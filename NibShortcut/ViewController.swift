//
//  ViewController.swift
//  NibShortcut
//
//  Created by Joe E. on 6/27/16.
//  Copyright © 2016 Montchat. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let messages:[CustomView.Message] = [ .Welcome, .Joke, .Secret ]
    
    var choice:Int = 0
    
    @IBAction func loadView(sender: AnyObject) {
        
        
        if choice == messages.count { choice = 0 }
        
        let customView = CustomView.xibSetup(initWithMessage: messages[choice], frame: view.frame)
        view.addSubview(customView)
        
        choice += 1
        
    }

}

