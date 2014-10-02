//
//  LinkedList.m
//  LinkList
//
//  Created by tringapps, Inc. on 10/1/14.
//  Copyright (c) 2014 tringapps, Inc. All rights reserved.
//

#import "LinkedList.h"

#define SAFE_ARC_RETAIN(x) (x)

@implementation LinkedList

@synthesize first, last;


- (id)init {
    
    if ((self = [super init]) == nil) return nil;
    
    first = last = nil;
    size = 0;
    
    return self;
}

- (void)addObject:(id)anObject {
    [self pushBack:anObject];
}
- (NSArray *)allObjectsReverse {
    
    NSMutableArray *ret = [[NSMutableArray alloc] initWithCapacity:size];
    LNode *n = nil;
    
    for (n = last; n; n=n->prev) {
        [ret addObject:n->obj];
    }
    
    return [NSArray arrayWithArray:ret];
}


- (void)pushBack:(id)anObject {
    
    if (anObject == nil) return;
    
    LNode *n = LNodeMake(anObject, nil, last);
    if (size == 0) {
        first = last = n;
    } else {
        last->next = n;
        last = n;
    }
    size++;
}



@end

LNode * LNodeMake(id obj, LNode *next, LNode *prev) {
    LNode *n = malloc(sizeof(LNode));
    n->next = next;
    n->prev = prev;
    n->obj = SAFE_ARC_RETAIN(obj);
    return n;
};

