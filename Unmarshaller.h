//
//  Unmarshaller.h
//  restfulie-objc
//
//  Created by Bruno Fuster on 10/23/10.
//  Copyright 2010 __MyCompanyName__. All rights reserved.
//

#import <Cocoa/Cocoa.h>


@protocol Unmarshaller

-(NSDictionary *) unmarshall:(NSObject *) data;

@end