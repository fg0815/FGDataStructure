//
//  FGFBQuestions.m
//  FGDataStructure
//
//  Created by Jingwei Huang on 15/05/2016.
//  Copyright © 2016 Feng Guo. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "FGFBQuestions.h"

@interface FGFBQuestionsTest : XCTestCase

@end

@implementation FGFBQuestionsTest

- (void)setUp {
    [super setUp];
    // Put setup code here. This method is called before the invocation of each test method in the class.
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void)testArrayByMovingZeroWithNumbers {
    NSArray *data1 = @[@1, @0, @2, @0, @0, @3, @4];
    NSArray *data1Result = [FGFBQuestions arrayByMovingZeroWithNumbers:data1];
    XCTAssertTrue([data1Result[4] isEqualToNumber:@0]);
    XCTAssertTrue([data1Result[5] isEqualToNumber:@0]);
    XCTAssertTrue([data1Result[6] isEqualToNumber:@0]);
    XCTAssertTrue([data1Result containsObject:@1]);
    XCTAssertTrue([data1Result containsObject:@2]);
    XCTAssertTrue([data1Result containsObject:@3]);
    XCTAssertTrue([data1Result containsObject:@4]);
    XCTAssertTrue(data1Result.count == 7);
    
    NSArray *data2Result = [FGFBQuestions arrayByQuickMovingZeroWithNumbers:data1];
    XCTAssertTrue([data2Result[4] isEqualToNumber:@0]);
    XCTAssertTrue([data2Result[5] isEqualToNumber:@0]);
    XCTAssertTrue([data2Result[6] isEqualToNumber:@0]);
    XCTAssertTrue([data2Result containsObject:@1]);
    XCTAssertTrue([data2Result containsObject:@2]);
    XCTAssertTrue([data2Result containsObject:@3]);
    XCTAssertTrue([data2Result containsObject:@4]);
    XCTAssertTrue(data2Result.count == 7);
}

- (void)testRemoveDuplicatedWords {
    NSArray *data1 = @[@"one", @"two", @"three", @"four", @"two"];
    NSArray *data1Result = [FGFBQuestions removeDuplicatedWords:data1 perserveOrder:NO];
    
    XCTAssertTrue(data1Result.count == 4);
    XCTAssertTrue([data1Result containsObject:@"one"]);
    XCTAssertTrue([data1Result containsObject:@"two"]);
    XCTAssertTrue([data1Result containsObject:@"three"]);
    XCTAssertTrue([data1Result containsObject:@"four"]);
    
    NSArray *data2Result = [FGFBQuestions removeDuplicatedWords:data1 perserveOrder:YES];
    NSArray *data2ExpectedResult = @[@"one", @"two", @"three", @"four"];
    XCTAssertTrue([data2Result isEqualToArray:data2ExpectedResult]);
}

- (void)testHasSumOf3IntsFromArray {
    NSArray *data1 = @[@3, @10, @2, @(-3), @100, @4, @0, @(-103)];
    XCTAssertTrue([FGFBQuestions hasSumOf3IntsFromArray:data1 target:10]);
    XCTAssertTrue([FGFBQuestions hasSumOf3IntsFromArray:data1 target:14]);
    XCTAssertTrue([FGFBQuestions hasSumOf3IntsFromArray:data1 target:4]);
    XCTAssertTrue([FGFBQuestions hasSumOf3IntsFromArray:data1 target:0]);
    XCTAssertFalse([FGFBQuestions hasSumOf3IntsFromArray:data1 target:30]);
}

- (void)testCountNumbersFromString {
    NSString *dataString1 = @"1122344";
    NSArray *dataResult1 = [FGFBQuestions countNumbersFromString:dataString1 numberOfRecursives:2];
    
    XCTAssertTrue([dataResult1[0] isEqualToString:@"21221324"]);
    XCTAssertTrue([dataResult1[1] isEqualToString:@"12112211131214"]);
}

- (void)testFindLongestSubstringInString {
    NSString *data1 = @"abcabcbb";
    XCTAssertTrue([FGFBQuestions findLongestSubstringInString:data1] == 3);
}

- (void)testBinarySum {
    NSInteger data1 = 10111;
    NSInteger data2 = 11111;
    
    XCTAssertTrue([FGFBQuestions binaryNumber1:data1 addBinaryNumber2:data2] == 110110);
    XCTAssertTrue([FGFBQuestions quickBinaryNumber1:data1 addBinaryNumber2:data2] == 110110);
}

@end
