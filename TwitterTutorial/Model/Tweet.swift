//
//  Tweet.swift
//  TwitterTutorial
//
//  Created by billy.cychan on 14/8/2021.
//

import Foundation

struct Tweet {
    let caption: String
    let tweetID: String
    let uid: String
    let likes: Int
    let retweetCount: Int
    var timestamp: Date!
    let user: User
    
    init(user: User, tweetID: String, dictionary: [String: Any]) {
        self.user = user
        self.tweetID = tweetID
        
        self.caption = dictionary["caption"] as? String ?? ""
        self.uid = dictionary["uid"] as? String ?? ""
        self.likes = dictionary["likes"] as? Int ?? 0
        self.retweetCount = dictionary["retweetCount"] as? Int ?? 0
        
        if let timestamp = dictionary["timestamp"] as? Double {
            self.timestamp = Date(timeIntervalSince1970: timestamp)
        }
    }
}
