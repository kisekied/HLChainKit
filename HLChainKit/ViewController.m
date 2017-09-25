//
//  ViewController.m
//  HLChainKit
//
//  Created by kisekied on 22/09/2017.
//  Copyright © 2017 kisekied. All rights reserved.
//

#import "ViewController.h"
#import "UIBezierPath+HLChainKit.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    [self bezierPathChainTest];
}


- (void)bezierPathChainTest {
    UIBezierPath *path = [UIBezierPath bezierPath];
    CGPoint p1 = CGPointMake(50, 50);
    CGPoint p2 = CGPointMake(100, 50);
    CGPoint p3 = CGPointMake(100, 100);

    path.moveTo(p1).lineTo(p2).lineTo(p3).close();

    CAShapeLayer *layer = [CAShapeLayer layer];
    layer.strokeColor = [UIColor blackColor].CGColor;
    layer.fillColor = [UIColor cyanColor].CGColor;
    layer.path = path.CGPath;
    [self.view.layer addSublayer:layer];
}

@end
