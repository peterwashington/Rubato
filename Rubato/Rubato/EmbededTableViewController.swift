//
//  EmbededTableViewController.swift
//  Rubato
//
//  Created by Gio on 12/2/15.
//  Copyright © 2015 Peter Washington. All rights reserved.
//

import UIKit

class EmbededTableViewController:

UITableViewController {

    
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
        switch sender.accessibilityLabel {
        case "1"?:
            print("1")
            base = 10
            label = vote1Count
            break
        case "2"?:
            print("2")
            base = 9
            label = vote2Count
            break
        case "3"?:
            print("3")
            base = 7
            label = vote3Count
            break
        case "4"?:
            print("4")
            base = 4
            label = vote4Count
            break
        case "5"?:
            print("5")
            base = 2
            label = vote5Count
            break
        case "6"?:
            print("6")
            base = 0
            label = vote6Count
            break
        case "7"?:
            print("7")
            base = 0
            label = vote7Count
            break
        case "8"?:
            print("8")
            base = 0
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


}
