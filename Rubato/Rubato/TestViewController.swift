//
//  TestViewController.swift
//  Rubato
//
//  Created by Gio on 11/26/15.
//  Copyright © 2015 Peter Washington. All rights reserved.
//

import UIKit
import AVFoundation

protocol DestinationViewDelegate {
    func addSong(songName: String)
}

var audioPlayer:AVAudioPlayer!

class TestViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet var exitSessionButton: UIBarButtonItem!
    @IBOutlet var menuButton: UIBarButtonItem!
    @IBOutlet var sessionNavigationItem: UINavigationItem!

    
    var sessionName = String()
    

    @IBOutlet weak var tableView: UITableView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        sessionNavigationItem.title = sessionName
        self.view.addGestureRecognizer(self.revealViewController().panGestureRecognizer())
        
        self.tableView.registerClass(UITableViewCell.self, forCellReuseIdentifier: "cell")
        
        print("yo")
        print(Globals.CurrentInfo.currentSessionSongs.count)
        print(Globals.CurrentInfo.currentSessionSongs[0])
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        print(Globals.CurrentInfo.currentSessionSongs.count)
        print(Globals.CurrentInfo.currentSessionSongs[0])
        return Globals.CurrentInfo.currentSessionSongs.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCellWithIdentifier("cell", forIndexPath: indexPath) as UITableViewCell
        
        cell.textLabel?.text = Globals.CurrentInfo.currentSessionSongs[indexPath.row]
        
        print(Globals.CurrentInfo.currentSessionSongs[indexPath.row])
        
        return cell
    }
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        let chosenSong = tableView.cellForRowAtIndexPath(indexPath)?.textLabel?.text
        print("You selected song #\(chosenSong)!")
        
        print("hihihi")
        
        
        switch chosenSong {
        case "Yesterday - The Beatles"?:
            let audioPath = NSBundle.mainBundle().pathForResource("Yesterday", ofType: "m4a")
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
            break
        case "Yellow Submarine - The Beatles"?:
            let audioPath = NSBundle.mainBundle().pathForResource("YellowSubmarine", ofType: "m4a")
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
            break
        case "We Can Work It Out - The Beatles"?:
            let audioPath = NSBundle.mainBundle().pathForResource("WeCanWorkItOut", ofType: "m4a")
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
            break
        case "Ticket To Ride - The Beatles"?:
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
            break
        case "The Long and Winding Road - The Beatles"?:
            let audioPath = NSBundle.mainBundle().pathForResource("TheLongAndWindingRoad", ofType: "m4a")
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
            break
        case "The Ballad of John and Yoko - The Beatles"?:
            let audioPath = NSBundle.mainBundle().pathForResource("TheBalladOfJohnAndYoko", ofType: "m4a")
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
            break
        case "She Loves You - The Beatles"?:
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
            break
        case "Penny Lane - The Beatles"?:
            let audioPath = NSBundle.mainBundle().pathForResource("PennyLane", ofType: "m4a")
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
            break
        case "Paperback Writer - The Beatles"?:
            let audioPath = NSBundle.mainBundle().pathForResource("PaperbackRider", ofType: "m4a")
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
            break
        case "Let It Be - The Beatles"?:
            let audioPath = NSBundle.mainBundle().pathForResource("LetItBe", ofType: "m4a")
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
            break
        case "Lady Madonna - The Beatles"?:
            let audioPath = NSBundle.mainBundle().pathForResource("LadyMadonna", ofType: "m4a")
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
            break
        case "I Want To Hold Your Hand - The Beatles"?:
            let audioPath = NSBundle.mainBundle().pathForResource("IWantToHoldYourHand", ofType: "m4a")
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
            break
        case "I Feel Fine - The Beatles"?:
            let audioPath = NSBundle.mainBundle().pathForResource("IFeelFine", ofType: "m4a")
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
            break
        case "Hey Jude - The Beatles"?:
            let audioPath = NSBundle.mainBundle().pathForResource("HeyJude", ofType: "m4a")
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
            break
        case "Help - The Beatles"?:
            let audioPath = NSBundle.mainBundle().pathForResource("Help", ofType: "m4a")
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
            break
        case "Hello Goodbye - The Beatles"?:
            let audioPath = NSBundle.mainBundle().pathForResource("HelloGoodbye", ofType: "m4a")
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
            break
        case "Get Back - The Beatles"?:
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
            break
        case "From Me To You - The Beatles"?:
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
            break
        case "Eleanor Rigby - The Beatles"?:
            let audioPath = NSBundle.mainBundle().pathForResource("EleanorRigby", ofType: "m4a")
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
            break
        case "Eight Days A Week - The Beatles"?:
            let audioPath = NSBundle.mainBundle().pathForResource("EightDaysAWeek", ofType: "m4a")
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
            break
        case "Day Tripper - The Beatles"?:
            let audioPath = NSBundle.mainBundle().pathForResource("DayTripper", ofType: "m4a")
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
            break
        case "Come Together - The Beatles"?:
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
            break
        case "Can't Buy Me Love - The Beatles"?:
            let audioPath = NSBundle.mainBundle().pathForResource("CantBuyMeLove", ofType: "m4a")
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
            break
        case "All You Need Is Love - The Beatles"?:
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
            break
        case "A Hard Day's Night - The Beatles"?:
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
            break
        case "Love Me Do - The Beatles"?:
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
            break
        default:
            break
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
