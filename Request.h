//
//  Request.h
//  restfulie-objc
//
//  Created by Bruno Fuster on 10/22/10.
//  Copyright 2010 Caelum. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Response.h"
#import "Unmarshaller.h"
#import "JSONUnmarshaller.h"



@interface Request : NSObject {
	
	id *encoding;
	NSURL *URI;
	
}

@property (nonatomic, retain) id *encoding;
@property (nonatomic, retain) NSURL *URI;

+(Request *) initWithURI:(NSString *)uri;

+(Request *) initWithURI:(NSString *)uri 
				encoding: (id) encoding;


/*
 *	Request through http some REST service
 *
 */
-(Response *) get;

@end
