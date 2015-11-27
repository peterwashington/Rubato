//
//  TestViewController.swift
//  Rubato
//
//  Created by Gio on 11/26/15.
//  Copyright © 2015 Peter Washington. All rights reserved.
//

import UIKit

class TestViewController: UIViewController {

    @IBOutlet var exitSessionButton: UIBarButtonItem!
    @IBOutlet var menuButton: UIBarButtonItem!
    @IBOutlet var sessionNavigationItem: UINavigationItem!
    
    var sessionName = String()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        sessionNavigationItem.title = sessionName
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
