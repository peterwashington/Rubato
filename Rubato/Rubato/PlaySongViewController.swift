//
//  PlaySongViewController.swift
//  Rubato
//
//  Created by Parker Odrich  on 11/30/15.
//  Copyright © 2015 Peter Washington. All rights reserved.
//

import UIKit
import AVFoundation

class PlaySongViewController: UIViewController {
    
    @IBOutlet weak var currSong: UILabel!
    
    
    @IBOutlet weak var currentPlayingSong: UILabel!
    
    
    @IBAction func playButton(sender: AnyObject) {
        
        if (audioPlayer == nil) {
            return
        }
        
        
        if (audioPlayer.playing) {
            audioPlayer.pause()
        } else {
            
            audioPlayer.play()
        
        switch currSong {
        case "Yesterday - The Beatles"?:
            currentPlayingSong.text? = "Yesterday"
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
            currentPlayingSong.text? = "Yellow Submarine"
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
            currentPlayingSong.text? = "We Can Work It Out"
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
            currentPlayingSong.text? = "Ticket To Ride"
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
            currentPlayingSong.text? = "The Long and Winding Road"
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
            currentPlayingSong.text? = "The Ballad of John and Yoko"
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
            currentPlayingSong.text? = "She Loves You"
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
            currentPlayingSong.text? = "Penny Lane"
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
            currentPlayingSong.text? = "Paperback Writer"
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
            currentPlayingSong.text? = "Let It Be"
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
            currentPlayingSong.text? = "Lady Madonna"
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
            currentPlayingSong.text? = "I Want To Hold Your Hand"
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
            currentPlayingSong.text? = "I Feel Fine"
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
            currentPlayingSong.text? = "Hey Jude"
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
            currentPlayingSong.text? = "Help"
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
            currentPlayingSong.text? = "Hello Goodbye"
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
            currentPlayingSong.text? = "Get Back"
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
            currentPlayingSong.text? = "From Me To You"
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
            currentPlayingSong.text? = "Eleanor Rigby"
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
            currentPlayingSong.text? = "Eight Days A Week"
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
            currentPlayingSong.text? = "Day Tripper"
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
            currentPlayingSong.text? = "Come Together"
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
            currentPlayingSong.text? = "Can't Buy Me Love"
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
            currentPlayingSong.text? = "All You Need Is Love"
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
            currentPlayingSong.text? = "A Hard Day's Night"
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
            currentPlayingSong.text? = "Love Me Do"
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
        

    }
    
   
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        switch Globals.CurrentInfo.currentSong {
        case "Yesterday - The Beatles":
            currentPlayingSong.text? = "Yesterday"
            break
        case "Yellow Submarine - The Beatles":
            currentPlayingSong.text? = "Yellow Submarine"
            break
        case "We Can Work It Out - The Beatles":
            currentPlayingSong.text? = "We Can Work It Out"
            break
        case "Ticket To Ride - The Beatles":
            currentPlayingSong.text? = "Ticket To Ride"
            break
        case "The Long and Winding Road - The Beatles":
            currentPlayingSong.text? = "The Long and Winding Road"
            break
        case "The Ballad of John and Yoko - The Beatles":
            currentPlayingSong.text? = "The Ballad of John and Yoko"
            break
        case "She Loves You - The Beatles":
            currentPlayingSong.text? = "She Loves You"
            break
        case "Penny Lane - The Beatles":
            currentPlayingSong.text? = "Penny Lane"
            break
        case "Paperback Writer - The Beatles":
            currentPlayingSong.text? = "Paperback Writer"
            break
        case "Let It Be - The Beatles":
            currentPlayingSong.text? = "Let It Be"
            let audioPath = NSBundle.mainBundle().pathForResource("LetItBe", ofType: "m4a")
            break
        case "Lady Madonna - The Beatles":
            currentPlayingSong.text? = "Lady Madonna"
            break
        case "I Want To Hold Your Hand - The Beatles":
            currentPlayingSong.text? = "I Want To Hold Your Hand"
            break
        case "I Feel Fine - The Beatles":
            currentPlayingSong.text? = "I Feel Fine"
            break
        case "Hey Jude - The Beatles":
            currentPlayingSong.text? = "Hey Jude"
            break
        case "Help - The Beatles":
            currentPlayingSong.text? = "Help"
            break
        case "Hello Goodbye - The Beatles":
            currentPlayingSong.text? = "Hello Goodbye"
            break
        case "Get Back - The Beatles":
            currentPlayingSong.text? = "Get Back"
            break
        case "From Me To You - The Beatles":
            currentPlayingSong.text? = "From Me To You"
            break
        case "Eleanor Rigby - The Beatles":
            currentPlayingSong.text? = "Eleanor Rigby"
            break
        case "Eight Days A Week - The Beatles":
            currentPlayingSong.text? = "Eight Days A Week"
            break
        case "Day Tripper - The Beatles":
            currentPlayingSong.text? = "Day Tripper"
            break
        case "Come Together - The Beatles":
            currentPlayingSong.text? = "Come Together"
            break
        case "Can't Buy Me Love - The Beatles":
            currentPlayingSong.text? = "Can't Buy Me Love"
            break
        case "All You Need Is Love - The Beatles":
            currentPlayingSong.text? = "All You Need Is Love"
            break
        case "A Hard Day's Night - The Beatles":
            currentPlayingSong.text? = "A Hard Day's Night"
            break
        case "Love Me Do - The Beatles":
            currentPlayingSong.text? = "Love Me Do"
            break
        default:
            break
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
