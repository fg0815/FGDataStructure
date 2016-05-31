//
//  FGTreeNode.m
//  FGDataStructure
//
//  Created by Jingwei Huang on 23/04/2016.
//  Copyright © 2016 Feng Guo. All rights reserved.
//

#import "FGBSTreeNode.h"

@implementation FGBSTreeNode

- (instancetype)initWithData:(FGBSTreeObject *)data
{
    if (self = [super init]) {
        _data = data;
    }
    
    return self;
}

- (void)enumerateNodeByUsingBlock:(void (^)(FGBSTreeObject *object))block withOrderType:(FGTreeOrderType)type {
    if (!block) return;
    if (type == FGTreeOrderTypePreOrder) {
        block(self.data);
        if (self.left) [self.left enumerateNodeByUsingBlock:block withOrderType:FGTreeOrderTypeInOrder];
        if (self.right) [self.right enumerateNodeByUsingBlock:block withOrderType:FGTreeOrderTypeInOrder];
    } else if (type == FGTreeOrderTypeInOrder) {
        if (self.left) [self.left enumerateNodeByUsingBlock:block withOrderType:FGTreeOrderTypeInOrder];
        block(self.data);
        if (self.right) [self.right enumerateNodeByUsingBlock:block withOrderType:FGTreeOrderTypeInOrder];
    } else {
        if (self.left) [self.left enumerateNodeByUsingBlock:block withOrderType:FGTreeOrderTypeInOrder];
        block(self.data);
        if (self.right) [self.right enumerateNodeByUsingBlock:block withOrderType:FGTreeOrderTypeInOrder];
    }
    
}

@end
