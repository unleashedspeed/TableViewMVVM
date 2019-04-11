//
//  NamePictureCell.swift
//  mvvm
//
//  Created by Saurabh Gupta on 04/04/19.
//  Copyright © 2019 Saurabh. All rights reserved.
//

import UIKit

class NamePictureCell: UITableViewCell {

    @IBOutlet weak var nameLabel: UILabel?
    @IBOutlet weak var pictureImageView: UIImageView?
    
    var item: ProfileViewModelItem? {
        didSet {
            guard let item = item as? ProfileViewModelNamePictureItem else {
                return
            }
            
            nameLabel?.text = item.userName
            pictureImageView?.image = UIImage(named: item.pictureUrl)
        }
    }
    
    static var nib:UINib {
        return UINib(nibName: identifier, bundle: nil)
    }
    
    static var identifier: String {
        return String(describing: self)
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        pictureImageView?.layer.cornerRadius = 50
        pictureImageView?.clipsToBounds = true
        pictureImageView?.contentMode = .scaleAspectFit
        pictureImageView?.backgroundColor = UIColor.lightGray
    }

    override func prepareForReuse() {
        super.prepareForReuse()
        
        pictureImageView?.image = nil
    }    
}
