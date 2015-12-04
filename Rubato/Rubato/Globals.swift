//
//  Globals.swift
//  Rubato
//
//  Created by Peter Washington on 12/4/15.
//  Copyright © 2015 Peter Washington. All rights reserved.
//

import Foundation


class Globals {
    struct CurrentInfo {
        static var cache: [String:CGFloat] = Dictionary<String, CGFloat>()
        static var currentSong = "Add songs, then click to play!"
        static var currentSessionSongs: [String] = []
        static var pastSessionSongs: [String] = ["Hey Jude - The Beatles", "Love Me Do - The Beatles", "Paperback Writer - The Beatles", "Help! - The Beatles", "Get Back - The Beatles", "Penny Lane - The Beatles"]
    }
}