//
//  FGConnectingGraphII.h
//  FGDataStructure
//
//  Created by Stephen Zhang on 12/01/2017.
//  Copyright © 2017 Feng Guo. All rights reserved.
//

#import <Foundation/Foundation.h>

//Given n nodes in a graph labeled from 1 to n. There is no edges in the graph at beginning.
//
//You need to support the following method:
//1. connect(a, b), an edge to connect node a and node b
//2. query(a), Returns the number of connected component nodes which include node a.
//Example
//5 // n = 5
//query(1) return 1
//connect(1, 2)
//query(1) return 2
//connect(2, 4)
//query(1) return 3
//connect(1, 4)
//query(1) return 3

@interface FGConnectingGraphII : NSObject

- (instancetype)initWithN:(NSInteger)n NS_DESIGNATED_INITIALIZER;
- (instancetype)init NS_UNAVAILABLE;
- (void)connect:(NSInteger)a with:(NSInteger)b;
- (NSInteger)query:(NSInteger)node;

@end
