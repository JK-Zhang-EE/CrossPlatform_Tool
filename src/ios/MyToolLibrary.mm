// MyToolLibrary.mm

#import <stdio.h>
#import <stdlib.h>
#import <string>

#import <MyTool.h>
#import <MyToolLibrary.h>

@interface MyToolLibrary(){
    
}
@end

@implementation MyToolLibrary

- (id) init {
    self = [super init];
    if (self){
        
    }
    return self;
}

- (void)dealloc{
    
}

- (NSString*)version
{
    return [NSString stringWithCString:MyTool::version.c_str() encoding:[NSString defaultCStringEncoding]];
}

- (int)getMathAddResult:(int)x y:(int)y
{
    return MyTool::getMathAddResult(x, y);
}

- (int)getMathSubResult:(int)x y:(int)y
{
    return MyTool::getMathSubResult(x, y);
}

@end
