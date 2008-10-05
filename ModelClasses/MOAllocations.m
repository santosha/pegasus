#import "MOAllocations.h"

@implementation MOAllocations

- (NSString*) allocationText
{
	NSString* text = [NSString stringWithString:[[self order] code]];
	
	if( [self comment] )
		text = [text stringByAppendingFormat:@" (%@)",[self comment]];
	
	return text;
}

@end
