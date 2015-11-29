//
//  ViewController.swift
//  Rubato/Users/peterwashington/Documents/Class/CS147/Rubato/Rubato/Rubato/Rubato/Base.lproj/Main.storyboard
//
//  Created by Peter Washington on 11/8/15.
//  Copyright © 2015 Peter Washington. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let kClientID = "476f7181e13c44cfbddfcc4a0be318c6"
    let kCallbackURL = "rubato://callback"
    
    var spotifyAuthenticator = SPTAuth.defaultInstance()
    
    @IBOutlet weak var button: UIButton!


    @IBAction func loginWithSpotify(sender: AnyObject) {
        
//        spotifyAuthenticator.clientID = kClientID
//        spotifyAuthenticator.redirectURL = NSURL(string: kCallbackURL)
//        
//        UIApplication.sharedApplication().openURL(spotifyAuthenticator.loginURL)
        
    }
    

    func updateAfterFirstLogin() {
        button.hidden = true
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        NSNotificationCenter.defaultCenter().addObserver(self, selector: "updateAfterFirstLogin", name: "loginSuccessful", object: nil)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    


}

