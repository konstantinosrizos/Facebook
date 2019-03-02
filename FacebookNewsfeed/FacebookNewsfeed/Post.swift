//
//  Post.swift
//  FacebookNewsfeed
//
//  Created by Konstantinos Rizos on 01/02/2019.
//  Copyright © 2019 Konstantinos Rizos. All rights reserved.
//

import UIKit

struct Post
{
    var createdBy: User
    var timeAgo: String?
    var caption: String?
    var image: UIImage?
    var numberOfLikes: Int?
    var numberOfComments: Int?
    var numberOfShares: Int?
    
    static func fetchPosts() -> [Post]
    {
        var posts = [Post]()
        
        let riz = User(username: "Rizos Konstantinos", profileImage: UIImage(named: "RizosOutline"))
        let post1 = Post(createdBy: riz, timeAgo: "1 hr", caption: "Whether you're 9 or 90, stop trying to fix the things you're bad at, and focus on the things you're good at. ~ Gary Vaynerchuck ~", image: UIImage(named: "1"), numberOfLikes: 12, numberOfComments: 32, numberOfShares: 28)
        let post2 = Post(createdBy: riz, timeAgo: "3 hrs", caption: "Spend zero percent of your energy on the things that don't matter. ~ Gary Vaynerchuck ~", image: UIImage(named: "2"), numberOfLikes: 8, numberOfComments: 12, numberOfShares: 92)
        let post3 = Post(createdBy: riz, timeAgo: "5 hrs", caption: "Are you willing to bleed out of your fucking eyes for your dream? ~ Gary Vaynerchuck ~", image: UIImage(named: "3"), numberOfLikes: 8, numberOfComments: 92, numberOfShares: 89)
        
        let brendon = User(username: "Brendon Burchard", profileImage: UIImage(named: "brendon"))
        let post4 = Post(createdBy: brendon, timeAgo: "2 hrs", caption: "You are not selfish for desiring a better life. If you appreciate what you have but feel called to the next level, that's something to listen to.", image: UIImage(named: "4"), numberOfLikes: 94, numberOfComments: 8, numberOfShares: 918)
        let post5 = Post(createdBy: brendon, timeAgo: "8 hrs", caption: "No matter how small you start, start something that matters. Believe in your dreams and begin.", image: UIImage(named: "5"), numberOfLikes: 99, numberOfComments: 83, numberOfShares: 89)
        let post6 = Post(createdBy: brendon, timeAgo: "Yesterday", caption: "Congratulations to the graduating class of high performance academy 2017! Thank you for your engagement, joy and confidence. Now go serve the world!", image: UIImage(named: "6"), numberOfLikes: 9, numberOfComments: 82, numberOfShares: 74)
        
        posts.append(post1)
        posts.append(post4)
        posts.append(post2)
        posts.append(post5)
        posts.append(post3)
        posts.append(post6)
        
        return posts
    }
}

struct User
{
    var username: String?
    var profileImage: UIImage?
}

