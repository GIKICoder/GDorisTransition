//
//  GCommentModalViewController.m
//  GDorisTransition_Example
//
//  Created by GIKI on 2020/6/11.
//  Copyright © 2020 810373457@qq.com. All rights reserved.
//

#import "GCommentModalViewController.h"
#import "GCommentTableViewCell.h"
#import "GDorisSwipeGestureTransition.h"
@interface GCommentModalViewController ()<UITableViewDelegate,UITableViewDataSource>
@property (nonatomic, strong) UITableView * tableView;
@property (nonatomic, strong) NSArray * datas;
@end

@implementation GCommentModalViewController


- (void)viewDidLoad
{
    [super viewDidLoad];
    
    self.title = @"comment Title";
    
    [self.view addSubview:({
        UITableView *tableView = [[UITableView alloc] initWithFrame:CGRectZero style:UITableViewStylePlain];
        tableView.delegate = self;
        tableView.dataSource = self;
        tableView.estimatedRowHeight = 0;
        tableView.estimatedSectionFooterHeight = 0;
        tableView.estimatedSectionHeaderHeight = 0;
        _tableView = tableView;
        tableView;
    })];
    
    [self loadDatas];
}

- (void)viewDidLayoutSubviews
{
    [super viewDidLayoutSubviews];
    self.tableView.frame = self.view.bounds;
}

- (void)loadDatas
{
    NSMutableArray * arrryM = [NSMutableArray array];
    NSDictionary * comment = @{@"name":@"今天排位又输了",
                               @"review":@"高考生要加油哦  希望这个不平凡的2020年可以善待七月的你们"
    };
    NSDictionary * comment1 = @{@"name":@"今天排位又输了",
                               @"review":@"近日哈佛大学医学院发布论文，从武汉医院附近交通车流量和百度上关于“咳嗽”与“腹泻”的搜索数据来得出关于病毒的结论，这是非常牵强和不严谨的。"
    };
    NSDictionary * comment2 = @{@"name":@"今天排位又输了",
                               @"review":@"事实上，武汉地区“咳嗽”的整体搜索量峰值跟每年的流感季是吻合的，而“腹泻”的搜索量与往年相比并没有明显变化。同时，百度指数显示，2019年12月左右“腹泻”搜索量还有轻微的下降。（如图）"
    };
    NSDictionary * comment3 = @{@"name":@"今天排位又输了",
                               @"review":@"高考生要加油哦  希望这个不平凡的2020年可以善待七月的你们"
    };
    NSDictionary * comment4 = @{@"name":@"今天排位又输了",
                               @"review":@"这篇论文的主要内容，是通过对比2018年10月和2019年10月这两个时间段，武汉中南医院、湖北妇幼保健院、武汉天佑医院、武汉同济医院、武汉中心医院和武汉协和医院这6所医院停车场内车辆数量的变化，以及对比这两个时间段里武汉网民在中国百度搜索引擎检索“咳嗽”和“腹泻”这两个关键词的数量，得出的一个结论：新冠肺炎被中国官方于12月底发现之前的2019年秋季甚至8月，当地就可能已经出现了异常的结论。"
    };
    NSDictionary * comment5 = @{@"name":@"今天排位又输了",
                                 @"review":@"高考生要加油哦  希望这个不平凡的2020年可以善待七月的你们"
      };
    NSDictionary * comment6 = @{@"name":@"今天排位又输了",
                                 @"review":@"高考生要加油哦  希望这个不平凡的2020年可以善待七月的你们"
      };
    NSDictionary * comment7 = @{@"name":@"今天排位又输了",
                               @"review":@"第一是时间上很荒谬。该研究根据停车场车流量和百度搜索数据把新冠病毒传播的时间推到了去年8月份，众所周知武汉军运会在去年10月份召开，如果按研究推定的8月份病毒已传播，当时世界各地来参加军运会的军人不可能没有感觉，美国的军人还曾因病在武汉的医院就医，更不可能没有察觉到。"
    };
    NSDictionary * comment8 = @{@"name":@"今天排位又输了",
                               @"review":@"高考生要加油哦  希望这个不平凡的2020年可以善待七月的你们"
    };
    NSDictionary * comment9 = @{@"name":@"今天排位又输了",
                                    @"review":@"高考生要加油哦  希望这个不平凡的2020年可以善待七月的你们"
         };
       NSDictionary * comment10 = @{@"name":@"今天排位又输了",
                                    @"review":@"高考生要加油哦  希望这个不平凡的2020年可以善待七月的你们"
         };
       NSDictionary * comment11 = @{@"name":@"今天排位又输了",
                                  @"review":@"高考生要加油哦  希望这个不平凡的2020年可以善待七月的你们"
       };
       NSDictionary * comment12 = @{@"name":@"今天排位又输了",
                                  @"review":@"此外，曾光还表示指出，这个荒谬的论文之所以会产生，在于其逻辑起点就是荒谬的。该论文是在把病毒起源确定为是武汉的前提下做假设的，如果离开了这个前提，拿同样方法去对全世界其他的城市做同样的分析，特别就近分析一下美国各大城市的情况，相信会得出多得数不胜数的类似结论。即使流行病学有宏观分析的生态学研究方法，该研究也是个典型的生态学谬误。作者放着明显与病毒联系更紧密的一些数据和现象不去分析，而找了这些与病毒联系不沾边、说服力很差的数据来分析，这个研究日后可以作为大数据流行病学教学的反面教材。"
       };
    [arrryM addObjectsFromArray:@[comment,comment1,comment2,comment3,comment4
                                  ,comment5,comment6,comment7,comment8
                                  ,comment9,comment10,comment11,comment12]];
    self.datas = arrryM.copy;
}

#pragma mark -- TableView DataSource

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1    ;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return self.datas.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    GCommentTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"tableViewCell"];
    if (!cell) {
        cell = [[GCommentTableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"tableViewCell"];
    }
    NSDictionary * dict = [self.datas objectAtIndex:indexPath.row];;
    cell.config = dict;
    return cell;
}

#pragma mark -- TableView Delegate

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
    NSDictionary * dict = [self.datas objectAtIndex:indexPath.row];
    NSString * clazz_str = [dict objectForKey:@"class"];
    Class clazz = NSClassFromString(clazz_str);
    UIViewController * vc = [[clazz alloc] init];
    [self.navigationController pushViewController:vc animated:YES];
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    NSDictionary * dict = [self.datas objectAtIndex:indexPath.row];
    NSString * review = dict[@"review"];
    
      CGSize size;
      NSDictionary *attribute = [NSDictionary dictionaryWithObjectsAndKeys:[UIFont systemFontOfSize:15], NSFontAttributeName, nil];
      size = [review boundingRectWithSize:CGSizeMake([UIScreen mainScreen].bounds.size.width-80, MAXFLOAT) options:NSStringDrawingUsesLineFragmentOrigin | NSStringDrawingUsesFontLeading attributes:attribute context:nil].size;
    return size.height+45;
}


- (void)scrollViewDidScroll:(UIScrollView *)scrollView
{
    [[self _swipeTransition] __scrollViewDidScroll:scrollView];
}

- (void)scrollViewWillBeginDragging:(UIScrollView *)scrollView
{
    [[self _swipeTransition] __scrollViewWillBeginDragging:scrollView];
}

- (void)scrollViewDidEndDragging:(UIScrollView *)scrollView willDecelerate:(BOOL)decelerate
{
    [[self _swipeTransition] __scrollViewDidEndDragging:scrollView willDecelerate:decelerate];
}

- (GDorisSwipeGestureTransition *)_swipeTransition
{
    if (self.dorisSwipeTransition) {
        return self.dorisSwipeTransition;
    }
    return self.navigationController.dorisSwipeTransition;
}

@end
