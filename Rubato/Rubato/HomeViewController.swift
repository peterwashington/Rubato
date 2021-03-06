//
//  HomeViewController.swift
//  Rubato
//
//  Created by Gio on 11/26/15.
//  Copyright © 2015 Peter Washington. All rights reserved.
//

import UIKit
import AVFoundation

var audioPlayer:AVAudioPlayer!

class HomeViewController: UIViewController {

    @IBOutlet weak var menuButton: UIBarButtonItem!
    
    @IBOutlet weak var logoutButton: UIBarButtonItem!
    
    @IBOutlet weak var welcomeText: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
//      welcomeText.text = "Welcome back, \()"
        if self.revealViewController() != nil {
            menuButton.target = self.revealViewController()
            menuButton.action = "revealToggle:"
            self.view.addGestureRecognizer(self.revealViewController().panGestureRecognizer())
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if (segue.identifier == "joinSessionPeterSegue") {
            let destination = segue.destinationViewController as! TestViewControllerJoined
            destination.sessionName = "New Year's Eve Party"
        }
        if (segue.identifier == "joinSessionGioSegue") {
            let destination = segue.destinationViewController as! TestViewControllerJoined
            destination.sessionName = "Big Sur Roadtrip"
        }
        if (segue.identifier == "joinSessionParkerSegue") {
            let destination = segue.destinationViewController as! TestViewControllerJoined
            destination.sessionName = "Group Coding Music"
        }
    }
    

}
