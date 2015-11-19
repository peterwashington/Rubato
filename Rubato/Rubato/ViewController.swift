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

    @IBAction func buttonClicked(sender: AnyObject) {
        //Authenticate with Spotify SDK
    }

    @IBAction func loginWithSpotify(sender: AnyObject) {

        let auth = SPTAuth.defaultInstance()

        
        spotifyAuthenticator.clientID = kClientID
        spotifyAuthenticator.redirectURL = NSURL(string: kCallbackURL)
        
        UIApplication.sharedApplication().openURL(spotifyAuthenticator.loginURL)
        

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

