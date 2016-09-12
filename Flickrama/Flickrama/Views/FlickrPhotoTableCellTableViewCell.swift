//
//  FlickrPhotoTableCellTableViewCell.swift
//  Flickrama
//
//  Created by Sander on 09-09-16.
//  Copyright © 2016 Forty-eight K. All rights reserved.
//

import UIKit

class FlickrPhotoTableCellTableViewCell: UITableViewCell {

    @IBOutlet weak var photoThumbImageView: UIImageView!
    @IBOutlet weak var photoTitleLabel: UILabel!
    
    override func awakeFromNib() {
        
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
