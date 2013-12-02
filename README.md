RFShortURL
==========

RFShortURL provides free URL redirection service. Turns a long URL into a much shorter one. 

Service provided by http://tinyurl.com

## How To Get Started

1. Download RFShortURL
2. #import "RFShortURL.h"
3. Create an instance of RFShortURL and set yourself as the delegate, then just listen for a response using the delegate method receivedUrl:

Ex:
     self.smallUrl = [[ RFShortURL alloc] init];
     [self.smallUrl setDelegate:self];
     [self.smallUrl shortURL:@"www.cnn.com"];
     
     Then we just listen:
     
     -(void)receivedUrl:(NSString *)url
    {
          NSLog(@"%@",url);
    }
    
    



![alt tag](http://i.imgur.com/RC30nPa.png)

