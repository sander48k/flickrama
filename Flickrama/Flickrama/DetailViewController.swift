//
//  DetailViewController.swift
//  Flickrama
//
//  Created by Sander on 06-09-16.
//  Copyright © 2016 Forty-eight K. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet weak var photoImageView: UIImageView!

    @IBOutlet weak var photoTitleLabel: UILabel!
    @IBOutlet weak var photoViewsLabel: UILabel!
    @IBOutlet weak var photoOwnerLabel: UILabel!

    var photoItem: FlickrPhoto? {
        
        didSet {
            // Update the view.
            self.configureView()
        }
    }

    func configureView() {
        // Update the user interface for the detail item.
        if let photo = self.photoItem {
            if let imageView = self.photoImageView {
                imageView.sd_setImageWithURL(photo.urlLarge)
                
                // assume the other UI elements are set when imageView is set
                photoTitleLabel.text = photo.title
                
                if let ownerName = photo.ownerName {
                    photoOwnerLabel.text = "Owner: \(ownerName)"
                }
                
                if let views = photo.views {
                    photoViewsLabel.text = "Views: \(views)"
                }
                
                
                self.navigationItem.title = photo.title
            }
        }
        else {
            self.navigationItem.title = ""
            photoTitleLabel.text = ""
            photoViewsLabel.text = ""
            photoOwnerLabel.text = ""
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.configureView()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

