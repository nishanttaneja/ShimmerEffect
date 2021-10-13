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
        backgroundColor = .lightGray
        textLabel?.backgroundColor = .darkGray
        detailTextLabel?.backgroundColor = .darkGray
        textLabel?.text = "                                                                        "
        detailTextLabel?.text = "                                                                          "
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
