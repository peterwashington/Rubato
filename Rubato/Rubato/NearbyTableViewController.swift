//
//  NearbyTableViewController.swift
//  Rubato
//
//  Created by Gio on 11/27/15.
//  Copyright © 2015 Peter Washington. All rights reserved.
//

import UIKit

class NearbyTableViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 0
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return 0
    }

    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if (segue.identifier == "joinSessionPeterSegue") {
            let destination = segue.destinationViewController as! TestViewControllerJoined
            destination.sessionName = "New Year's Eve Party"
        }
        if (segue.identifier == "joinSessionGioSegue") {
            let destination = segue.destinationViewController as! TestViewControllerJoined
            destination.sessionName = "Big Sur Roadtrip"
        }
        if (segue.identifier == "joinSessionParkerSegue") {
            let destination = segue.destinationViewController as! TestViewControllerJoined
            destination.sessionName = "Group Coding Music"
        }
    }
}
