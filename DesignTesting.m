//
//  DesignTesting.m
//  restfulie-objc
//
//  Created by Bruno Fuster on 10/22/10.
//  Copyright 2010 __MyCompanyName__. All rights reserved.
//

#import "DesignTesting.h"
#import "Restfulie.h"
#import "Resource.h"
#import "Offer.h"

@implementation DesignTesting

#if USE_APPLICATION_UNIT_TEST

- (void) testAppDelegate {
    
	Request *rest = [Restfulie at:@"http://localhost"];
	Response *response = [rest get];
	
	Offer *r = [response resource];
	NSArray *rnow = [response resource];
	
	[rest release];
}

#else                           // all code under test must be linked into the Unit Test bundle

- (void) testRestfulie {
    
	Restfulie *rest = [Restfulie at:@"http://localhost"];
	[rest release];
    
}


#endif


@end
