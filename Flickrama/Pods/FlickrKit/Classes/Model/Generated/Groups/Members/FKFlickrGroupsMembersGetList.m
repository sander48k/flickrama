//
//  FKFlickrGroupsMembersGetList.m
//  FlickrKit
//
//  Generated by FKAPIBuilder.
//  Copyright (c) 2013 DevedUp Ltd. All rights reserved. http://www.devedup.com
//
//  DO NOT MODIFY THIS FILE - IT IS MACHINE GENERATED


#import "FKFlickrGroupsMembersGetList.h" 

@implementation FKFlickrGroupsMembersGetList



- (BOOL) needsLogin {
    return YES;
}

- (BOOL) needsSigning {
    return YES;
}

- (FKPermission) requiredPerms {
    return 0;
}

- (NSString *) name {
    return @"flickr.groups.members.getList";
}

- (BOOL) isValid:(NSError **)error {
    BOOL valid = YES;
	NSMutableString *errorDescription = [[NSMutableString alloc] initWithString:@"You are missing required params: "];
	if(!self.group_id) {
		valid = NO;
		[errorDescription appendString:@"'group_id', "];
	}

	if(error != NULL) {
		if(!valid) {	
			NSDictionary *userInfo = @{NSLocalizedDescriptionKey: errorDescription};
			*error = [NSError errorWithDomain:FKFlickrKitErrorDomain code:FKErrorInvalidArgs userInfo:userInfo];
		}
	}
    return valid;
}

- (NSDictionary *) args {
    NSMutableDictionary *args = [NSMutableDictionary dictionary];
	if(self.group_id) {
		[args setValue:self.group_id forKey:@"group_id"];
	}
	if(self.membertypes) {
		[args setValue:self.membertypes forKey:@"membertypes"];
	}
	if(self.per_page) {
		[args setValue:self.per_page forKey:@"per_page"];
	}
	if(self.page) {
		[args setValue:self.page forKey:@"page"];
	}

    return [args copy];
}

- (NSString *) descriptionForError:(NSInteger)error {
    switch(error) {
		case FKFlickrGroupsMembersGetListError_GroupNotFound:
			return @"Group not found";
		case FKFlickrGroupsMembersGetListError_SSLIsRequired:
			return @"SSL is required";
		case FKFlickrGroupsMembersGetListError_InvalidSignature:
			return @"Invalid signature";
		case FKFlickrGroupsMembersGetListError_MissingSignature:
			return @"Missing signature";
		case FKFlickrGroupsMembersGetListError_LoginFailedOrInvalidAuthToken:
			return @"Login failed / Invalid auth token";
		case FKFlickrGroupsMembersGetListError_UserNotLoggedInOrInsufficientPermissions:
			return @"User not logged in / Insufficient permissions";
		case FKFlickrGroupsMembersGetListError_InvalidAPIKey:
			return @"Invalid API Key";
		case FKFlickrGroupsMembersGetListError_ServiceCurrentlyUnavailable:
			return @"Service currently unavailable";
		case FKFlickrGroupsMembersGetListError_WriteOperationFailed:
			return @"Write operation failed";
		case FKFlickrGroupsMembersGetListError_FormatXXXNotFound:
			return @"Format \"xxx\" not found";
		case FKFlickrGroupsMembersGetListError_MethodXXXNotFound:
			return @"Method \"xxx\" not found";
		case FKFlickrGroupsMembersGetListError_InvalidSOAPEnvelope:
			return @"Invalid SOAP envelope";
		case FKFlickrGroupsMembersGetListError_InvalidXMLRPCMethodCall:
			return @"Invalid XML-RPC Method Call";
		case FKFlickrGroupsMembersGetListError_BadURLFound:
			return @"Bad URL found";
  
		default:
			return @"Unknown error code";
    }
}

@end
