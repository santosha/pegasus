//
//  PopupView.h
//  Pegasus
//
//  Created by Michele Longhi on 08/06/08.
//  Copyright 2008 Michele Longhi Digital Studio. All rights reserved.
//

#import <Cocoa/Cocoa.h>


@interface PopupView : NSView 
{
	IBOutlet NSObjectController* allocationController;
	
	IBOutlet NSTextField* code;
	IBOutlet NSTextField* period1;
	IBOutlet NSTextField* comment;
}

@property (assign,readwrite) NSObjectController* allocationController;
@property (assign,readwrite) NSTextField* code;
@property (assign,readwrite) NSTextField* period1;
@property (assign,readwrite) NSTextField* comment;

@end
