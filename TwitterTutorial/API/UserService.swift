//
//  UserService.swift
//  TwitterTutorial
//
//  Created by billy.cychan on 14/8/2021.
//

import Foundation
import Firebase

struct UserService {
    static let shared = UserService()
    
    func fetchUser() {
        guard let uid = Auth.auth().currentUser?.uid else { return }
        print("DEBUG: Current user uid is \(uid)")
        
        REF_USERS.child(uid).observeSingleEvent(of: .value) { snapshot in
            guard let dictionary = snapshot.value as? [String: AnyObject] else { return }            
            let user = User(uid: uid, dictionary: dictionary)

        }
    }
}
