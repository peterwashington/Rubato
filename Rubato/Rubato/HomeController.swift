//
//  HomeController.swift
//  Rubato
//
//  Created by Parker Odrich  on 11/19/15.
//  Copyright © 2015 Peter Washington. All rights reserved.
//

import UIKit
import AVFoundation

class HomeController: UIViewController{
    
    var audioPlayer:AVAudioPlayer!
    

    @IBOutlet weak var homeButton: UIBarButtonItem!
    override func viewDidLoad() {
        super.viewDidLoad()
        if self.revealViewController() != nil {
            homeButton.target = self.revealViewController()
            homeButton.action = "revealToggle:"
            self.view.addGestureRecognizer(self.revealViewController().panGestureRecognizer())
        }
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func playSongTest(sender: AnyObject) {
        print("We are playing the song!")
        
        let audioPath = NSBundle.mainBundle().pathForResource("Song3", ofType: "m4a")
        
        
        do {
            // Preparation
            try AVAudioSession.sharedInstance().setCategory(AVAudioSessionCategoryPlayback)
            try AVAudioSession.sharedInstance().setActive(true)
        
            // Play the sound.
            try audioPlayer = AVAudioPlayer(contentsOfURL: NSURL(fileURLWithPath: audioPath!))
            audioPlayer.prepareToPlay()
            audioPlayer.play()
        } catch {
        }

        
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
