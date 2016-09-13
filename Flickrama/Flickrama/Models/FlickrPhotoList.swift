//
//  FlickrPhotoList.swift
//  Flickrama
//
//  Created by Sander on 07-09-16.
//  Copyright © 2016 Forty-eight K. All rights reserved.
//

import UIKit
import FlickrKit

/**
 The FlickrPhotoList manages a list of FlickrPhoto objects.
 */
class FlickrPhotoList {
    
    var photoList:[FlickrPhoto]!
    
    subscript(index: Int) -> FlickrPhoto {
        get {
            return photoList[index];
        }
    }
    
    init() {
        self.photoList = [FlickrPhoto]()
    }
    
    /**
     Fetches a list of photos whose title, description or tags match the provided text, from the Flickr service. The results of the fetch are appended to  photoList.
 
     - parameters:
        - text: the text to search for in titles, description or tags
     */
    func fetchByText(text: String!, callback:(()->())?) -> Void {
        FlickrKit.sharedFlickrKit().call("flickr.photos.search", args: ["text": text, "extras" : "description,views,owner_name"]) { (response, error) in
            
            if (response != nil) {
                let topPhotos = response["photos"] as! [NSObject: AnyObject]
                let photoArray = topPhotos["photo"] as! [[NSObject: AnyObject]]
                
                // for each found photo, instantiate a FlickrPhoto object and add to the photoList array
                for photoDict in photoArray {
                    let newPhoto = FlickrPhoto()
                    newPhoto.photoId = photoDict["id"] as? String
                    newPhoto.title = photoDict["title"] as? String
                    newPhoto.farm = String(photoDict["farm"]!)
                    newPhoto.server = photoDict["server"] as? String
                    newPhoto.secret = photoDict["secret"] as? String
                    newPhoto.ownerName = photoDict["ownername"] as? String
                    newPhoto.views = String(photoDict["views"]!)
                    
                    self.photoList.append(newPhoto)
                }
                
                NSLog("fetched \(self.photoList.count) photos")
            }
            else {
                // todo: do something usefull
            }
            
            // let the caller know we're done
            dispatch_async(dispatch_get_main_queue(), { () -> Void in
                callback?()
            })
        }
    }
    
    /**
     Removes all photos from the list
     */
    func clear() -> Void {
        self.photoList.removeAll()
    }
}
