//
//  NSMutableAttributedString+HLChainKit.h
//  HLChainKit
//
//  Created by kisekied on 2017/9/30.
//  Copyright © kisekied.
//

#import <Foundation/Foundation.h>

@interface NSMutableAttributedString (HLChainKit)

@property (readonly, nonatomic, copy) NSMutableAttributedString* (^replace)(NSRange range, NSAttributedString *attrString);
@property (readonly, nonatomic, copy) NSMutableAttributedString* (^insert)(NSAttributedString *attrString, NSUInteger loc);
@property (readonly, nonatomic, copy) NSMutableAttributedString* (^append)(NSAttributedString *attrString);
@property (readonly, nonatomic, copy) NSMutableAttributedString* (^deleteCharacters)(NSRange range);

@end
