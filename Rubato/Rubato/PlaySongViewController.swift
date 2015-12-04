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
    
    
    @IBAction func playButton(sender: AnyObject) {
        
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
        
    }
    
   
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
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
