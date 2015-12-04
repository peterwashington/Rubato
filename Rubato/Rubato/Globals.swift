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
        static var currentSong = "Hey Jude - The Beatles"
        static var currentSessionSongs: [String] = ["Hey Jude - The Beatles"]
    }
}