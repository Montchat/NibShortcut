//
//  CustomView.swift
//  NibShortcut
//
//  Created by Joe E. on 6/27/16.
//  Copyright © 2016 Montchat. All rights reserved.
//

import UIKit

class CustomView: UIView {
    
    typealias Frame = CGRect
    
    enum Message { case Welcome, Joke, Secret }
    
    @IBOutlet weak var label: UILabel!
    
    @IBAction func back(sender: AnyObject) {
        
        UIView.animateWithDuration(0.33, animations: { 
            self.alpha = 0
            }) { (Bool) in
                self.removeFromSuperview()
        }
        
    }
    
    class func xibSetup(initWithMessage message: Message, frame:Frame) -> CustomView {
        
        guard let customView = CustomView.loadFromNibNamed("CustomView") as? CustomView else { return CustomView() }
        
        customView.initalize(message: message, frame: frame)
        
        return customView
        
    }
    
    private func initalize(message message: Message, frame:Frame) {
        
        alpha = 0
        self.frame = frame
        
        switch message {
        case .Welcome:
            label.text = "Welcome to your custom view!"
        case .Joke:
            label.text = "Why is six afraid of seven? :)"
        case .Secret:
            label.text = "I open at the close" 
            
        }
        
        UIView.animateWithDuration(0.33) { self.alpha = 1 }
        
    }

}

extension UIView {
    
    class func loadFromNibNamed(nibNamed: String, bundle : NSBundle? = nil) -> UIView? {
        return UINib(nibName: nibNamed, bundle: bundle).instantiateWithOwner(nil, options: nil)[0] as? UIView
        
    }
    
}
