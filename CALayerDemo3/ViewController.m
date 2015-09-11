//
//  ViewController.m
//  CALayerDemo3
//
//  Created by lz on 15/9/11.
//  Copyright (c) 2015年 SY. All rights reserved.
//

#import "ViewController.h"

#define RAD_COR(x) ((x)/180.0*M_PI)

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIView *backgroundView;
@property (weak, nonatomic) IBOutlet UIImageView *picImageView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self test3];
}

- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event
{
    [super touchesBegan:touches withEvent:event];
    CATransform3D transform = self.picImageView.layer.transform;
    transform = CATransform3DRotate(transform, RAD_COR(180), 0, 1, 0);
    [UIView animateWithDuration:2.0f animations:^{
        self.picImageView.layer.transform = transform;
        self.backgroundView.layer.transform = transform;
    }];
    [super touchesBegan:touches withEvent:event];
}

- (void)test3
{
    CATransform3D transform = CATransform3DIdentity;
    transform = CATransform3DRotate(transform, RAD_COR(180), 0, 1, 0);
    self.picImageView.layer.doubleSided = NO;
    self.picImageView.layer.transform = transform;
    self.backgroundView.layer.transform = transform;

}

@end
