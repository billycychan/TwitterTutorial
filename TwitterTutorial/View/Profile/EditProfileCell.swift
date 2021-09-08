//
//  EditProfileCell.swift
//  TwitterTutorial
//
//  Created by billy.cychan on 8/9/2021.
//

import UIKit

class EditProfileCell: UITableViewCell {
    
    // MARK: - Properties
    
    // MARK: - Lifecycle
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        backgroundColor = .systemPink
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    

    // MARK: - Helpers

}
