//
//  CollectionViewTableViewCell.swift
//  NetflixClone
//
//  Created by Vivek  Garg on 12/11/24.
//

import UIKit

class CollectionViewTableViewCell: UITableViewCell {
    // Step 1 Delete all boiler code because we are not using XIB or storyboards.
    
    static let identifier = "CollectionViewTableViewCell"
    
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        contentView.backgroundColor = .systemPink
    }
    
    required init?(coder: NSCoder) {
        // need it because we are indicating that we are not using storyboards for any UI.
        fatalError()
    }

}
