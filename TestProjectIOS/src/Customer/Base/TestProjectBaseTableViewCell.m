//
//  TestProjectBaseTableViewCell.m
//  TestProjectIOS
//
//  Created by zjrcumac on 2023/4/26.
//

#import "TestProjectBaseTableViewCell.h"

@implementation TestProjectBaseTableViewCell

- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier {
    if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier]) {
        self.accessoryType = UITableViewCellAccessoryNone;
        [self addSubview:self.contentView];
    }
    return self;
}

@end
