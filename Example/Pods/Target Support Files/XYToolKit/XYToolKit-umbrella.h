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

#import "NSObject+XYKVOListener.h"
#import "XYBackgroundTaskHelper.h"
#import "XYBaseMacro.h"
#import "XYKVOListener.h"
#import "XYPhotoLibraryHelper.h"
#import "XYToolKit.h"
#import "XYWeakProxy.h"

FOUNDATION_EXPORT double XYToolKitVersionNumber;
FOUNDATION_EXPORT const unsigned char XYToolKitVersionString[];

