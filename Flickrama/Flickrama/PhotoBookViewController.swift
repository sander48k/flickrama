//
//  PhotoBookViewController.swift
//  Flickrama
//
//  Created by Sander on 12-09-16.
//  Copyright © 2016 Forty-eight K. All rights reserved.
//

import UIKit

class PhotoBookViewController: UIViewController, UIPageViewControllerDataSource {

    var photoList:FlickrPhotoList?
    var pageController:UIPageViewController?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        pageController!.dataSource = self
        
        if let firstController = viewControllerAtPage(0) {
            pageController!.setViewControllers([firstController], direction: .Forward, animated: true, completion: nil)
        }
    }
    @IBAction func didPressCloseButton(sender: AnyObject) {
        self.dismissViewControllerAnimated(true, completion: nil)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    func viewControllerAtPage(pageNr:Int) -> PhotoBookPageViewController? {
        
        if pageNr < 0 || pageNr >= photoList?.photoList.count {
            return nil
        }
        
        if let page = UIStoryboard(name: "Main", bundle: nil).instantiateViewControllerWithIdentifier("photoBookPage") as? PhotoBookPageViewController {
            page.photoURL = self.photoList?[pageNr].urlLarge
            page.pageNr = pageNr
            
            return page
        }
        
        return nil
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "embedPageController" {
            if let controller = segue.destinationViewController as? UIPageViewController {
                pageController = controller
            }
        }
    }
    
    // MARK: - UIPageViewControllerDataSource
    
    func pageViewController(pageViewController: UIPageViewController,
                            viewControllerBeforeViewController viewController: UIViewController) -> UIViewController? {
        
        if let page = viewController as? PhotoBookPageViewController {
            return self.viewControllerAtPage(page.pageNr - 1)
        }
        else {
            return nil
        }
    }
    
    func pageViewController(pageViewController: UIPageViewController,
                            viewControllerAfterViewController viewController: UIViewController) -> UIViewController? {
        if let page = viewController as? PhotoBookPageViewController {
            return self.viewControllerAtPage(page.pageNr + 1)
        }
        else {
            return nil
        }
    }

}
