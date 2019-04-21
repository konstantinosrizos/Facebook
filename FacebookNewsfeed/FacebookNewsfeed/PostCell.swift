//
//  PostCell.swift
//  FacebookNewsfeed
//
//  Created by Konstantinos Rizos on 01/02/2019.
//  Copyright © 2019 Konstantinos Rizos. All rights reserved.
//

import UIKit
  
class PostCell: UITableViewCell {
    
    @IBOutlet weak var timeAgoLabel: UILabel!
    @IBOutlet weak var usernameLabel: UILabel!
    @IBOutlet weak var profileImageView: UIImageView!
    @IBOutlet weak var postImageView: UIImageView!
    @IBOutlet weak var captionLabel: UILabel!
    @IBOutlet weak var postStatsLabel: UILabel!
    
    var post: Post! {
        didSet {
            self.updateUI()
        }
    }
    
    func updateUI() {
        
        profileImageView.image = post.createdBy.profileImage
        usernameLabel.text = post.createdBy.username
        timeAgoLabel.text = post.timeAgo
        captionLabel.text = post.caption
        postImageView.image = post.image
        postStatsLabel.text = "\(post.numberOfLikes!) Likes     \(post.numberOfComments!) Comments     \(post.numberOfShares!) Shares"
    }
    
    
}
