//
//  Response.h
//  restfulie-objc
//
//  Created by Bruno Fuster on 10/22/10.
//  Copyright 2010 Caelum. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Resource.h";

@interface Response : NSObject {

	NSDictionary *data;
	
}

@property (nonatomic, retain) NSDictionary *data;

-(id) resource;

@end
