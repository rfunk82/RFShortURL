//
//  ViewController.m
//  RFShortURL
//
//  Created by Ricardo Funk on 12/2/13.
//  Copyright (c) 2013 Ricardo Funk. All rights reserved.
//

#import "ViewController.h"
#import "RFShortURL.h"

@interface ViewController ()
@property (strong, nonatomic) IBOutlet UITextField *websiteTextfield;
@property (strong, nonatomic) IBOutlet UILabel *displayShortUrl;
@property (strong, nonatomic) RFShortURL *smallUrl;

- (IBAction)goPressed:(id)sender;
@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    self.smallUrl = [[ RFShortURL alloc] init];
    [self.smallUrl setDelegate:self];
    

}

-(void)receivedUrl:(NSString *)url fromOriginalUrl:(NSString *)originalUrl
{
    self.displayShortUrl.text = url;
    
    NSLog(@"Original URL: %@ Received Short URL: %@", originalUrl,url);
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)goPressed:(id)sender {
    [self.smallUrl shortURL:self.websiteTextfield.text];
}
@end
