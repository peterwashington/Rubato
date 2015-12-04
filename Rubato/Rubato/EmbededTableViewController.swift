//
//  EmbededTableViewController.swift
//  Rubato
//
//  Created by Gio on 12/2/15.
//  Copyright © 2015 Peter Washington. All rights reserved.
//

import UIKit
import AVFoundation

class EmbededTableViewController: UITableViewController {

    
    @IBOutlet weak var vote1Count: UILabel!
    @IBOutlet weak var vote2Count: UILabel!
    @IBOutlet weak var vote3Count: UILabel!
    @IBOutlet weak var vote4Count: UILabel!
    @IBOutlet weak var vote5Count: UILabel!
    @IBOutlet weak var vote6Count: UILabel!
    @IBOutlet weak var vote7Count: UILabel!
    @IBOutlet weak var vote8Count: UILabel!
    @IBOutlet weak var vote9Count: UILabel!
    
    @IBOutlet weak var votes1: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    


    @IBAction func votePressed(sender: UIButton) {
        var base = Int()
        var label = UILabel()
        
        var upvote = true
        
        if sender.accessibilityHint == "down" {
            upvote = false
        }
        print(sender.accessibilityHint! + " " + sender.accessibilityLabel!)
        switch sender.accessibilityLabel {
        case "1"?:
            print("1")
            base = 41
            label = vote1Count
            break
        case "2"?:
            print("2")
            base = 24
            label = vote2Count
            break
        case "3"?:
            print("3")
            base = 20
            label = vote3Count
            break
        case "4"?:
            print("4")
            base = 18
            label = vote4Count
            break
        case "5"?:
            print("5")
            base = 15
            label = vote5Count
            break
        case "6"?:
            print("6")
            base = 10
            label = vote6Count
            break
        case "7"?:
            print("7")
            base = 7
            label = vote7Count
            break
        case "8"?:
            print("8")
            base = 3
            label = vote8Count
            break
        case "9"?:
            print("9")
            base = 0
            label = vote9Count
            break
        default:
            break
        }
        
        if (upvote) {
            if Int(label.text!) > base {
                let img : UIImage = UIImage(named: "voteDeactivated")!
                sender.setImage(img,forState:UIControlState.Normal)
                let count = Int(label.text!)! - 1
                label.text = String(count)
            } else {
                let img : UIImage = UIImage(named: "voteActivated")!
                sender.setImage(img,forState:UIControlState.Normal)
                let count = Int(label.text!)! + 1
                label.text = String(count)
            }
        }
        else {
            if Int(label.text!) < base {
                let img : UIImage = UIImage(named: "downvoteDeactivated")!
                sender.setImage(img,forState:UIControlState.Normal)
                let count = Int(label.text!)! + 1
                label.text = String(count)
            } else {
                let img : UIImage = UIImage(named: "downvoteActivated")!
                sender.setImage(img,forState:UIControlState.Normal)
                let count = Int(label.text!)! - 1
                label.text = String(count)
            }
        }
        
    }
    
    
    @IBAction func getBack(sender: AnyObject) {
        Globals.CurrentInfo.currentSong = "Get Back - The Beatles"
        let audioPath = NSBundle.mainBundle().pathForResource("GetBack", ofType: "m4a")
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

    @IBAction func fromMeToYou(sender: AnyObject) {
        Globals.CurrentInfo.currentSong = "From Me To You - The Beatles"
        let audioPath = NSBundle.mainBundle().pathForResource("FromMeToYou", ofType: "m4a")
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
    

    @IBAction func loveMeDo(sender: AnyObject) {
        Globals.CurrentInfo.currentSong = "Love Me Do - The Beatles"
        let audioPath = NSBundle.mainBundle().pathForResource("LoveMeDo", ofType: "m4a")
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
    
    
    @IBAction func comeTogether(sender: AnyObject) {
        Globals.CurrentInfo.currentSong = "Come Together - The Beatles"
        let audioPath = NSBundle.mainBundle().pathForResource("ComeTogether", ofType: "m4a")
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
    
    @IBAction func allYouNeedIsLove(sender: AnyObject) {
        Globals.CurrentInfo.currentSong = "All You Need Is Love - The Beatles"
        let audioPath = NSBundle.mainBundle().pathForResource("AllYouNeedIsLove", ofType: "m4a")
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
    
    
    @IBAction func sheLovesYou(sender: AnyObject) {
        Globals.CurrentInfo.currentSong = "She Loves You- The Beatles"
        let audioPath = NSBundle.mainBundle().pathForResource("SheLovesYou", ofType: "m4a")
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
    
    
    @IBAction func something(sender: AnyObject) {
        Globals.CurrentInfo.currentSong = "Something - The Beatles"
        let audioPath = NSBundle.mainBundle().pathForResource("Something", ofType: "m4a")
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
    
    
    @IBAction func ticketToRide(sender: AnyObject) {
        Globals.CurrentInfo.currentSong = "Ticket To Ride - The Beatles"
        let audioPath = NSBundle.mainBundle().pathForResource("TicketToRide", ofType: "m4a")
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
    
    
    @IBAction func aHardDaysNight(sender: AnyObject) {
        Globals.CurrentInfo.currentSong = "A Hard Day's Night - The Beatles"
        let audioPath = NSBundle.mainBundle().pathForResource("AHardDaysNight", ofType: "m4a")
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

}
