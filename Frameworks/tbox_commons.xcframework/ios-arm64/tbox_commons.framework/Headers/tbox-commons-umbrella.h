#ifdef __OBJC__
#import <UIKit/UIKit.h>
#else
#ifndef FOUNDATION_EXPORT
#if defined(__cplusplus)
#define FOUNDATION_EXPORT extern "C"
#else
#define FOUNDATION_EXPORT extern
#endif
#endif
#endif

#import "TboxCommons.h"
#import "TboxContacts.h"

FOUNDATION_EXPORT double tbox_commonsVersionNumber;
FOUNDATION_EXPORT const unsigned char tbox_commonsVersionString[];

