//
//  ViewController.m
//  dbNexus
//
//  Created by Todd Fearn on 2/14/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "ViewController.h"

@implementation ViewController
@synthesize webView = _webView;
@synthesize activityIndicatorView = _activityIndicatorView;

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

#pragma mark - View lifecycle

- (void)viewDidLoad {
    [super viewDidLoad];
    
    NSString *urlAddress = @"https://test.salesforce.com";
    NSURL *url = [NSURL URLWithString:urlAddress];
    NSURLRequest *requestObj = [NSURLRequest requestWithURL:url];
    [self.webView loadRequest:requestObj];
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation {
    return YES;
}

- (void)dealloc {
    self.webView = nil;
    self.activityIndicatorView = nil;
    [super dealloc];
}

- (void)webViewDidStartLoad:(UIWebView *)webView {
    [self.activityIndicatorView startAnimating];
}

- (void)webViewDidFinishLoad:(UIWebView *)webView {
    [self.activityIndicatorView stopAnimating];
}

@end
