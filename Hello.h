#import <Foundation/NSObject.h>

@class NSString;

@interface Hello : NSObject {
	NSString *message;
}

-(void) message: (NSString *) m;
-(NSString *) message;
+(void) doSomething;

-(void) dealloc;

@end
