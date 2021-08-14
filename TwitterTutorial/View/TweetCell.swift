//
//  TweetCell.swift
//  TwitterTutorial
//
//  Created by billy.cychan on 14/8/2021.
//

import Foundation
import UIKit

class TweetCell: UICollectionViewCell {
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        backgroundColor = .red
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

