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

#import "RNSensorsAccelerometer.h"
#import "RNSensorsBarometer.h"
#import "RNSensorsGravity.h"
#import "RNSensorsGyroscope.h"
#import "RNSensorsMagnetometer.h"
#import "RNSensorsOrientation.h"
#import "RNSensorsUtils.h"

FOUNDATION_EXPORT double RNSensorsVersionNumber;
FOUNDATION_EXPORT const unsigned char RNSensorsVersionString[];

