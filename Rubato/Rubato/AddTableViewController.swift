//
//  AddTableViewController.swift
//  Rubato
//
//  Created by Gio on 11/27/15.
//  Copyright © 2015 Peter Washington. All rights reserved.
//

import UIKit

protocol AddTableViewControllerDelegate{
    func controller(controller: AddTableViewController, didAddSong: String)
    func addSong(songTitle: String)
}

class AddTableViewController: UITableViewController, UISearchResultsUpdating {

    var delegate: AddTableViewControllerDelegate?
    
    var songs = ["Yesterday - The Beatles",
        "Yellow Submarine - The Beatles",
        "We Can Work It Out - The Beatles",
        "Ticket To Ride - The Beatles",
        "The Long and Winding Road - The Beatles",
        "The Ballad of John and Yoko - The Beatles",
        "Something - The Beatles",
        "She Loves You - The Beatles",
        "Penny Lane - The Beatles",
        "Paperback Writer - The Beatles",
        "Let It Be - The Beatles",
        "Lady Madonna - The Beatles",
        "I Want To Hold Your Hand - The Beatles",
        "I Feel Fine - The Beatles",
        "Hey Jude - The Beatles",
        "Help - The Beatles",
        "Hello Goodbye - The Beatles",
        "Get Back - The Beatles",
        "From Me To You - The Beatles",
        "Eleanor Rigby - The Beatles",
        "Eight Days A Week - The Beatles",
        "Day Tripper - The Beatles",
        "Come Together - The Beatles",
        "Can't Buy Me Love - The Beatles",
        "All You Need Is Love - The Beatles",
        "A Hard Day's Night - The Beatles",
        "Love Me Do - The Beatles"]
    var filteredSongs = [String]()
    
    var searchController : UISearchController!
    var resultsController = UITableViewController()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.resultsController.tableView.dataSource = self
        self.resultsController.tableView.delegate = self
        self.searchController = UISearchController(searchResultsController: self.resultsController)
        self.tableView.tableHeaderView = self.searchController.searchBar
        self.searchController.searchResultsUpdater = self
    }
    
    func updateSearchResultsForSearchController(searchController: UISearchController) {
        self.filteredSongs = self.songs.filter  { (song:String) -> Bool in
            if song.lowercaseString.containsString(self.searchController.searchBar.text!.lowercaseString) {
                return true
            } else {
                return false
            }
        }
        self.resultsController.tableView.reloadData()
    }
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if tableView == self.tableView {
            return self.songs.count
        } else {
            return self.filteredSongs.count
        }
        
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        if tableView == self.tableView {
            cell.textLabel?.text = self.songs[indexPath.row]
        } else {
            cell.textLabel?.text = self.filteredSongs[indexPath.row]
        }
        return cell
    }
    
    override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        NSLog("You selected cell number: \(indexPath.row)!")
        let chosenSong = tableView.cellForRowAtIndexPath(indexPath)?.textLabel?.text
        NSLog("You selected spng: \(chosenSong)!")
        if let delegate = self.delegate{
            delegate.controller(self, didAddSong: chosenSong!)
        }
        Globals.CurrentInfo.currentSessionSongs.append(chosenSong!)
        self.performSegueWithIdentifier("yolo", sender: self)
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if (segue.identifier == "yolo") {
            print("here")
        }
        
    }

   
}
