//
//    Copyright (c) 2013 Shyam Bhat
//
//    Permission is hereby granted, free of charge, to any person obtaining a copy of
//    this software and associated documentation files (the "Software"), to deal in
//    the Software without restriction, including without limitation the rights to
//    use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of
//    the Software, and to permit persons to whom the Software is furnished to do so,
//    subject to the following conditions:
//
//    The above copyright notice and this permission notice shall be included in all
//    copies or substantial portions of the Software.
//
//    THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
//    IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS
//    FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR
//    COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER
//    IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN
//    CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.

#import "InstagramMedia.h"

@implementation InstagramMedia

- (id)initWithInfo:(NSDictionary *)info
{
    self = [super init];
    if (self) {
        // Temporary messy checks
//        NSString *linkURL = [info objectForKey:@"link"];
//        if (linkURL && (![linkURL isEqualToString:@"<null>"]) && (linkURL !=nil) ) {
//            self.linkUrl = linkURL;
//        }
        
        NSDictionary * imagesInfo = [info objectForKey:@"images"];
        if (imagesInfo && (![imagesInfo isEqual:[NSNull null]]) && (imagesInfo !=nil) ) {
            _link = [[imagesInfo objectForKey:@"thumbnail"] objectForKey:@"url"];
        }
        
        id caption = [info  objectForKey:@"caption"];
        if ([caption isKindOfClass:[NSDictionary class]]) {
            NSString *text = [caption objectForKey:@"text"];
            if (text && (![text isEqualToString:@"<null>"]) && (text !=nil) )
            {
//                _caption = text;
            }
        }
    }
    return self;
}

@end