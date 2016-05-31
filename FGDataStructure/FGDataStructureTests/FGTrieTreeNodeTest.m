//
//  FGTrieTreeNodeTest.m
//  FGDataStructure
//
//  Created by Jingwei Huang on 26/05/2016.
//  Copyright © 2016 Feng Guo. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "FGTrieTreeNode.h"
#import "FGTrieTree.h"

@interface FGTrieTreeNodeTest : XCTestCase

@end

@implementation FGTrieTreeNodeTest

- (void)setUp {
    [super setUp];
    // Put setup code here. This method is called before the invocation of each test method in the class.
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void)testTrieTreeNode {
    FGTrieTree *tree1 = [self tree1];
    
    XCTAssertTrue(tree1.root.children[@"c"] != nil);
    XCTAssertTrue(tree1.root.children[@"d"] != nil);
    XCTAssertTrue(tree1.root.children[@"e"] == nil);
}

- (void)testHasWordWithPattern {
    FGTrieTree *tree1 = [self tree1];
    
    XCTAssertTrue([tree1 isFindWord:@"cat"]);
    XCTAssertTrue([tree1 isFindWord:@"c.t"]);
    XCTAssertFalse([tree1 isFindWord:@"cat1"]);
}

- (FGTrieTree *)tree1 {
    FGTrieTree *tree1 = [[FGTrieTree alloc] init];
    [tree1 addWord:@"cat"];
    [tree1 addWord:@"dog"];
    [tree1 addWord:@"cut"];
    [tree1 addWord:@"cot"];
    [tree1 addWord:@"cop"];
    [tree1 addWord:@"coop"];
    
    return tree1;
}


@end
