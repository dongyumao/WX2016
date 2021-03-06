//
//  GoodsInfoEntity.m
//  RKWXT
//
//  Created by SHB on 16/1/8.
//  Copyright © 2016年 roderick. All rights reserved.
//

#import "GoodsInfoEntity.h"

@implementation GoodsInfoEntity

//商品详情
+(GoodsInfoEntity*)initGoodsInfoEntity:(NSDictionary *)dic{
    if(!dic){
        return nil;
    }
    return [[self alloc] initGoodsInfoDic:dic];
}

-(id)initGoodsInfoDic:(NSDictionary*)dic{
    self = [super init];
    if(self){
        NSString *homeImg = [dic objectForKey:@"goods_home_img"];
        [self setHomeImg:homeImg];
        
        NSString *topImg = [dic objectForKey:@"goods_icarousel_img"];
        [self setGoodsImg:topImg];
        
        NSInteger goodsID = [[dic objectForKey:@"goods_id"] integerValue];
        [self setGoodsID:goodsID];
        
        NSString *goodsName = [dic objectForKey:@"goods_name"];
        [self setGoodsName:goodsName];
        
        NSInteger postage = [[dic objectForKey:@"is_postage"] integerValue];
        [self setPostage:postage];
        
        CGFloat marketPrice = [[dic objectForKey:@"market_price"] floatValue];
        [self setMarketPrice:marketPrice];
        
        CGFloat shopPrice = [[dic objectForKey:@"shop_price"] floatValue];
        [self setShopPrice:shopPrice];
        
        NSString *merName = [dic objectForKey:@"meterage_name"];
        [self setMeterageName:merName];
        
//        NSInteger collectionType = [[dic objectForKey:@"collect"] integerValue];
//        [self setCollectionType:collectionType];
        
        NSInteger shopId = [[dic objectForKey:@"shop_id"] integerValue];
        [self setGoodshop_id:shopId];
        
//        NSString *shopName = [dic objectForKey:@"shop_name"];
//        [self setGoodsShopName:shopName];

    }
    return self;
}

//所属商家
+(GoodsInfoEntity*)initSellerInfoEntity:(NSDictionary *)dic{
    if(!dic){
        return nil;
    }
    return [[self alloc] initSellerData:dic];
}

-(id)initSellerData:(NSDictionary*)dic{
    self = [super init];
    if(self){
        NSString *address = [dic objectForKey:@"address"];
        [self setSellerAddress:address];
        
//        CGFloat lautitude = [[dic objectForKey:@"latitude"] floatValue];
//        [self setSellerLatitude:lautitude];
//        
//        CGFloat longitude = [[dic objectForKey:@"longitude"] floatValue];
//        [self setSellerLongitude:longitude];
        
        NSString *sellername = [dic objectForKey:@"seller_name"];
        [self setSellerName:sellername];
        
        NSInteger sellerID = [[dic objectForKey:@"seller_id"] integerValue];
        [self setSellerID:sellerID];
        
        NSString *sellerPhone = [dic objectForKey:@"telephone"];
        [self setSellerPhone:sellerPhone];
    }
    return self;
}

//基础属性
+(GoodsInfoEntity*)initBaseAttrDataEntity:(NSDictionary *)dic{
    if(!dic){
        return nil;
    }
    return [[self alloc] initBaseAttrData:dic];
}

-(id)initBaseAttrData:(NSDictionary*)dic{
    self = [super init];
    if(self){
        NSString *attrName = [dic objectForKey:@"attr_name"];
        [self setAttrName:attrName];
        
        NSString *attrValue = [dic objectForKey:@"attr_value"];
        [self setAttrValue:attrValue];
    }
    return self;
}

//评价
+(GoodsInfoEntity*)initEvaluteDataEntity:(NSDictionary *)dic{
    if(!dic){
        return nil;
    }
    return [[self alloc] initEvaluteData:dic];
}

-(id)initEvaluteData:(NSDictionary*)dic{
    self = [super init];
    if(self){
        NSString *content = [dic objectForKey:@"content"];
        [self setContent:content];
        
        NSInteger addTime = [[dic objectForKey:@"add_time"] integerValue];
        [self setAddTime:addTime];
        
        NSString *nickName = [dic objectForKey:@"nickname"];
        [self setNickName:nickName];
        
        NSString *phone = [dic objectForKey:@"phone"];
        [self setUserPhone:phone];
        
        NSString *pic = [dic objectForKey:@"pic"];
        [self setUserHeadImg:pic];
    }
    return self;
}

//推荐商家
+(GoodsInfoEntity*)initOtherShopEntity:(NSDictionary *)dic{
    if(!dic){
        return nil;
    }
    return [[self alloc] initOtherShop:dic];
}

-(id)initOtherShop:(NSDictionary*)dic{
    self = [super init];
    if(self){
        NSString *address = [dic objectForKey:@"address"];
        [self setShopAddress:address];
        
//        CGFloat distance = [[dic objectForKey:@"distance"] floatValue];
//        [self setShopDistance:distance];
//        
//        CGFloat lautitude = [[dic objectForKey:@"latitude"] floatValue];
//        [self setShopLatitude:lautitude];
//        
//        CGFloat longitude = [[dic objectForKey:@"longitude"] floatValue];
//        [self setShopLongitude:longitude];
        
        NSInteger shopID = [[dic objectForKey:@"seller_id"] integerValue];
        [self setShopID:shopID];
        
        NSString *shopName = [dic objectForKey:@"shop_name"];
        [self setShopName:shopName];
    }
    return self;
}

//库存
+(GoodsInfoEntity*)initStockDataEntity:(NSDictionary *)dic{
    if(!dic){
        return nil;
    }
    return [[self alloc] initStockData:dic];
}

-(id)initStockData:(NSDictionary*)dic{
    self = [super init];
    if(self){
        NSInteger cut = [[dic objectForKey:@"divide"] integerValue];
        [self setUserCut:cut];
        
        NSInteger number = [[dic objectForKey:@"goods_number"] integerValue];
        [self setStockNum:number];
        
        CGFloat goodsPrice = [[dic objectForKey:@"goods_price"] floatValue];
        [self setStockPrice:goodsPrice];
        
        NSInteger stockId = [[dic objectForKey:@"goods_stock_id"] integerValue];
        [self setStockID:stockId];
        
        NSString *name = [dic objectForKey:@"goods_stock_name"];
        [self setStockName:name];
        
        NSInteger red = [[dic objectForKey:@"is_use_red"] integerValue];
        [self setRedPacket:red];
    }
    return self;
}

+ (GoodsInfoEntity*)initLimitStockDataEntity:(NSDictionary*)dic{
    if (!dic) {
        return nil;
    }
    return [[self alloc] initLimitStock:dic];
}

- (instancetype)initLimitStock:(NSDictionary*)dic{
    if (self = [super init]) {
        
        NSInteger stockId = [[dic objectForKey:@"seckill_goods_id"] integerValue];
        [self setStockID:stockId];
        
        NSString *name = [dic objectForKey:@"goods_stock_name"];
        [self setStockName:name];
        
        NSInteger number = [[dic objectForKey:@"seckill_number"] integerValue];
        [self setStockNum:number];
        
        CGFloat goodsPrice = [[dic objectForKey:@"seckill_price"] floatValue];
        [self setStockPrice:goodsPrice];
        
        NSInteger goodsID = [[dic objectForKey:@"goods_id"] integerValue];
        [self setGoodsID:goodsID];
        
        NSInteger speacialID = [[dic objectForKey:@"seckill_id"] integerValue];
        [self setSpeacialid:speacialID];
    }
    return self;
}

+ (GoodsInfoEntity*)initLimitGoodsInfoEntity:(NSDictionary*)dic{
    if(!dic){
        return nil;
    }
    return [[self alloc] initLimitGoodsInfoDic:dic];
}

- (instancetype)initLimitGoodsInfoDic:(NSDictionary*)dic{
    self = [super init];
    if(self){
        NSString *homeImg = [dic objectForKey:@"goods_home_img"];
        [self setHomeImg:homeImg];
        
        NSString *topImg = [dic objectForKey:@"goods_icarousel_img"];
        [self setGoodsImg:topImg];
        
        NSInteger goodsID = [[dic objectForKey:@"goods_id"] integerValue];
        [self setGoodsID:goodsID];
        
        NSString *goodsName = [dic objectForKey:@"goods_name"];
        [self setGoodsName:goodsName];
        
        NSInteger postage = [[dic objectForKey:@"is_postage"] integerValue];
        [self setPostage:postage];
        
        CGFloat marketPrice = [[dic objectForKey:@"max_goods_price"] floatValue];
        [self setMarketPrice:marketPrice];
        
        CGFloat shopPrice = [[dic objectForKey:@"min_seckill_price"] floatValue];
        [self setShopPrice:shopPrice];
        
        NSString *merName = [dic objectForKey:@"meterage_name"];
        [self setMeterageName:merName];
        
        NSInteger shopId = [[dic objectForKey:@"shop_id"] integerValue];
        [self setGoodshop_id:shopId];
     }
    return self;
  }

@end
