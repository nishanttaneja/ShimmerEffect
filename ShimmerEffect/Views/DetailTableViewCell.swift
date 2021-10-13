//
//  DetailTableViewCell.swift
//  ShimmerEffect
//
//  Created by Sciffer Analytics on 13/10/21.
//

import UIKit

class DetailTableViewCell: UITableViewCell {
    
    // MARK: Properties
    
    static let identifier = "Detail-Cell"
    
    
    // MARK: Constructors
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: .subtitle, reuseIdentifier: reuseIdentifier)
//        textLabel?.text = "                                                         "
//        detailTextLabel?.text = "                                           "
        textLabel?.backgroundColor = .init(white: 1, alpha: 0.1)
        detailTextLabel?.backgroundColor = .init(white: 1, alpha: 0.1)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
