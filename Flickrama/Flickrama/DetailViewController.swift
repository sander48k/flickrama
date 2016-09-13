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

    var photoItem: FlickrPhoto? {
        
        didSet {
            // Update the view.
            self.configureView()
        }
    }

    func configureView() {
        // Update the user interface for the detail item.
        if let photo = self.photoItem {
            if let image = self.photoImageView {
                image.sd_setImageWithURL(photo.urlLarge)
            }
            self.navigationItem.title = photo.title
        }
        else {
            self.navigationItem.title = ""
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

