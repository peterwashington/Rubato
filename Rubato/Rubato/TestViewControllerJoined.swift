//
//  TestViewControllerJoined.swift
//  Rubato
//
//  Created by Peter Washington on 12/4/15.
//  Copyright © 2015 Peter Washington. All rights reserved.
//

import Foundation
import UIKit
import AVFoundation

class TestViewControllerJoined: UIViewController {
    
    
    @IBOutlet weak var currentPlayingSong: UILabel!
    
    
    var sessionName = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        currentPlayingSong.text? = Globals.CurrentInfo.currentSong
        
    }


}