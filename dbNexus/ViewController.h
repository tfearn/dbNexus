//
//  ViewController.h
//  dbNexus
//
//  Created by Todd Fearn on 2/14/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController {
    IBOutlet UIWebView *_webView;
    IBOutlet UIActivityIndicatorView *_activityIndicatorView;
}
@property (nonatomic, retain) UIWebView *webView;
@property (nonatomic, retain) UIActivityIndicatorView *activityIndicatorView;

@end
