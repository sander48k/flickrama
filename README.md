# Flickrama

Flickrama is an iOS App that was built for the Philips job application assignment. This App demonstrates the use of the Flickr API by retrieving a list of photos based on a search term provided by the user. Each photo can be tapped to show a large version of the photo. As extra functionality all photos in the list can be browsed through (by swiping left and right) by tapping the 'photobook button' in the toolbar of the photo list.

## Build instructions
To build and run this App, open the Flickrama workspace (Flickrama.xcworkspace) in Xcode 7.3.1 or above, select the appropriate scheme and press &#8984;R.

## Dependencies
This App makes use of the following libraries

* [FlickrKit](https://github.com/devedup/FlickrKit "FlickrKit") : A library to access the Flickr API. This library was chosen from the suggested libraries by Flickr. From the suggested libraries, this library is the best maintained and provides the most convenient interface.
* [SDWebImage](https://github.com/rs/SDWebImage "SDWebImage") : An extension to UIImageView to load images from the web. This library was chosen because it provides a very convenient way to load images from the web. It also provides other useful functions like e.g. caching.
