//
//  NSMutableAttributedString+HLChainKit.m
//  HLChainKit
//
//  Created by kisekied on 2017/9/30.
//  Copyright © kisekied.
//

#import "NSMutableAttributedString+HLChainKit.h"

@implementation NSMutableAttributedString (HLChainKit)

- (NSMutableAttributedString *(^)(NSRange, NSAttributedString *))replace {
    return ^NSMutableAttributedString* (NSRange range, NSAttributedString *attrString) {
        [self replaceCharactersInRange:range withAttributedString:attrString];
        return self;
    };
}

- (NSMutableAttributedString *(^)(NSAttributedString *, NSUInteger))insert {
    return ^NSMutableAttributedString* (NSAttributedString *attrString, NSUInteger loc) {
        [self insertAttributedString:attrString atIndex:loc];
        return self;
    };
}

- (NSMutableAttributedString *(^)(NSAttributedString *))append {
    return ^NSMutableAttributedString* (NSAttributedString *attrString) {
        [self appendAttributedString:attrString];
        return self;
    };
}

- (NSMutableAttributedString *(^)(NSRange))deleteCharacters {
    return ^NSMutableAttributedString* (NSRange range) {
        [self deleteCharactersInRange:range];
        return self;
    };
}

@end
