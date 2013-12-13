//
//  RFShortURL.h
//  RFShortURL
//
//  Created by Ricardo Funk on 12/2/13.
//  Copyright (c) 2013 Ricardo Funk. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface RFShortURL : NSObject

-(void)shortURL:(NSString *)providedUrl;
@property (nonatomic) id delegate;

@end

@protocol RFShortURLDelegate <NSObject>

-(void)receivedUrl:(NSString *)url fromOriginalUrl:(NSString *)originalUrl;

@end
