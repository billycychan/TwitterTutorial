//
//  EditProfileViewModel.swift
//  TwitterTutorial
//
//  Created by billy.cychan on 8/9/2021.
//

import Foundation

enum EditProfileOptions: Int, CaseIterable {
    case fullname
    case username
    case bio
    
    var description: String {
        switch self {
        case .username: return "Username"
        case .fullname: return "Full name"
        case .bio: return "bio"
        }
    }
}
