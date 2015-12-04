//
//  SessionViewController.swift
//  Rubato
//
//  Created by Peter Washington on 11/24/15.
//  Copyright © 2015 Peter Washington. All rights reserved.
//

import Foundation
import UIKit
import AVFoundation

class SessionViewController: UIViewController {
    
    
    
    
    @IBAction func playSong1(sender: AnyObject) {
        
        let audioPath = NSBundle.mainBundle().pathForResource("Song1", ofType: "m4a")
        
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
    
    
    @IBAction func playSong2(sender: AnyObject) {
        let audioPath = NSBundle.mainBundle().pathForResource("Song2", ofType: "m4a")
        
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
    
    
    @IBAction func playSong3(sender: AnyObject) {
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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}