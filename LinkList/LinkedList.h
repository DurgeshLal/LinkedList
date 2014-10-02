//
//  LinkedList.h
//  LinkList
//
//  Created by tringapps, Inc. on 10/1/14.
//  Copyright (c) 2014 tringapps, Inc. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef struct LNode LNode;

struct LNode {
    __unsafe_unretained id obj;
    LNode *next;
    LNode *prev;
};

@interface LinkedList : NSObject {
    
    LNode *first;
    LNode *last;
    
    unsigned int size;
    
}

- (id)init;
- (void)addObject:(id)anObject;
- (void)pushBack:(id)anObject;
- (NSArray *)allObjectsReverse;

@property (readonly) LNode *first;
@property (readonly) LNode *last;


@end

LNode * LNodeMake(id obj, LNode *next, LNode *prev);   
