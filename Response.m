//
//  Response.m
//  restfulie-objc
//
//  Created by Bruno Fuster on 10/22/10.
//  Copyright 2010 Caelum. All rights reserved.
//

#import "Response.h"


@implementation Response

@synthesize data;

- (id) resource 
{
	return @"something";
}

- (id) deserialize
{

	NSLog(@"something %@", self.data);
	
}

- (void) dealloc
{
	[data release];
	[super dealloc];
}


@end
