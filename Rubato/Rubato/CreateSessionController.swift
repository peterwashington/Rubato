//
//  CreateSessionController.swift
//  Rubato
//
//  Created by Gio on 11/18/15.
//  Copyright © 2015 Peter Washington. All rights reserved.
//

import UIKit

class CreateSessionController: UIViewController {

    // Spotify-specific variables
    let kClientID = "476f7181e13c44cfbddfcc4a0be318c6"
    let kCallbackURL = "rubato://callback"
   
    // View-specific variables
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
    
    
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
