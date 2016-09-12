//
//  FlickrPhoto.swift
//  Flickrama
//
//  Created by Sander on 07-09-16.
//  Copyright © 2016 Forty-eight K. All rights reserved.
//

import UIKit
import FlickrKit

class FlickrPhoto {
    
    var propertyDict:NSDictionary?
    
    var title:String?
    var photoId:String?
    
    // below properties are needed to construct the URL of the photo
    var server:String?
    var secret:String?
    var farm:String?
    
    var urlLargeSquare:NSURL {
        get {
            return FlickrKit.sharedFlickrKit().photoURLForSize(FKPhotoSizeLargeSquare150, photoID: self.photoId, server: self.server, secret: self.secret, farm: self.farm)
        }
    }
    
    var urlLarge:NSURL {
        get {
            return FlickrKit.sharedFlickrKit().photoURLForSize(FKPhotoSizeLarge1024, photoID: self.photoId, server: self.server, secret: self.secret, farm: self.farm)
        }
    }
    
    init() {
    }
    
    /**
     instantiates a FlickrPhoto object with a dictionary of properties
     
     -Parameters:
        -propertyDict: a dictionary containing properties of the photo.
     */
    init(propertyDict:NSDictionary?) {
        self.propertyDict = propertyDict
    }
}
