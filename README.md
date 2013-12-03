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

Created By
==========

Ricardo Funk ([@rfunk82](http://www.twitter.com/rfunk82))

License
=======

> This is licensed under an MIT License:

> Copyright (c) 2013 Ricardo Funk

> Permission is hereby granted, free of charge, to any person obtaining a
copy of this software and associated documentation files (the "Software"),
to deal in the Software without restriction, including without limitation
the rights to use, copy, modify, merge, publish, distribute, sublicense,
and/or sell copies of the Software, and to permit persons to whom the
Software is furnished to do so, subject to the following conditions:

> The above copyright notice and this permission notice shall be included in
all copies or substantial portions of the Software.

> THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING
FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER
DEALINGS IN THE SOFTWARE.



