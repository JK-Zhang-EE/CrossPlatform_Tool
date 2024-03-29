#import <MyTool.h>
#import <MyToolObjC.h>
#import <stdlib.h>
#import <stdio.h>
#import <string>
#import <fstream>
#import <Foundation/Foundation.h>

@interface MyToolObjC(){
    
}
@end

@implementation MyToolObjC

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
