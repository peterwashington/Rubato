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
    
    var player: SPTAudioStreamingController?
    var spotifyAuthenticator = SPTAuth.defaultInstance()


    @IBOutlet weak var loginButton: UIButton!
    
    @IBOutlet weak var errorMessage: UILabel!
    @IBOutlet weak var button: UIButton!
<<<<<<< HEAD
    @IBAction func buttonClicked(sender: AnyObject) {
        //Authenticate with Spotify SDK
=======

    @IBAction func loginWithSpotify(sender: AnyObject) {
<<<<<<< HEAD
        let auth = SPTAuth.defaultInstance()
>>>>>>> 895cbcfdefde64cab6be7b787810ef7134195123
=======
        
        spotifyAuthenticator.clientID = kClientID
        spotifyAuthenticator.redirectURL = NSURL(string: kCallbackURL)
        
        UIApplication.sharedApplication().openURL(spotifyAuthenticator.loginURL)
        
>>>>>>> 9179f4ef3290a1c5c0fda48e2583a19bc4aaa776
    }
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    


}

