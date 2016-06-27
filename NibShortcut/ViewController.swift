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
        
        print(messages.count)
        
        if choice == messages.count { choice = 0 }
        
        let customView = CustomView.xibSetup(initWithMessage: messages[choice], frame: view.frame)
        view.addSubview(customView)
        
        choice += 1
        
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

