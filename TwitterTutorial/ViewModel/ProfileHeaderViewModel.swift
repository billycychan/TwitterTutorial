//
//  ProfileHeaderViewModel.swift
//  TwitterTutorial
//
//  Created by billy.cychan on 18/8/2021.
//

import Foundation

enum ProfileFilterOptions: Int, CaseIterable {
    case tweets
    case replies
    case likes

    var description: String {
        switch self {
        case .tweets: return "Tweets"
        case .replies: return "Tweets & Replies"
        case .likes: return "Likes"
        }
    }
}
