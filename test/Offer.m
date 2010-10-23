//
//  Offer.m
//  restfulie-objc
//
//  Created by Bruno Fuster on 10/23/10.
//  Copyright 2010 __MyCompanyName__. All rights reserved.
//

#import "Offer.h"


@implementation Offer

@synthesize description;

- (void) dealloc 
{
	[description release];
	[super dealloc];
}

@end
