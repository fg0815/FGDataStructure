//
//  FGTriangleCount.h
//  FGDataStructure
//
//  Created by Stephen Zhang on 10/01/2017.
//  Copyright © 2017 Feng Guo. All rights reserved.
//

#import <Foundation/Foundation.h>

//Given an array of integers, how many three numbers can be found in the array, so that we can build an triangle whose three edges length is the three numbers that we find?
//Given array S = [3,4,6,7], return 3. They are:
//
//[3,4,6]
//[3,6,7]
//[4,6,7]
//Given array S = [4,4,4,4], return 4. They are:
//
//[4(1),4(2),4(3)]
//[4(1),4(2),4(4)]
//[4(1),4(3),4(4)]
//[4(2),4(3),4(4)]

@interface FGTriangleCount : NSObject

+ (NSInteger)findTriangleCountInArray:(NSArray<NSNumber *> *)array;

@end
