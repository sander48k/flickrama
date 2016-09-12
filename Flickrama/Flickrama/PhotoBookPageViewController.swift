//
//  PhotoBookPageViewController.swift
//  Flickrama
//
//  Created by Sander on 12-09-16.
//  Copyright © 2016 Forty-eight K. All rights reserved.
//

import UIKit

class PhotoBookPageViewController: UIViewController {

    @IBOutlet weak var photoImageView: UIImageView!
    
    var photoURL:NSURL?
    var pageNr:Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if photoURL != nil {
            photoImageView.sd_setImageWithURL(photoURL)
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
