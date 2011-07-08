#import <stdio.h>
#import "Hello.h"
#import <Foundation/NSString.h>
#import <Foundation/NSAutoreleasePool.h>

@implementation Hello
-(void) message: (NSString *) m {
	message = [m retain];
}

-(NSString *) message {
	return message;
}

+(void) doSomething {
	printf("Class method\n");
}

-(void) dealloc {
	[message release];
	[super dealloc];
}

@end

int main( int argc, const char *argv[]) {
	NSAutoreleasePool *pool = [NSAutoreleasePool new];
	Hello *h = [Hello new];

	NSString *string = [NSString stringWithFormat: @"Diga: %@ ", @"Mamae"];
	[h message: string];

	printf("%s\n", [[h message] cString]);

	printf("string reference count: %d\n", [string retainCount]);
	printf("h message reference count: %d\n", [[h message] retainCount]);

	[[h class] doSomething];
	[h release];

	[pool release];
	return 0;
}
