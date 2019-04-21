//
//  NewsfeedTableViewController.swift
//  FacebookNewsfeed
//
//  Created by Konstantinos Rizos on 01/02/2019.
//  Copyright © 2019 Konstantinos Rizos. All rights reserved.
//

import UIKit
import Toast_Swift

class NewsfeedTableViewController: UITableViewController {
    
    var searchController: UISearchController!
    var posts: [Post]?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.setupSearchController()
        self.fetchPosts()
        
        // Dynamic table view cell height
        tableView.separatorStyle = .none
        tableView.estimatedRowHeight = tableView.rowHeight
        tableView.rowHeight = UITableView.automaticDimension
    }
    
    func setupSearchController() {
        
        searchController = UISearchController(searchResultsController: nil)
        searchController.hidesNavigationBarDuringPresentation = false
        searchController.dimsBackgroundDuringPresentation = true
        searchController.searchBar.barStyle = .black
        navigationItem.titleView = searchController.searchBar
        definesPresentationContext = true
    }
    
    func fetchPosts() {
        
        self.posts = Post.fetchPosts()
        tableView.reloadData()
    }
    
    @IBAction func refresh(_ sender: UIRefreshControl) {
        sender.endRefreshing()
        tableView.reloadData()
        self.view.makeToast("The data has been reloaded", duration: 3, position: .bottom)
    }
}

// MARK: - UITableViewDataSource

extension NewsfeedTableViewController {
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if let posts = posts {
            return posts.count
        } else {
            return 0
        }
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "PostCell", for: indexPath) as! PostCell
        
        cell.post = self.posts?[indexPath.row]
        return cell
    }
    
    
}
