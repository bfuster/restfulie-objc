//
//  Request.m
//  restfulie-objc
//
//  Created by Bruno Fuster on 10/22/10.
//  Copyright 2010 Caelum. All rights reserved.
//

#import "Request.h"
#import "Response.h"
#import "Unmarshaller.h"
#import "JSONUnmarshaller.h"

@implementation Request
@synthesize URI;

+(Request *) initWithURI:(NSString *) uri {
	
	Request *req = [Request initWithURI:[NSURL URLWithString:uri]];
	return req;
}

+(Request *) initWithURI:(NSString *)uri encoding:(id) encoding {

	self = [super init];
	
	if (self) {
		//self.encoding = encoding;
		URI = [NSURL URLWithString:uri];
	}
	
	return self;
}

-(Response *) get {
	
	NSURLRequest *request = [NSURLRequest requestWithURL:[NSURL 
														  URLWithString:@"http://ws-core.appspot.com/search/nearby/-23.606267/-46.693096/json"]];
	
	NSData *response = [NSURLConnection sendSynchronousRequest:request
											 returningResponse:nil 
														 error:nil];
	
	NSString *json_string = [[NSString alloc] initWithData:response 
												  encoding:NSUTF8StringEncoding];
	
	//study objc polimorphism
	JSONUnmarshaller *unmarshall = [[JSONUnmarshaller alloc] init];
	NSDictionary *dataDictionary	= [unmarshall unmarshall:json_string];
	
	[json_string release];
	[response release];
	[request release];

	
}

-(void) dealloc {
	
	[URI release];
	[super dealloc];
}

@end
