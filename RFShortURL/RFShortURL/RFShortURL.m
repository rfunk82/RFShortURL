//
//  RFShortURL.m
//  RFShortURL
//
//  Created by Ricardo Funk on 12/2/13.
//  Copyright (c) 2013 Ricardo Funk. All rights reserved.
//

#import "RFShortURL.h"


@implementation RFShortURL {
    NSURLConnection     *connection;
    NSMutableData       *receivedData;
    NSString            *originalUrl;
}

-(void)shortURL:(NSString *)providedUrl {
    
    originalUrl = providedUrl;
    
    NSString *fixedProvidedUrl = providedUrl;
    
    if (![fixedProvidedUrl hasPrefix:@"http://"]) {
        fixedProvidedUrl = [NSString stringWithFormat:@"http://%@",providedUrl];
    }
    
    NSURL *url = [NSURL URLWithString:[NSString stringWithFormat:@"http://tinyurl.com/api-create.php?url=%@",fixedProvidedUrl]];
    NSMutableURLRequest *request = [NSMutableURLRequest requestWithURL:url
                                                           cachePolicy:NSURLRequestReloadIgnoringCacheData
                                                       timeoutInterval:10];
    if (request) {
        [request setURL:url];
        connection = [[NSURLConnection alloc] initWithRequest:request delegate:self];
    }
    
}

- (void)connection:(NSURLConnection*)connection
didReceiveResponse:(NSURLResponse*)response;
{
    receivedData = [[NSMutableData alloc] init];
}

- (void)connection:(NSURLConnection*)connection
    didReceiveData:(NSData*)data;
{
    [receivedData appendData:data];
}

- (void)connection:(NSURLConnection*)connection
  didFailWithError:(NSError*)error;
{
    NSLog(@"WHOOPS! Something went wrong");
    UIAlertView* alert = [[UIAlertView alloc] initWithTitle:@"Error"
                                                    message:error.description
                                                   delegate:nil
                                          cancelButtonTitle:@"Close"
                                          otherButtonTitles:nil];
	[alert show];
}

- (void)connectionDidFinishLoading:(NSURLConnection*)connection
{
    NSString* url = [[NSString alloc] initWithData:receivedData encoding:NSASCIIStringEncoding];
    if ([[self delegate] respondsToSelector:@selector(receivedUrl:fromOriginalUrl:)]) {
        [[self delegate] receivedUrl:url fromOriginalUrl:originalUrl];
    }
}

@end
