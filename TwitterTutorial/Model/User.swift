//
//  User.swift
//  TwitterTutorial
//
//  Created by billy.cychan on 14/8/2021.
//

import Foundation
import Firebase

struct User {
    let fullname: String
    let email: String
    var profileImageUrl: URL?
    let username: String
    let uid: String
    
    var isCurrentUser: Bool { return Auth.auth().currentUser?.uid == uid }
    
    init(uid: String, dictionary: [String: Any]) {
        self.uid = uid
        self.fullname = dictionary["fullname"] as? String ?? ""
        self.email = dictionary["email"] as? String ?? ""
        self.username = dictionary["username"] as? String ?? ""
        
        if let profileImageUrlString = dictionary["profileImageUrl"] as? String {
            self.profileImageUrl = URL(string: profileImageUrlString)
        }
    }
}
