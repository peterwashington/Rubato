//
//  AddTableViewController.swift
//  Rubato
//
//  Created by Gio on 11/27/15.
//  Copyright © 2015 Peter Washington. All rights reserved.
//

import UIKit

class AddTableViewController: UITableViewController, UISearchResultsUpdating {

    
    var songs = ["Eventually - Tame Impala",
    "Boblicity - Miles Davis",
    "Dimension - Wolfmother",
    "Breathe - Anna Lunoe",
    "All I Do - Logic"]
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

   
}
