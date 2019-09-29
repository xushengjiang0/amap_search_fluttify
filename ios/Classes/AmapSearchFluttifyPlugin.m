#import "AmapSearchFluttifyPlugin.h"

typedef void (^Handler)(NSObject <FlutterPluginRegistrar> *, NSDictionary<NSString *, NSObject *> *, FlutterResult);

NSMutableDictionary<NSNumber *, NSObject *> *HEAP;

@implementation AmapSearchFluttifyPlugin {
  NSObject <FlutterPluginRegistrar> * _registrar;
  NSDictionary<NSString *, Handler> *_handlerMap;
}

- (instancetype) initWithFlutterPluginRegistrar: (NSObject <FlutterPluginRegistrar> *) registrar {
  self = [super init];
  if (self) {
    _registrar = registrar;
    // 处理方法们
    _handlerMap = @{
      @"AMapURLSearch::getLatestAMapApp": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 参数
      
      
          // 调用对象引用
      
      
          // 日志打印
          NSLog(@"fluttify-objc: AMapURLSearch::getLatestAMapApp(暂未实现参数打印)");
      
          // 开始调用
          [AMapURLSearch getLatestAMapApp ];
      
          // 调用结果
          // 无返回值
          methodResult(@"success");
      },
      @"AMapURLSearch::openAMapNavigation": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 参数
          // 引用参数
          AMapNaviConfig* config = (AMapNaviConfig*) HEAP[@([args[@"config"] integerValue])];
      
          // 调用对象引用
      
      
          // 日志打印
          NSLog(@"fluttify-objc: AMapURLSearch::openAMapNavigation(暂未实现参数打印)");
      
          // 开始调用
          BOOL result = [AMapURLSearch openAMapNavigation: config];
      
          // 调用结果
          // 返回值: Value
          methodResult(@(result));
      },
      @"AMapURLSearch::openAMapRouteSearch": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 参数
          // 引用参数
          AMapRouteConfig* config = (AMapRouteConfig*) HEAP[@([args[@"config"] integerValue])];
      
          // 调用对象引用
      
      
          // 日志打印
          NSLog(@"fluttify-objc: AMapURLSearch::openAMapRouteSearch(暂未实现参数打印)");
      
          // 开始调用
          BOOL result = [AMapURLSearch openAMapRouteSearch: config];
      
          // 调用结果
          // 返回值: Value
          methodResult(@(result));
      },
      @"AMapURLSearch::openAMapPOISearch": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 参数
          // 引用参数
          AMapPOIConfig* config = (AMapPOIConfig*) HEAP[@([args[@"config"] integerValue])];
      
          // 调用对象引用
      
      
          // 日志打印
          NSLog(@"fluttify-objc: AMapURLSearch::openAMapPOISearch(暂未实现参数打印)");
      
          // 开始调用
          BOOL result = [AMapURLSearch openAMapPOISearch: config];
      
          // 调用结果
          // 返回值: Value
          methodResult(@(result));
      },
      @"AMapServices::sharedServices": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 参数
      
      
          // 调用对象引用
      
      
          // 日志打印
          NSLog(@"fluttify-objc: AMapServices::sharedServices(暂未实现参数打印)");
      
          // 开始调用
          AMapServices* result = [AMapServices sharedServices];
      
          // 调用结果
          // 返回值: 引用
          HEAP[@(result.hash)] = result;
          methodResult(@(result.hash));
      },
      @"AMapSearchObject::formattedDescription": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 参数
      
      
          // 调用对象引用
          NSInteger refId = [args[@"refId"] integerValue];
          AMapSearchObject * ref = (AMapSearchObject *) HEAP[@(refId)];
      
          // 日志打印
          NSLog(@"fluttify-objc: AMapSearchObject@%@::formattedDescription(暂未实现参数打印)", @(refId));
      
          // 开始调用
          NSString* result = [ref formattedDescription];
      
          // 调用结果
          // 返回值: jsonable
          methodResult(result);
      },
      @"AMapGeoPoint::locationWithLatitudeLongitude": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 参数
          // jsonable参数
          CGFloat lat = [args[@"lat"] floatValue];
          // jsonable参数
          CGFloat lon = [args[@"lon"] floatValue];
      
          // 调用对象引用
      
      
          // 日志打印
          NSLog(@"fluttify-objc: AMapGeoPoint::locationWithLatitude(暂未实现参数打印)");
      
          // 开始调用
          AMapGeoPoint* result = [AMapGeoPoint locationWithLatitude: lat longitude: lon];
      
          // 调用结果
          // 返回值: 引用
          HEAP[@(result.hash)] = result;
          methodResult(@(result.hash));
      },
      @"AMapNearbySearchManagerDelegate::nearbyInfoForUploading": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 参数
          // 引用参数
          AMapNearbySearchManager* manager = (AMapNearbySearchManager*) HEAP[@([args[@"manager"] integerValue])];
      
          // 调用对象引用
          NSInteger refId = [args[@"refId"] integerValue];
          id<AMapNearbySearchManagerDelegate> ref = (id<AMapNearbySearchManagerDelegate>) HEAP[@(refId)];
      
          // 日志打印
          NSLog(@"fluttify-objc: AMapNearbySearchManagerDelegate@%@::nearbyInfoForUploading(暂未实现参数打印)", @(refId));
      
          // 开始调用
          AMapNearbyUploadInfo* result = [ref nearbyInfoForUploading: manager];
      
          // 调用结果
          // 返回值: 引用
          HEAP[@(result.hash)] = result;
          methodResult(@(result.hash));
      },
      @"AMapNearbySearchManagerDelegate::onNearbyInfoUploadedWithError": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 参数
          // 引用参数
          NSError* error = (NSError*) HEAP[@([args[@"error"] integerValue])];
      
          // 调用对象引用
          NSInteger refId = [args[@"refId"] integerValue];
          id<AMapNearbySearchManagerDelegate> ref = (id<AMapNearbySearchManagerDelegate>) HEAP[@(refId)];
      
          // 日志打印
          NSLog(@"fluttify-objc: AMapNearbySearchManagerDelegate@%@::onNearbyInfoUploadedWithError(暂未实现参数打印)", @(refId));
      
          // 开始调用
          [ref onNearbyInfoUploadedWithError : error];
      
          // 调用结果
          // 无返回值
          methodResult(@"success");
      },
      @"AMapNearbySearchManagerDelegate::onUserInfoClearedWithError": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 参数
          // 引用参数
          NSError* error = (NSError*) HEAP[@([args[@"error"] integerValue])];
      
          // 调用对象引用
          NSInteger refId = [args[@"refId"] integerValue];
          id<AMapNearbySearchManagerDelegate> ref = (id<AMapNearbySearchManagerDelegate>) HEAP[@(refId)];
      
          // 日志打印
          NSLog(@"fluttify-objc: AMapNearbySearchManagerDelegate@%@::onUserInfoClearedWithError(暂未实现参数打印)", @(refId));
      
          // 开始调用
          [ref onUserInfoClearedWithError : error];
      
          // 调用结果
          // 无返回值
          methodResult(@"success");
      },
      @"AMapSearchAPI::init": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 参数
      
      
          // 调用对象引用
          NSInteger refId = [args[@"refId"] integerValue];
          AMapSearchAPI * ref = (AMapSearchAPI *) HEAP[@(refId)];
      
          // 日志打印
          NSLog(@"fluttify-objc: AMapSearchAPI@%@::init(暂未实现参数打印)", @(refId));
      
          // 开始调用
          AMapSearchAPI* result = [ref init];
      
          // 调用结果
          // 返回值: 引用
          HEAP[@(result.hash)] = result;
          methodResult(@(result.hash));
      },
      @"AMapSearchAPI::cancelAllRequests": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 参数
      
      
          // 调用对象引用
          NSInteger refId = [args[@"refId"] integerValue];
          AMapSearchAPI * ref = (AMapSearchAPI *) HEAP[@(refId)];
      
          // 日志打印
          NSLog(@"fluttify-objc: AMapSearchAPI@%@::cancelAllRequests(暂未实现参数打印)", @(refId));
      
          // 开始调用
          [ref cancelAllRequests ];
      
          // 调用结果
          // 无返回值
          methodResult(@"success");
      },
      @"AMapSearchAPI::AMapPOIIDSearch": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 参数
          // 引用参数
          AMapPOIIDSearchRequest* request = (AMapPOIIDSearchRequest*) HEAP[@([args[@"request"] integerValue])];
      
          // 调用对象引用
          NSInteger refId = [args[@"refId"] integerValue];
          AMapSearchAPI * ref = (AMapSearchAPI *) HEAP[@(refId)];
      
          // 日志打印
          NSLog(@"fluttify-objc: AMapSearchAPI@%@::AMapPOIIDSearch(暂未实现参数打印)", @(refId));
      
          // 开始调用
          [ref AMapPOIIDSearch : request];
      
          // 调用结果
          // 无返回值
          methodResult(@"success");
      },
      @"AMapSearchAPI::AMapPOIKeywordsSearch": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 参数
          // 引用参数
          AMapPOIKeywordsSearchRequest* request = (AMapPOIKeywordsSearchRequest*) HEAP[@([args[@"request"] integerValue])];
      
          // 调用对象引用
          NSInteger refId = [args[@"refId"] integerValue];
          AMapSearchAPI * ref = (AMapSearchAPI *) HEAP[@(refId)];
      
          // 日志打印
          NSLog(@"fluttify-objc: AMapSearchAPI@%@::AMapPOIKeywordsSearch(暂未实现参数打印)", @(refId));
      
          // 开始调用
          [ref AMapPOIKeywordsSearch : request];
      
          // 调用结果
          // 无返回值
          methodResult(@"success");
      },
      @"AMapSearchAPI::AMapPOIAroundSearch": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 参数
          // 引用参数
          AMapPOIAroundSearchRequest* request = (AMapPOIAroundSearchRequest*) HEAP[@([args[@"request"] integerValue])];
      
          // 调用对象引用
          NSInteger refId = [args[@"refId"] integerValue];
          AMapSearchAPI * ref = (AMapSearchAPI *) HEAP[@(refId)];
      
          // 日志打印
          NSLog(@"fluttify-objc: AMapSearchAPI@%@::AMapPOIAroundSearch(暂未实现参数打印)", @(refId));
      
          // 开始调用
          [ref AMapPOIAroundSearch : request];
      
          // 调用结果
          // 无返回值
          methodResult(@"success");
      },
      @"AMapSearchAPI::AMapPOIPolygonSearch": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 参数
          // 引用参数
          AMapPOIPolygonSearchRequest* request = (AMapPOIPolygonSearchRequest*) HEAP[@([args[@"request"] integerValue])];
      
          // 调用对象引用
          NSInteger refId = [args[@"refId"] integerValue];
          AMapSearchAPI * ref = (AMapSearchAPI *) HEAP[@(refId)];
      
          // 日志打印
          NSLog(@"fluttify-objc: AMapSearchAPI@%@::AMapPOIPolygonSearch(暂未实现参数打印)", @(refId));
      
          // 开始调用
          [ref AMapPOIPolygonSearch : request];
      
          // 调用结果
          // 无返回值
          methodResult(@"success");
      },
      @"AMapSearchAPI::AMapRoutePOISearch": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 参数
          // 引用参数
          AMapRoutePOISearchRequest* request = (AMapRoutePOISearchRequest*) HEAP[@([args[@"request"] integerValue])];
      
          // 调用对象引用
          NSInteger refId = [args[@"refId"] integerValue];
          AMapSearchAPI * ref = (AMapSearchAPI *) HEAP[@(refId)];
      
          // 日志打印
          NSLog(@"fluttify-objc: AMapSearchAPI@%@::AMapRoutePOISearch(暂未实现参数打印)", @(refId));
      
          // 开始调用
          [ref AMapRoutePOISearch : request];
      
          // 调用结果
          // 无返回值
          methodResult(@"success");
      },
      @"AMapSearchAPI::AMapGeocodeSearch": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 参数
          // 引用参数
          AMapGeocodeSearchRequest* request = (AMapGeocodeSearchRequest*) HEAP[@([args[@"request"] integerValue])];
      
          // 调用对象引用
          NSInteger refId = [args[@"refId"] integerValue];
          AMapSearchAPI * ref = (AMapSearchAPI *) HEAP[@(refId)];
      
          // 日志打印
          NSLog(@"fluttify-objc: AMapSearchAPI@%@::AMapGeocodeSearch(暂未实现参数打印)", @(refId));
      
          // 开始调用
          [ref AMapGeocodeSearch : request];
      
          // 调用结果
          // 无返回值
          methodResult(@"success");
      },
      @"AMapSearchAPI::AMapReGoecodeSearch": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 参数
          // 引用参数
          AMapReGeocodeSearchRequest* request = (AMapReGeocodeSearchRequest*) HEAP[@([args[@"request"] integerValue])];
      
          // 调用对象引用
          NSInteger refId = [args[@"refId"] integerValue];
          AMapSearchAPI * ref = (AMapSearchAPI *) HEAP[@(refId)];
      
          // 日志打印
          NSLog(@"fluttify-objc: AMapSearchAPI@%@::AMapReGoecodeSearch(暂未实现参数打印)", @(refId));
      
          // 开始调用
          [ref AMapReGoecodeSearch : request];
      
          // 调用结果
          // 无返回值
          methodResult(@"success");
      },
      @"AMapSearchAPI::AMapInputTipsSearch": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 参数
          // 引用参数
          AMapInputTipsSearchRequest* request = (AMapInputTipsSearchRequest*) HEAP[@([args[@"request"] integerValue])];
      
          // 调用对象引用
          NSInteger refId = [args[@"refId"] integerValue];
          AMapSearchAPI * ref = (AMapSearchAPI *) HEAP[@(refId)];
      
          // 日志打印
          NSLog(@"fluttify-objc: AMapSearchAPI@%@::AMapInputTipsSearch(暂未实现参数打印)", @(refId));
      
          // 开始调用
          [ref AMapInputTipsSearch : request];
      
          // 调用结果
          // 无返回值
          methodResult(@"success");
      },
      @"AMapSearchAPI::AMapBusStopSearch": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 参数
          // 引用参数
          AMapBusStopSearchRequest* request = (AMapBusStopSearchRequest*) HEAP[@([args[@"request"] integerValue])];
      
          // 调用对象引用
          NSInteger refId = [args[@"refId"] integerValue];
          AMapSearchAPI * ref = (AMapSearchAPI *) HEAP[@(refId)];
      
          // 日志打印
          NSLog(@"fluttify-objc: AMapSearchAPI@%@::AMapBusStopSearch(暂未实现参数打印)", @(refId));
      
          // 开始调用
          [ref AMapBusStopSearch : request];
      
          // 调用结果
          // 无返回值
          methodResult(@"success");
      },
      @"AMapSearchAPI::AMapBusLineIDSearch": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 参数
          // 引用参数
          AMapBusLineIDSearchRequest* request = (AMapBusLineIDSearchRequest*) HEAP[@([args[@"request"] integerValue])];
      
          // 调用对象引用
          NSInteger refId = [args[@"refId"] integerValue];
          AMapSearchAPI * ref = (AMapSearchAPI *) HEAP[@(refId)];
      
          // 日志打印
          NSLog(@"fluttify-objc: AMapSearchAPI@%@::AMapBusLineIDSearch(暂未实现参数打印)", @(refId));
      
          // 开始调用
          [ref AMapBusLineIDSearch : request];
      
          // 调用结果
          // 无返回值
          methodResult(@"success");
      },
      @"AMapSearchAPI::AMapBusLineNameSearch": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 参数
          // 引用参数
          AMapBusLineNameSearchRequest* request = (AMapBusLineNameSearchRequest*) HEAP[@([args[@"request"] integerValue])];
      
          // 调用对象引用
          NSInteger refId = [args[@"refId"] integerValue];
          AMapSearchAPI * ref = (AMapSearchAPI *) HEAP[@(refId)];
      
          // 日志打印
          NSLog(@"fluttify-objc: AMapSearchAPI@%@::AMapBusLineNameSearch(暂未实现参数打印)", @(refId));
      
          // 开始调用
          [ref AMapBusLineNameSearch : request];
      
          // 调用结果
          // 无返回值
          methodResult(@"success");
      },
      @"AMapSearchAPI::AMapDistrictSearch": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 参数
          // 引用参数
          AMapDistrictSearchRequest* request = (AMapDistrictSearchRequest*) HEAP[@([args[@"request"] integerValue])];
      
          // 调用对象引用
          NSInteger refId = [args[@"refId"] integerValue];
          AMapSearchAPI * ref = (AMapSearchAPI *) HEAP[@(refId)];
      
          // 日志打印
          NSLog(@"fluttify-objc: AMapSearchAPI@%@::AMapDistrictSearch(暂未实现参数打印)", @(refId));
      
          // 开始调用
          [ref AMapDistrictSearch : request];
      
          // 调用结果
          // 无返回值
          methodResult(@"success");
      },
      @"AMapSearchAPI::AMapDrivingRouteSearch": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 参数
          // 引用参数
          AMapDrivingRouteSearchRequest* request = (AMapDrivingRouteSearchRequest*) HEAP[@([args[@"request"] integerValue])];
      
          // 调用对象引用
          NSInteger refId = [args[@"refId"] integerValue];
          AMapSearchAPI * ref = (AMapSearchAPI *) HEAP[@(refId)];
      
          // 日志打印
          NSLog(@"fluttify-objc: AMapSearchAPI@%@::AMapDrivingRouteSearch(暂未实现参数打印)", @(refId));
      
          // 开始调用
          [ref AMapDrivingRouteSearch : request];
      
          // 调用结果
          // 无返回值
          methodResult(@"success");
      },
      @"AMapSearchAPI::AMapWalkingRouteSearch": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 参数
          // 引用参数
          AMapWalkingRouteSearchRequest* request = (AMapWalkingRouteSearchRequest*) HEAP[@([args[@"request"] integerValue])];
      
          // 调用对象引用
          NSInteger refId = [args[@"refId"] integerValue];
          AMapSearchAPI * ref = (AMapSearchAPI *) HEAP[@(refId)];
      
          // 日志打印
          NSLog(@"fluttify-objc: AMapSearchAPI@%@::AMapWalkingRouteSearch(暂未实现参数打印)", @(refId));
      
          // 开始调用
          [ref AMapWalkingRouteSearch : request];
      
          // 调用结果
          // 无返回值
          methodResult(@"success");
      },
      @"AMapSearchAPI::AMapTransitRouteSearch": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 参数
          // 引用参数
          AMapTransitRouteSearchRequest* request = (AMapTransitRouteSearchRequest*) HEAP[@([args[@"request"] integerValue])];
      
          // 调用对象引用
          NSInteger refId = [args[@"refId"] integerValue];
          AMapSearchAPI * ref = (AMapSearchAPI *) HEAP[@(refId)];
      
          // 日志打印
          NSLog(@"fluttify-objc: AMapSearchAPI@%@::AMapTransitRouteSearch(暂未实现参数打印)", @(refId));
      
          // 开始调用
          [ref AMapTransitRouteSearch : request];
      
          // 调用结果
          // 无返回值
          methodResult(@"success");
      },
      @"AMapSearchAPI::AMapRidingRouteSearch": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 参数
          // 引用参数
          AMapRidingRouteSearchRequest* request = (AMapRidingRouteSearchRequest*) HEAP[@([args[@"request"] integerValue])];
      
          // 调用对象引用
          NSInteger refId = [args[@"refId"] integerValue];
          AMapSearchAPI * ref = (AMapSearchAPI *) HEAP[@(refId)];
      
          // 日志打印
          NSLog(@"fluttify-objc: AMapSearchAPI@%@::AMapRidingRouteSearch(暂未实现参数打印)", @(refId));
      
          // 开始调用
          [ref AMapRidingRouteSearch : request];
      
          // 调用结果
          // 无返回值
          methodResult(@"success");
      },
      @"AMapSearchAPI::AMapTruckRouteSearch": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 参数
          // 引用参数
          AMapTruckRouteSearchRequest* request = (AMapTruckRouteSearchRequest*) HEAP[@([args[@"request"] integerValue])];
      
          // 调用对象引用
          NSInteger refId = [args[@"refId"] integerValue];
          AMapSearchAPI * ref = (AMapSearchAPI *) HEAP[@(refId)];
      
          // 日志打印
          NSLog(@"fluttify-objc: AMapSearchAPI@%@::AMapTruckRouteSearch(暂未实现参数打印)", @(refId));
      
          // 开始调用
          [ref AMapTruckRouteSearch : request];
      
          // 调用结果
          // 无返回值
          methodResult(@"success");
      },
      @"AMapSearchAPI::AMapFutureRouteSearch": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 参数
          // 引用参数
          AMapFutureRouteSearchRequest* request = (AMapFutureRouteSearchRequest*) HEAP[@([args[@"request"] integerValue])];
      
          // 调用对象引用
          NSInteger refId = [args[@"refId"] integerValue];
          AMapSearchAPI * ref = (AMapSearchAPI *) HEAP[@(refId)];
      
          // 日志打印
          NSLog(@"fluttify-objc: AMapSearchAPI@%@::AMapFutureRouteSearch(暂未实现参数打印)", @(refId));
      
          // 开始调用
          [ref AMapFutureRouteSearch : request];
      
          // 调用结果
          // 无返回值
          methodResult(@"success");
      },
      @"AMapSearchAPI::AMapWeatherSearch": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 参数
          // 引用参数
          AMapWeatherSearchRequest* request = (AMapWeatherSearchRequest*) HEAP[@([args[@"request"] integerValue])];
      
          // 调用对象引用
          NSInteger refId = [args[@"refId"] integerValue];
          AMapSearchAPI * ref = (AMapSearchAPI *) HEAP[@(refId)];
      
          // 日志打印
          NSLog(@"fluttify-objc: AMapSearchAPI@%@::AMapWeatherSearch(暂未实现参数打印)", @(refId));
      
          // 开始调用
          [ref AMapWeatherSearch : request];
      
          // 调用结果
          // 无返回值
          methodResult(@"success");
      },
      @"AMapSearchAPI::AMapRoadTrafficSearch": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 参数
          // 引用参数
          AMapRoadTrafficSearchRequest* request = (AMapRoadTrafficSearchRequest*) HEAP[@([args[@"request"] integerValue])];
      
          // 调用对象引用
          NSInteger refId = [args[@"refId"] integerValue];
          AMapSearchAPI * ref = (AMapSearchAPI *) HEAP[@(refId)];
      
          // 日志打印
          NSLog(@"fluttify-objc: AMapSearchAPI@%@::AMapRoadTrafficSearch(暂未实现参数打印)", @(refId));
      
          // 开始调用
          [ref AMapRoadTrafficSearch : request];
      
          // 调用结果
          // 无返回值
          methodResult(@"success");
      },
      @"AMapSearchAPI::AMapRoadTrafficCircleSearch": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 参数
          // 引用参数
          AMapRoadTrafficCircleSearchRequest* request = (AMapRoadTrafficCircleSearchRequest*) HEAP[@([args[@"request"] integerValue])];
      
          // 调用对象引用
          NSInteger refId = [args[@"refId"] integerValue];
          AMapSearchAPI * ref = (AMapSearchAPI *) HEAP[@(refId)];
      
          // 日志打印
          NSLog(@"fluttify-objc: AMapSearchAPI@%@::AMapRoadTrafficCircleSearch(暂未实现参数打印)", @(refId));
      
          // 开始调用
          [ref AMapRoadTrafficCircleSearch : request];
      
          // 调用结果
          // 无返回值
          methodResult(@"success");
      },
      @"AMapSearchAPI::AMapDistanceSearch": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 参数
          // 引用参数
          AMapDistanceSearchRequest* request = (AMapDistanceSearchRequest*) HEAP[@([args[@"request"] integerValue])];
      
          // 调用对象引用
          NSInteger refId = [args[@"refId"] integerValue];
          AMapSearchAPI * ref = (AMapSearchAPI *) HEAP[@(refId)];
      
          // 日志打印
          NSLog(@"fluttify-objc: AMapSearchAPI@%@::AMapDistanceSearch(暂未实现参数打印)", @(refId));
      
          // 开始调用
          [ref AMapDistanceSearch : request];
      
          // 调用结果
          // 无返回值
          methodResult(@"success");
      },
      @"AMapSearchAPI::AMapNearbySearch": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 参数
          // 引用参数
          AMapNearbySearchRequest* request = (AMapNearbySearchRequest*) HEAP[@([args[@"request"] integerValue])];
      
          // 调用对象引用
          NSInteger refId = [args[@"refId"] integerValue];
          AMapSearchAPI * ref = (AMapSearchAPI *) HEAP[@(refId)];
      
          // 日志打印
          NSLog(@"fluttify-objc: AMapSearchAPI@%@::AMapNearbySearch(暂未实现参数打印)", @(refId));
      
          // 开始调用
          [ref AMapNearbySearch : request];
      
          // 调用结果
          // 无返回值
          methodResult(@"success");
      },
      @"AMapSearchAPI::AMapCloudPOIAroundSearch": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 参数
          // 引用参数
          AMapCloudPOIAroundSearchRequest* request = (AMapCloudPOIAroundSearchRequest*) HEAP[@([args[@"request"] integerValue])];
      
          // 调用对象引用
          NSInteger refId = [args[@"refId"] integerValue];
          AMapSearchAPI * ref = (AMapSearchAPI *) HEAP[@(refId)];
      
          // 日志打印
          NSLog(@"fluttify-objc: AMapSearchAPI@%@::AMapCloudPOIAroundSearch(暂未实现参数打印)", @(refId));
      
          // 开始调用
          [ref AMapCloudPOIAroundSearch : request];
      
          // 调用结果
          // 无返回值
          methodResult(@"success");
      },
      @"AMapSearchAPI::AMapCloudPOIPolygonSearch": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 参数
          // 引用参数
          AMapCloudPOIPolygonSearchRequest* request = (AMapCloudPOIPolygonSearchRequest*) HEAP[@([args[@"request"] integerValue])];
      
          // 调用对象引用
          NSInteger refId = [args[@"refId"] integerValue];
          AMapSearchAPI * ref = (AMapSearchAPI *) HEAP[@(refId)];
      
          // 日志打印
          NSLog(@"fluttify-objc: AMapSearchAPI@%@::AMapCloudPOIPolygonSearch(暂未实现参数打印)", @(refId));
      
          // 开始调用
          [ref AMapCloudPOIPolygonSearch : request];
      
          // 调用结果
          // 无返回值
          methodResult(@"success");
      },
      @"AMapSearchAPI::AMapCloudPOIIDSearch": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 参数
          // 引用参数
          AMapCloudPOIIDSearchRequest* request = (AMapCloudPOIIDSearchRequest*) HEAP[@([args[@"request"] integerValue])];
      
          // 调用对象引用
          NSInteger refId = [args[@"refId"] integerValue];
          AMapSearchAPI * ref = (AMapSearchAPI *) HEAP[@(refId)];
      
          // 日志打印
          NSLog(@"fluttify-objc: AMapSearchAPI@%@::AMapCloudPOIIDSearch(暂未实现参数打印)", @(refId));
      
          // 开始调用
          [ref AMapCloudPOIIDSearch : request];
      
          // 调用结果
          // 无返回值
          methodResult(@"success");
      },
      @"AMapSearchAPI::AMapCloudPOILocalSearch": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 参数
          // 引用参数
          AMapCloudPOILocalSearchRequest* request = (AMapCloudPOILocalSearchRequest*) HEAP[@([args[@"request"] integerValue])];
      
          // 调用对象引用
          NSInteger refId = [args[@"refId"] integerValue];
          AMapSearchAPI * ref = (AMapSearchAPI *) HEAP[@(refId)];
      
          // 日志打印
          NSLog(@"fluttify-objc: AMapSearchAPI@%@::AMapCloudPOILocalSearch(暂未实现参数打印)", @(refId));
      
          // 开始调用
          [ref AMapCloudPOILocalSearch : request];
      
          // 调用结果
          // 无返回值
          methodResult(@"success");
      },
      @"AMapSearchAPI::AMapLocationShareSearch": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 参数
          // 引用参数
          AMapLocationShareSearchRequest* request = (AMapLocationShareSearchRequest*) HEAP[@([args[@"request"] integerValue])];
      
          // 调用对象引用
          NSInteger refId = [args[@"refId"] integerValue];
          AMapSearchAPI * ref = (AMapSearchAPI *) HEAP[@(refId)];
      
          // 日志打印
          NSLog(@"fluttify-objc: AMapSearchAPI@%@::AMapLocationShareSearch(暂未实现参数打印)", @(refId));
      
          // 开始调用
          [ref AMapLocationShareSearch : request];
      
          // 调用结果
          // 无返回值
          methodResult(@"success");
      },
      @"AMapSearchAPI::AMapPOIShareSearch": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 参数
          // 引用参数
          AMapPOIShareSearchRequest* request = (AMapPOIShareSearchRequest*) HEAP[@([args[@"request"] integerValue])];
      
          // 调用对象引用
          NSInteger refId = [args[@"refId"] integerValue];
          AMapSearchAPI * ref = (AMapSearchAPI *) HEAP[@(refId)];
      
          // 日志打印
          NSLog(@"fluttify-objc: AMapSearchAPI@%@::AMapPOIShareSearch(暂未实现参数打印)", @(refId));
      
          // 开始调用
          [ref AMapPOIShareSearch : request];
      
          // 调用结果
          // 无返回值
          methodResult(@"success");
      },
      @"AMapSearchAPI::AMapRouteShareSearch": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 参数
          // 引用参数
          AMapRouteShareSearchRequest* request = (AMapRouteShareSearchRequest*) HEAP[@([args[@"request"] integerValue])];
      
          // 调用对象引用
          NSInteger refId = [args[@"refId"] integerValue];
          AMapSearchAPI * ref = (AMapSearchAPI *) HEAP[@(refId)];
      
          // 日志打印
          NSLog(@"fluttify-objc: AMapSearchAPI@%@::AMapRouteShareSearch(暂未实现参数打印)", @(refId));
      
          // 开始调用
          [ref AMapRouteShareSearch : request];
      
          // 调用结果
          // 无返回值
          methodResult(@"success");
      },
      @"AMapSearchAPI::AMapNavigationShareSearch": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 参数
          // 引用参数
          AMapNavigationShareSearchRequest* request = (AMapNavigationShareSearchRequest*) HEAP[@([args[@"request"] integerValue])];
      
          // 调用对象引用
          NSInteger refId = [args[@"refId"] integerValue];
          AMapSearchAPI * ref = (AMapSearchAPI *) HEAP[@(refId)];
      
          // 日志打印
          NSLog(@"fluttify-objc: AMapSearchAPI@%@::AMapNavigationShareSearch(暂未实现参数打印)", @(refId));
      
          // 开始调用
          [ref AMapNavigationShareSearch : request];
      
          // 调用结果
          // 无返回值
          methodResult(@"success");
      },
      @"AMapSearchDelegate::onPOISearchDoneResponse": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 参数
          // 引用参数
          AMapPOISearchBaseRequest* request = (AMapPOISearchBaseRequest*) HEAP[@([args[@"request"] integerValue])];
          // 引用参数
          AMapPOISearchResponse* response = (AMapPOISearchResponse*) HEAP[@([args[@"response"] integerValue])];
      
          // 调用对象引用
          NSInteger refId = [args[@"refId"] integerValue];
          id<AMapSearchDelegate> ref = (id<AMapSearchDelegate>) HEAP[@(refId)];
      
          // 日志打印
          NSLog(@"fluttify-objc: AMapSearchDelegate@%@::onPOISearchDone(暂未实现参数打印)", @(refId));
      
          // 开始调用
          [ref onPOISearchDone : request response: response];
      
          // 调用结果
          // 无返回值
          methodResult(@"success");
      },
      @"AMapSearchDelegate::onRoutePOISearchDoneResponse": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 参数
          // 引用参数
          AMapRoutePOISearchRequest* request = (AMapRoutePOISearchRequest*) HEAP[@([args[@"request"] integerValue])];
          // 引用参数
          AMapRoutePOISearchResponse* response = (AMapRoutePOISearchResponse*) HEAP[@([args[@"response"] integerValue])];
      
          // 调用对象引用
          NSInteger refId = [args[@"refId"] integerValue];
          id<AMapSearchDelegate> ref = (id<AMapSearchDelegate>) HEAP[@(refId)];
      
          // 日志打印
          NSLog(@"fluttify-objc: AMapSearchDelegate@%@::onRoutePOISearchDone(暂未实现参数打印)", @(refId));
      
          // 开始调用
          [ref onRoutePOISearchDone : request response: response];
      
          // 调用结果
          // 无返回值
          methodResult(@"success");
      },
      @"AMapSearchDelegate::onGeocodeSearchDoneResponse": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 参数
          // 引用参数
          AMapGeocodeSearchRequest* request = (AMapGeocodeSearchRequest*) HEAP[@([args[@"request"] integerValue])];
          // 引用参数
          AMapGeocodeSearchResponse* response = (AMapGeocodeSearchResponse*) HEAP[@([args[@"response"] integerValue])];
      
          // 调用对象引用
          NSInteger refId = [args[@"refId"] integerValue];
          id<AMapSearchDelegate> ref = (id<AMapSearchDelegate>) HEAP[@(refId)];
      
          // 日志打印
          NSLog(@"fluttify-objc: AMapSearchDelegate@%@::onGeocodeSearchDone(暂未实现参数打印)", @(refId));
      
          // 开始调用
          [ref onGeocodeSearchDone : request response: response];
      
          // 调用结果
          // 无返回值
          methodResult(@"success");
      },
      @"AMapSearchDelegate::onReGeocodeSearchDoneResponse": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 参数
          // 引用参数
          AMapReGeocodeSearchRequest* request = (AMapReGeocodeSearchRequest*) HEAP[@([args[@"request"] integerValue])];
          // 引用参数
          AMapReGeocodeSearchResponse* response = (AMapReGeocodeSearchResponse*) HEAP[@([args[@"response"] integerValue])];
      
          // 调用对象引用
          NSInteger refId = [args[@"refId"] integerValue];
          id<AMapSearchDelegate> ref = (id<AMapSearchDelegate>) HEAP[@(refId)];
      
          // 日志打印
          NSLog(@"fluttify-objc: AMapSearchDelegate@%@::onReGeocodeSearchDone(暂未实现参数打印)", @(refId));
      
          // 开始调用
          [ref onReGeocodeSearchDone : request response: response];
      
          // 调用结果
          // 无返回值
          methodResult(@"success");
      },
      @"AMapSearchDelegate::onInputTipsSearchDoneResponse": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 参数
          // 引用参数
          AMapInputTipsSearchRequest* request = (AMapInputTipsSearchRequest*) HEAP[@([args[@"request"] integerValue])];
          // 引用参数
          AMapInputTipsSearchResponse* response = (AMapInputTipsSearchResponse*) HEAP[@([args[@"response"] integerValue])];
      
          // 调用对象引用
          NSInteger refId = [args[@"refId"] integerValue];
          id<AMapSearchDelegate> ref = (id<AMapSearchDelegate>) HEAP[@(refId)];
      
          // 日志打印
          NSLog(@"fluttify-objc: AMapSearchDelegate@%@::onInputTipsSearchDone(暂未实现参数打印)", @(refId));
      
          // 开始调用
          [ref onInputTipsSearchDone : request response: response];
      
          // 调用结果
          // 无返回值
          methodResult(@"success");
      },
      @"AMapSearchDelegate::onBusStopSearchDoneResponse": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 参数
          // 引用参数
          AMapBusStopSearchRequest* request = (AMapBusStopSearchRequest*) HEAP[@([args[@"request"] integerValue])];
          // 引用参数
          AMapBusStopSearchResponse* response = (AMapBusStopSearchResponse*) HEAP[@([args[@"response"] integerValue])];
      
          // 调用对象引用
          NSInteger refId = [args[@"refId"] integerValue];
          id<AMapSearchDelegate> ref = (id<AMapSearchDelegate>) HEAP[@(refId)];
      
          // 日志打印
          NSLog(@"fluttify-objc: AMapSearchDelegate@%@::onBusStopSearchDone(暂未实现参数打印)", @(refId));
      
          // 开始调用
          [ref onBusStopSearchDone : request response: response];
      
          // 调用结果
          // 无返回值
          methodResult(@"success");
      },
      @"AMapSearchDelegate::onBusLineSearchDoneResponse": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 参数
          // 引用参数
          AMapBusLineBaseSearchRequest* request = (AMapBusLineBaseSearchRequest*) HEAP[@([args[@"request"] integerValue])];
          // 引用参数
          AMapBusLineSearchResponse* response = (AMapBusLineSearchResponse*) HEAP[@([args[@"response"] integerValue])];
      
          // 调用对象引用
          NSInteger refId = [args[@"refId"] integerValue];
          id<AMapSearchDelegate> ref = (id<AMapSearchDelegate>) HEAP[@(refId)];
      
          // 日志打印
          NSLog(@"fluttify-objc: AMapSearchDelegate@%@::onBusLineSearchDone(暂未实现参数打印)", @(refId));
      
          // 开始调用
          [ref onBusLineSearchDone : request response: response];
      
          // 调用结果
          // 无返回值
          methodResult(@"success");
      },
      @"AMapSearchDelegate::onDistrictSearchDoneResponse": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 参数
          // 引用参数
          AMapDistrictSearchRequest* request = (AMapDistrictSearchRequest*) HEAP[@([args[@"request"] integerValue])];
          // 引用参数
          AMapDistrictSearchResponse* response = (AMapDistrictSearchResponse*) HEAP[@([args[@"response"] integerValue])];
      
          // 调用对象引用
          NSInteger refId = [args[@"refId"] integerValue];
          id<AMapSearchDelegate> ref = (id<AMapSearchDelegate>) HEAP[@(refId)];
      
          // 日志打印
          NSLog(@"fluttify-objc: AMapSearchDelegate@%@::onDistrictSearchDone(暂未实现参数打印)", @(refId));
      
          // 开始调用
          [ref onDistrictSearchDone : request response: response];
      
          // 调用结果
          // 无返回值
          methodResult(@"success");
      },
      @"AMapSearchDelegate::onRouteSearchDoneResponse": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 参数
          // 引用参数
          AMapRouteSearchBaseRequest* request = (AMapRouteSearchBaseRequest*) HEAP[@([args[@"request"] integerValue])];
          // 引用参数
          AMapRouteSearchResponse* response = (AMapRouteSearchResponse*) HEAP[@([args[@"response"] integerValue])];
      
          // 调用对象引用
          NSInteger refId = [args[@"refId"] integerValue];
          id<AMapSearchDelegate> ref = (id<AMapSearchDelegate>) HEAP[@(refId)];
      
          // 日志打印
          NSLog(@"fluttify-objc: AMapSearchDelegate@%@::onRouteSearchDone(暂未实现参数打印)", @(refId));
      
          // 开始调用
          [ref onRouteSearchDone : request response: response];
      
          // 调用结果
          // 无返回值
          methodResult(@"success");
      },
      @"AMapSearchDelegate::onFutureRouteSearchDoneResponse": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 参数
          // 引用参数
          AMapRouteSearchBaseRequest* request = (AMapRouteSearchBaseRequest*) HEAP[@([args[@"request"] integerValue])];
          // 引用参数
          AMapFutureRouteSearchResponse* response = (AMapFutureRouteSearchResponse*) HEAP[@([args[@"response"] integerValue])];
      
          // 调用对象引用
          NSInteger refId = [args[@"refId"] integerValue];
          id<AMapSearchDelegate> ref = (id<AMapSearchDelegate>) HEAP[@(refId)];
      
          // 日志打印
          NSLog(@"fluttify-objc: AMapSearchDelegate@%@::onFutureRouteSearchDone(暂未实现参数打印)", @(refId));
      
          // 开始调用
          [ref onFutureRouteSearchDone : request response: response];
      
          // 调用结果
          // 无返回值
          methodResult(@"success");
      },
      @"AMapSearchDelegate::onDistanceSearchDoneResponse": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 参数
          // 引用参数
          AMapDistanceSearchRequest* request = (AMapDistanceSearchRequest*) HEAP[@([args[@"request"] integerValue])];
          // 引用参数
          AMapDistanceSearchResponse* response = (AMapDistanceSearchResponse*) HEAP[@([args[@"response"] integerValue])];
      
          // 调用对象引用
          NSInteger refId = [args[@"refId"] integerValue];
          id<AMapSearchDelegate> ref = (id<AMapSearchDelegate>) HEAP[@(refId)];
      
          // 日志打印
          NSLog(@"fluttify-objc: AMapSearchDelegate@%@::onDistanceSearchDone(暂未实现参数打印)", @(refId));
      
          // 开始调用
          [ref onDistanceSearchDone : request response: response];
      
          // 调用结果
          // 无返回值
          methodResult(@"success");
      },
      @"AMapSearchDelegate::onWeatherSearchDoneResponse": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 参数
          // 引用参数
          AMapWeatherSearchRequest* request = (AMapWeatherSearchRequest*) HEAP[@([args[@"request"] integerValue])];
          // 引用参数
          AMapWeatherSearchResponse* response = (AMapWeatherSearchResponse*) HEAP[@([args[@"response"] integerValue])];
      
          // 调用对象引用
          NSInteger refId = [args[@"refId"] integerValue];
          id<AMapSearchDelegate> ref = (id<AMapSearchDelegate>) HEAP[@(refId)];
      
          // 日志打印
          NSLog(@"fluttify-objc: AMapSearchDelegate@%@::onWeatherSearchDone(暂未实现参数打印)", @(refId));
      
          // 开始调用
          [ref onWeatherSearchDone : request response: response];
      
          // 调用结果
          // 无返回值
          methodResult(@"success");
      },
      @"AMapSearchDelegate::onRoadTrafficSearchDoneResponse": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 参数
          // 引用参数
          AMapRoadTrafficSearchBaseRequest* request = (AMapRoadTrafficSearchBaseRequest*) HEAP[@([args[@"request"] integerValue])];
          // 引用参数
          AMapRoadTrafficSearchResponse* response = (AMapRoadTrafficSearchResponse*) HEAP[@([args[@"response"] integerValue])];
      
          // 调用对象引用
          NSInteger refId = [args[@"refId"] integerValue];
          id<AMapSearchDelegate> ref = (id<AMapSearchDelegate>) HEAP[@(refId)];
      
          // 日志打印
          NSLog(@"fluttify-objc: AMapSearchDelegate@%@::onRoadTrafficSearchDone(暂未实现参数打印)", @(refId));
      
          // 开始调用
          [ref onRoadTrafficSearchDone : request response: response];
      
          // 调用结果
          // 无返回值
          methodResult(@"success");
      },
      @"AMapSearchDelegate::onNearbySearchDoneResponse": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 参数
          // 引用参数
          AMapNearbySearchRequest* request = (AMapNearbySearchRequest*) HEAP[@([args[@"request"] integerValue])];
          // 引用参数
          AMapNearbySearchResponse* response = (AMapNearbySearchResponse*) HEAP[@([args[@"response"] integerValue])];
      
          // 调用对象引用
          NSInteger refId = [args[@"refId"] integerValue];
          id<AMapSearchDelegate> ref = (id<AMapSearchDelegate>) HEAP[@(refId)];
      
          // 日志打印
          NSLog(@"fluttify-objc: AMapSearchDelegate@%@::onNearbySearchDone(暂未实现参数打印)", @(refId));
      
          // 开始调用
          [ref onNearbySearchDone : request response: response];
      
          // 调用结果
          // 无返回值
          methodResult(@"success");
      },
      @"AMapSearchDelegate::onCloudSearchDoneResponse": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 参数
          // 引用参数
          AMapCloudSearchBaseRequest* request = (AMapCloudSearchBaseRequest*) HEAP[@([args[@"request"] integerValue])];
          // 引用参数
          AMapCloudPOISearchResponse* response = (AMapCloudPOISearchResponse*) HEAP[@([args[@"response"] integerValue])];
      
          // 调用对象引用
          NSInteger refId = [args[@"refId"] integerValue];
          id<AMapSearchDelegate> ref = (id<AMapSearchDelegate>) HEAP[@(refId)];
      
          // 日志打印
          NSLog(@"fluttify-objc: AMapSearchDelegate@%@::onCloudSearchDone(暂未实现参数打印)", @(refId));
      
          // 开始调用
          [ref onCloudSearchDone : request response: response];
      
          // 调用结果
          // 无返回值
          methodResult(@"success");
      },
      @"AMapSearchDelegate::onShareSearchDoneResponse": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 参数
          // 引用参数
          AMapShareSearchBaseRequest* request = (AMapShareSearchBaseRequest*) HEAP[@([args[@"request"] integerValue])];
          // 引用参数
          AMapShareSearchResponse* response = (AMapShareSearchResponse*) HEAP[@([args[@"response"] integerValue])];
      
          // 调用对象引用
          NSInteger refId = [args[@"refId"] integerValue];
          id<AMapSearchDelegate> ref = (id<AMapSearchDelegate>) HEAP[@(refId)];
      
          // 日志打印
          NSLog(@"fluttify-objc: AMapSearchDelegate@%@::onShareSearchDone(暂未实现参数打印)", @(refId));
      
          // 开始调用
          [ref onShareSearchDone : request response: response];
      
          // 调用结果
          // 无返回值
          methodResult(@"success");
      },
      @"AMapNaviConfig::get_appScheme": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapNaviConfig::get_appScheme");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapNaviConfig * ref = (AMapNaviConfig *) HEAP[@(refId)];
      
          // 开始调用
          NSString* result = ref.appScheme;
      
      
      
          // 返回值: jsonable
          methodResult(result);
      },
      
      @"AMapNaviConfig::get_appName": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapNaviConfig::get_appName");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapNaviConfig * ref = (AMapNaviConfig *) HEAP[@(refId)];
      
          // 开始调用
          NSString* result = ref.appName;
      
      
      
          // 返回值: jsonable
          methodResult(result);
      },
      
      @"AMapNaviConfig::get_destination": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapNaviConfig::get_destination");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapNaviConfig * ref = (AMapNaviConfig *) HEAP[@(refId)];
      
          // 开始调用
          CLLocationCoordinate2D result = ref.destination;
      
          NSLog(@"AMapNaviConfig::get_destination:结构体getter暂时不支持");
      
          // 返回值: 结构体
          // NSValue* resultValue = [NSValue value:&result withObjCType:@encode(CLLocationCoordinate2D)];
          // HEAP[@(resultValue.hash)] = resultValue;
          //
          // methodResult(@(resultValue.hash));
      
          methodResult(nil/* 结构体getter暂时不支持 */);
      },
      
      @"AMapNaviConfig::get_strategy": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapNaviConfig::get_strategy");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapNaviConfig * ref = (AMapNaviConfig *) HEAP[@(refId)];
      
          // 开始调用
          AMapDrivingStrategy result = ref.strategy;
      
      
      
          // 返回值: Value
          methodResult(@(result));
      },
      
      @"AMapRouteConfig::get_appScheme": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapRouteConfig::get_appScheme");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapRouteConfig * ref = (AMapRouteConfig *) HEAP[@(refId)];
      
          // 开始调用
          NSString* result = ref.appScheme;
      
      
      
          // 返回值: jsonable
          methodResult(result);
      },
      
      @"AMapRouteConfig::get_appName": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapRouteConfig::get_appName");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapRouteConfig * ref = (AMapRouteConfig *) HEAP[@(refId)];
      
          // 开始调用
          NSString* result = ref.appName;
      
      
      
          // 返回值: jsonable
          methodResult(result);
      },
      
      @"AMapRouteConfig::get_startCoordinate": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapRouteConfig::get_startCoordinate");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapRouteConfig * ref = (AMapRouteConfig *) HEAP[@(refId)];
      
          // 开始调用
          CLLocationCoordinate2D result = ref.startCoordinate;
      
          NSLog(@"AMapRouteConfig::get_startCoordinate:结构体getter暂时不支持");
      
          // 返回值: 结构体
          // NSValue* resultValue = [NSValue value:&result withObjCType:@encode(CLLocationCoordinate2D)];
          // HEAP[@(resultValue.hash)] = resultValue;
          //
          // methodResult(@(resultValue.hash));
      
          methodResult(nil/* 结构体getter暂时不支持 */);
      },
      
      @"AMapRouteConfig::get_destinationCoordinate": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapRouteConfig::get_destinationCoordinate");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapRouteConfig * ref = (AMapRouteConfig *) HEAP[@(refId)];
      
          // 开始调用
          CLLocationCoordinate2D result = ref.destinationCoordinate;
      
          NSLog(@"AMapRouteConfig::get_destinationCoordinate:结构体getter暂时不支持");
      
          // 返回值: 结构体
          // NSValue* resultValue = [NSValue value:&result withObjCType:@encode(CLLocationCoordinate2D)];
          // HEAP[@(resultValue.hash)] = resultValue;
          //
          // methodResult(@(resultValue.hash));
      
          methodResult(nil/* 结构体getter暂时不支持 */);
      },
      
      @"AMapRouteConfig::get_drivingStrategy": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapRouteConfig::get_drivingStrategy");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapRouteConfig * ref = (AMapRouteConfig *) HEAP[@(refId)];
      
          // 开始调用
          AMapDrivingStrategy result = ref.drivingStrategy;
      
      
      
          // 返回值: Value
          methodResult(@(result));
      },
      
      @"AMapRouteConfig::get_transitStrategy": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapRouteConfig::get_transitStrategy");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapRouteConfig * ref = (AMapRouteConfig *) HEAP[@(refId)];
      
          // 开始调用
          AMapTransitStrategy result = ref.transitStrategy;
      
      
      
          // 返回值: Value
          methodResult(@(result));
      },
      
      @"AMapRouteConfig::get_routeType": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapRouteConfig::get_routeType");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapRouteConfig * ref = (AMapRouteConfig *) HEAP[@(refId)];
      
          // 开始调用
          AMapRouteSearchType result = ref.routeType;
      
      
      
          // 返回值: Value
          methodResult(@(result));
      },
      
      @"AMapPOIConfig::get_appScheme": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapPOIConfig::get_appScheme");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapPOIConfig * ref = (AMapPOIConfig *) HEAP[@(refId)];
      
          // 开始调用
          NSString* result = ref.appScheme;
      
      
      
          // 返回值: jsonable
          methodResult(result);
      },
      
      @"AMapPOIConfig::get_appName": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapPOIConfig::get_appName");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapPOIConfig * ref = (AMapPOIConfig *) HEAP[@(refId)];
      
          // 开始调用
          NSString* result = ref.appName;
      
      
      
          // 返回值: jsonable
          methodResult(result);
      },
      
      @"AMapPOIConfig::get_keywords": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapPOIConfig::get_keywords");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapPOIConfig * ref = (AMapPOIConfig *) HEAP[@(refId)];
      
          // 开始调用
          NSString* result = ref.keywords;
      
      
      
          // 返回值: jsonable
          methodResult(result);
      },
      
      @"AMapPOIConfig::get_leftTopCoordinate": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapPOIConfig::get_leftTopCoordinate");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapPOIConfig * ref = (AMapPOIConfig *) HEAP[@(refId)];
      
          // 开始调用
          CLLocationCoordinate2D result = ref.leftTopCoordinate;
      
          NSLog(@"AMapPOIConfig::get_leftTopCoordinate:结构体getter暂时不支持");
      
          // 返回值: 结构体
          // NSValue* resultValue = [NSValue value:&result withObjCType:@encode(CLLocationCoordinate2D)];
          // HEAP[@(resultValue.hash)] = resultValue;
          //
          // methodResult(@(resultValue.hash));
      
          methodResult(nil/* 结构体getter暂时不支持 */);
      },
      
      @"AMapPOIConfig::get_rightBottomCoordinate": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapPOIConfig::get_rightBottomCoordinate");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapPOIConfig * ref = (AMapPOIConfig *) HEAP[@(refId)];
      
          // 开始调用
          CLLocationCoordinate2D result = ref.rightBottomCoordinate;
      
          NSLog(@"AMapPOIConfig::get_rightBottomCoordinate:结构体getter暂时不支持");
      
          // 返回值: 结构体
          // NSValue* resultValue = [NSValue value:&result withObjCType:@encode(CLLocationCoordinate2D)];
          // HEAP[@(resultValue.hash)] = resultValue;
          //
          // methodResult(@(resultValue.hash));
      
          methodResult(nil/* 结构体getter暂时不支持 */);
      },
      
      @"AMapServices::get_apiKey": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapServices::get_apiKey");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapServices * ref = (AMapServices *) HEAP[@(refId)];
      
          // 开始调用
          NSString* result = ref.apiKey;
      
      
      
          // 返回值: jsonable
          methodResult(result);
      },
      
      @"AMapServices::get_enableHTTPS": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapServices::get_enableHTTPS");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapServices * ref = (AMapServices *) HEAP[@(refId)];
      
          // 开始调用
          BOOL result = ref.enableHTTPS;
      
      
      
          // 返回值: Value
          methodResult(@(result));
      },
      
      @"AMapServices::get_crashReportEnabled": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapServices::get_crashReportEnabled");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapServices * ref = (AMapServices *) HEAP[@(refId)];
      
          // 开始调用
          BOOL result = ref.crashReportEnabled;
      
      
      
          // 返回值: Value
          methodResult(@(result));
      },
      
      @"AMapServices::get_identifier": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapServices::get_identifier");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapServices * ref = (AMapServices *) HEAP[@(refId)];
      
          // 开始调用
          NSString* result = ref.identifier;
      
      
      
          // 返回值: jsonable
          methodResult(result);
      },
      
      @"AMapPOISearchBaseRequest::get_types": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapPOISearchBaseRequest::get_types");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapPOISearchBaseRequest * ref = (AMapPOISearchBaseRequest *) HEAP[@(refId)];
      
          // 开始调用
          NSString* result = ref.types;
      
      
      
          // 返回值: jsonable
          methodResult(result);
      },
      
      @"AMapPOISearchBaseRequest::get_sortrule": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapPOISearchBaseRequest::get_sortrule");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapPOISearchBaseRequest * ref = (AMapPOISearchBaseRequest *) HEAP[@(refId)];
      
          // 开始调用
          NSInteger result = ref.sortrule;
      
      
      
          // 返回值: Value
          methodResult(@(result));
      },
      
      @"AMapPOISearchBaseRequest::get_offset": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapPOISearchBaseRequest::get_offset");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapPOISearchBaseRequest * ref = (AMapPOISearchBaseRequest *) HEAP[@(refId)];
      
          // 开始调用
          NSInteger result = ref.offset;
      
      
      
          // 返回值: Value
          methodResult(@(result));
      },
      
      @"AMapPOISearchBaseRequest::get_page": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapPOISearchBaseRequest::get_page");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapPOISearchBaseRequest * ref = (AMapPOISearchBaseRequest *) HEAP[@(refId)];
      
          // 开始调用
          NSInteger result = ref.page;
      
      
      
          // 返回值: Value
          methodResult(@(result));
      },
      
      @"AMapPOISearchBaseRequest::get_building": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapPOISearchBaseRequest::get_building");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapPOISearchBaseRequest * ref = (AMapPOISearchBaseRequest *) HEAP[@(refId)];
      
          // 开始调用
          NSString* result = ref.building;
      
      
      
          // 返回值: jsonable
          methodResult(result);
      },
      
      @"AMapPOISearchBaseRequest::get_requireExtension": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapPOISearchBaseRequest::get_requireExtension");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapPOISearchBaseRequest * ref = (AMapPOISearchBaseRequest *) HEAP[@(refId)];
      
          // 开始调用
          BOOL result = ref.requireExtension;
      
      
      
          // 返回值: Value
          methodResult(@(result));
      },
      
      @"AMapPOISearchBaseRequest::get_requireSubPOIs": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapPOISearchBaseRequest::get_requireSubPOIs");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapPOISearchBaseRequest * ref = (AMapPOISearchBaseRequest *) HEAP[@(refId)];
      
          // 开始调用
          BOOL result = ref.requireSubPOIs;
      
      
      
          // 返回值: Value
          methodResult(@(result));
      },
      
      @"AMapPOIIDSearchRequest::get_uid": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapPOIIDSearchRequest::get_uid");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapPOIIDSearchRequest * ref = (AMapPOIIDSearchRequest *) HEAP[@(refId)];
      
          // 开始调用
          NSString* result = ref.uid;
      
      
      
          // 返回值: jsonable
          methodResult(result);
      },
      
      @"AMapPOIKeywordsSearchRequest::get_keywords": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapPOIKeywordsSearchRequest::get_keywords");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapPOIKeywordsSearchRequest * ref = (AMapPOIKeywordsSearchRequest *) HEAP[@(refId)];
      
          // 开始调用
          NSString* result = ref.keywords;
      
      
      
          // 返回值: jsonable
          methodResult(result);
      },
      
      @"AMapPOIKeywordsSearchRequest::get_city": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapPOIKeywordsSearchRequest::get_city");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapPOIKeywordsSearchRequest * ref = (AMapPOIKeywordsSearchRequest *) HEAP[@(refId)];
      
          // 开始调用
          NSString* result = ref.city;
      
      
      
          // 返回值: jsonable
          methodResult(result);
      },
      
      @"AMapPOIKeywordsSearchRequest::get_cityLimit": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapPOIKeywordsSearchRequest::get_cityLimit");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapPOIKeywordsSearchRequest * ref = (AMapPOIKeywordsSearchRequest *) HEAP[@(refId)];
      
          // 开始调用
          BOOL result = ref.cityLimit;
      
      
      
          // 返回值: Value
          methodResult(@(result));
      },
      
      @"AMapPOIKeywordsSearchRequest::get_location": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapPOIKeywordsSearchRequest::get_location");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapPOIKeywordsSearchRequest * ref = (AMapPOIKeywordsSearchRequest *) HEAP[@(refId)];
      
          // 开始调用
          AMapGeoPoint* result = ref.location;
      
      
      
          // 返回值: 引用
          HEAP[@(result.hash)] = result;
          methodResult(@(result.hash));
      },
      
      @"AMapPOIAroundSearchRequest::get_keywords": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapPOIAroundSearchRequest::get_keywords");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapPOIAroundSearchRequest * ref = (AMapPOIAroundSearchRequest *) HEAP[@(refId)];
      
          // 开始调用
          NSString* result = ref.keywords;
      
      
      
          // 返回值: jsonable
          methodResult(result);
      },
      
      @"AMapPOIAroundSearchRequest::get_location": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapPOIAroundSearchRequest::get_location");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapPOIAroundSearchRequest * ref = (AMapPOIAroundSearchRequest *) HEAP[@(refId)];
      
          // 开始调用
          AMapGeoPoint* result = ref.location;
      
      
      
          // 返回值: 引用
          HEAP[@(result.hash)] = result;
          methodResult(@(result.hash));
      },
      
      @"AMapPOIAroundSearchRequest::get_radius": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapPOIAroundSearchRequest::get_radius");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapPOIAroundSearchRequest * ref = (AMapPOIAroundSearchRequest *) HEAP[@(refId)];
      
          // 开始调用
          NSInteger result = ref.radius;
      
      
      
          // 返回值: Value
          methodResult(@(result));
      },
      
      @"AMapPOIAroundSearchRequest::get_city": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapPOIAroundSearchRequest::get_city");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapPOIAroundSearchRequest * ref = (AMapPOIAroundSearchRequest *) HEAP[@(refId)];
      
          // 开始调用
          NSString* result = ref.city;
      
      
      
          // 返回值: jsonable
          methodResult(result);
      },
      
      @"AMapPOIPolygonSearchRequest::get_keywords": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapPOIPolygonSearchRequest::get_keywords");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapPOIPolygonSearchRequest * ref = (AMapPOIPolygonSearchRequest *) HEAP[@(refId)];
      
          // 开始调用
          NSString* result = ref.keywords;
      
      
      
          // 返回值: jsonable
          methodResult(result);
      },
      
      @"AMapPOIPolygonSearchRequest::get_polygon": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapPOIPolygonSearchRequest::get_polygon");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapPOIPolygonSearchRequest * ref = (AMapPOIPolygonSearchRequest *) HEAP[@(refId)];
      
          // 开始调用
          AMapGeoPolygon* result = ref.polygon;
      
      
      
          // 返回值: 引用
          HEAP[@(result.hash)] = result;
          methodResult(@(result.hash));
      },
      
      @"AMapPOISearchResponse::get_count": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapPOISearchResponse::get_count");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapPOISearchResponse * ref = (AMapPOISearchResponse *) HEAP[@(refId)];
      
          // 开始调用
          NSInteger result = ref.count;
      
      
      
          // 返回值: Value
          methodResult(@(result));
      },
      
      @"AMapPOISearchResponse::get_suggestion": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapPOISearchResponse::get_suggestion");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapPOISearchResponse * ref = (AMapPOISearchResponse *) HEAP[@(refId)];
      
          // 开始调用
          AMapSuggestion* result = ref.suggestion;
      
      
      
          // 返回值: 引用
          HEAP[@(result.hash)] = result;
          methodResult(@(result.hash));
      },
      
      @"AMapPOISearchResponse::get_pois": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapPOISearchResponse::get_pois");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapPOISearchResponse * ref = (AMapPOISearchResponse *) HEAP[@(refId)];
      
          // 开始调用
          NSArray<AMapPOI*>* result = ref.pois;
      
      
      
          // 返回值: 列表
          NSMutableArray* refIdList = [NSMutableArray array];
          for (int i = 0; i < result.count; i++) {
              NSObject* object = [result objectAtIndex:i];
              [refIdList addObject: @(object.hash)];
              HEAP[@([object hash])] = object;
          }
      
          methodResult(refIdList);
      },
      
      @"AMapRoutePOISearchRequest::get_origin": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapRoutePOISearchRequest::get_origin");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapRoutePOISearchRequest * ref = (AMapRoutePOISearchRequest *) HEAP[@(refId)];
      
          // 开始调用
          AMapGeoPoint* result = ref.origin;
      
      
      
          // 返回值: 引用
          HEAP[@(result.hash)] = result;
          methodResult(@(result.hash));
      },
      
      @"AMapRoutePOISearchRequest::get_destination": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapRoutePOISearchRequest::get_destination");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapRoutePOISearchRequest * ref = (AMapRoutePOISearchRequest *) HEAP[@(refId)];
      
          // 开始调用
          AMapGeoPoint* result = ref.destination;
      
      
      
          // 返回值: 引用
          HEAP[@(result.hash)] = result;
          methodResult(@(result.hash));
      },
      
      @"AMapRoutePOISearchRequest::get_searchType": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapRoutePOISearchRequest::get_searchType");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapRoutePOISearchRequest * ref = (AMapRoutePOISearchRequest *) HEAP[@(refId)];
      
          // 开始调用
          AMapRoutePOISearchType result = ref.searchType;
      
      
      
          // 返回值: Value
          methodResult(@(result));
      },
      
      @"AMapRoutePOISearchRequest::get_strategy": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapRoutePOISearchRequest::get_strategy");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapRoutePOISearchRequest * ref = (AMapRoutePOISearchRequest *) HEAP[@(refId)];
      
          // 开始调用
          NSInteger result = ref.strategy;
      
      
      
          // 返回值: Value
          methodResult(@(result));
      },
      
      @"AMapRoutePOISearchRequest::get_range": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapRoutePOISearchRequest::get_range");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapRoutePOISearchRequest * ref = (AMapRoutePOISearchRequest *) HEAP[@(refId)];
      
          // 开始调用
          NSInteger result = ref.range;
      
      
      
          // 返回值: Value
          methodResult(@(result));
      },
      
      @"AMapRoutePOISearchRequest::get_polylineStr": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapRoutePOISearchRequest::get_polylineStr");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapRoutePOISearchRequest * ref = (AMapRoutePOISearchRequest *) HEAP[@(refId)];
      
          // 开始调用
          NSString* result = ref.polylineStr;
      
      
      
          // 返回值: jsonable
          methodResult(result);
      },
      
      @"AMapRoutePOISearchRequest::get_polyline": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapRoutePOISearchRequest::get_polyline");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapRoutePOISearchRequest * ref = (AMapRoutePOISearchRequest *) HEAP[@(refId)];
      
          // 开始调用
          NSArray<AMapGeoPoint*>* result = ref.polyline;
      
      
      
          // 返回值: 列表
          NSMutableArray* refIdList = [NSMutableArray array];
          for (int i = 0; i < result.count; i++) {
              NSObject* object = [result objectAtIndex:i];
              [refIdList addObject: @(object.hash)];
              HEAP[@([object hash])] = object;
          }
      
          methodResult(refIdList);
      },
      
      @"AMapRoutePOISearchResponse::get_count": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapRoutePOISearchResponse::get_count");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapRoutePOISearchResponse * ref = (AMapRoutePOISearchResponse *) HEAP[@(refId)];
      
          // 开始调用
          NSInteger result = ref.count;
      
      
      
          // 返回值: Value
          methodResult(@(result));
      },
      
      @"AMapRoutePOISearchResponse::get_pois": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapRoutePOISearchResponse::get_pois");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapRoutePOISearchResponse * ref = (AMapRoutePOISearchResponse *) HEAP[@(refId)];
      
          // 开始调用
          NSArray<AMapRoutePOI*>* result = ref.pois;
      
      
      
          // 返回值: 列表
          NSMutableArray* refIdList = [NSMutableArray array];
          for (int i = 0; i < result.count; i++) {
              NSObject* object = [result objectAtIndex:i];
              [refIdList addObject: @(object.hash)];
              HEAP[@([object hash])] = object;
          }
      
          methodResult(refIdList);
      },
      
      @"AMapInputTipsSearchRequest::get_keywords": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapInputTipsSearchRequest::get_keywords");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapInputTipsSearchRequest * ref = (AMapInputTipsSearchRequest *) HEAP[@(refId)];
      
          // 开始调用
          NSString* result = ref.keywords;
      
      
      
          // 返回值: jsonable
          methodResult(result);
      },
      
      @"AMapInputTipsSearchRequest::get_city": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapInputTipsSearchRequest::get_city");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapInputTipsSearchRequest * ref = (AMapInputTipsSearchRequest *) HEAP[@(refId)];
      
          // 开始调用
          NSString* result = ref.city;
      
      
      
          // 返回值: jsonable
          methodResult(result);
      },
      
      @"AMapInputTipsSearchRequest::get_types": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapInputTipsSearchRequest::get_types");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapInputTipsSearchRequest * ref = (AMapInputTipsSearchRequest *) HEAP[@(refId)];
      
          // 开始调用
          NSString* result = ref.types;
      
      
      
          // 返回值: jsonable
          methodResult(result);
      },
      
      @"AMapInputTipsSearchRequest::get_cityLimit": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapInputTipsSearchRequest::get_cityLimit");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapInputTipsSearchRequest * ref = (AMapInputTipsSearchRequest *) HEAP[@(refId)];
      
          // 开始调用
          BOOL result = ref.cityLimit;
      
      
      
          // 返回值: Value
          methodResult(@(result));
      },
      
      @"AMapInputTipsSearchRequest::get_location": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapInputTipsSearchRequest::get_location");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapInputTipsSearchRequest * ref = (AMapInputTipsSearchRequest *) HEAP[@(refId)];
      
          // 开始调用
          NSString* result = ref.location;
      
      
      
          // 返回值: jsonable
          methodResult(result);
      },
      
      @"AMapInputTipsSearchResponse::get_count": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapInputTipsSearchResponse::get_count");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapInputTipsSearchResponse * ref = (AMapInputTipsSearchResponse *) HEAP[@(refId)];
      
          // 开始调用
          NSInteger result = ref.count;
      
      
      
          // 返回值: Value
          methodResult(@(result));
      },
      
      @"AMapInputTipsSearchResponse::get_tips": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapInputTipsSearchResponse::get_tips");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapInputTipsSearchResponse * ref = (AMapInputTipsSearchResponse *) HEAP[@(refId)];
      
          // 开始调用
          NSArray<AMapTip*>* result = ref.tips;
      
      
      
          // 返回值: 列表
          NSMutableArray* refIdList = [NSMutableArray array];
          for (int i = 0; i < result.count; i++) {
              NSObject* object = [result objectAtIndex:i];
              [refIdList addObject: @(object.hash)];
              HEAP[@([object hash])] = object;
          }
      
          methodResult(refIdList);
      },
      
      @"AMapGeocodeSearchRequest::get_address": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapGeocodeSearchRequest::get_address");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapGeocodeSearchRequest * ref = (AMapGeocodeSearchRequest *) HEAP[@(refId)];
      
          // 开始调用
          NSString* result = ref.address;
      
      
      
          // 返回值: jsonable
          methodResult(result);
      },
      
      @"AMapGeocodeSearchRequest::get_city": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapGeocodeSearchRequest::get_city");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapGeocodeSearchRequest * ref = (AMapGeocodeSearchRequest *) HEAP[@(refId)];
      
          // 开始调用
          NSString* result = ref.city;
      
      
      
          // 返回值: jsonable
          methodResult(result);
      },
      
      @"AMapGeocodeSearchResponse::get_count": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapGeocodeSearchResponse::get_count");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapGeocodeSearchResponse * ref = (AMapGeocodeSearchResponse *) HEAP[@(refId)];
      
          // 开始调用
          NSInteger result = ref.count;
      
      
      
          // 返回值: Value
          methodResult(@(result));
      },
      
      @"AMapGeocodeSearchResponse::get_geocodes": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapGeocodeSearchResponse::get_geocodes");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapGeocodeSearchResponse * ref = (AMapGeocodeSearchResponse *) HEAP[@(refId)];
      
          // 开始调用
          NSArray<AMapGeocode*>* result = ref.geocodes;
      
      
      
          // 返回值: 列表
          NSMutableArray* refIdList = [NSMutableArray array];
          for (int i = 0; i < result.count; i++) {
              NSObject* object = [result objectAtIndex:i];
              [refIdList addObject: @(object.hash)];
              HEAP[@([object hash])] = object;
          }
      
          methodResult(refIdList);
      },
      
      @"AMapReGeocodeSearchRequest::get_requireExtension": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapReGeocodeSearchRequest::get_requireExtension");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapReGeocodeSearchRequest * ref = (AMapReGeocodeSearchRequest *) HEAP[@(refId)];
      
          // 开始调用
          BOOL result = ref.requireExtension;
      
      
      
          // 返回值: Value
          methodResult(@(result));
      },
      
      @"AMapReGeocodeSearchRequest::get_location": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapReGeocodeSearchRequest::get_location");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapReGeocodeSearchRequest * ref = (AMapReGeocodeSearchRequest *) HEAP[@(refId)];
      
          // 开始调用
          AMapGeoPoint* result = ref.location;
      
      
      
          // 返回值: 引用
          HEAP[@(result.hash)] = result;
          methodResult(@(result.hash));
      },
      
      @"AMapReGeocodeSearchRequest::get_radius": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapReGeocodeSearchRequest::get_radius");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapReGeocodeSearchRequest * ref = (AMapReGeocodeSearchRequest *) HEAP[@(refId)];
      
          // 开始调用
          NSInteger result = ref.radius;
      
      
      
          // 返回值: Value
          methodResult(@(result));
      },
      
      @"AMapReGeocodeSearchRequest::get_poitype": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapReGeocodeSearchRequest::get_poitype");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapReGeocodeSearchRequest * ref = (AMapReGeocodeSearchRequest *) HEAP[@(refId)];
      
          // 开始调用
          NSString* result = ref.poitype;
      
      
      
          // 返回值: jsonable
          methodResult(result);
      },
      
      @"AMapReGeocodeSearchResponse::get_regeocode": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapReGeocodeSearchResponse::get_regeocode");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapReGeocodeSearchResponse * ref = (AMapReGeocodeSearchResponse *) HEAP[@(refId)];
      
          // 开始调用
          AMapReGeocode* result = ref.regeocode;
      
      
      
          // 返回值: 引用
          HEAP[@(result.hash)] = result;
          methodResult(@(result.hash));
      },
      
      @"AMapBusStopSearchRequest::get_keywords": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapBusStopSearchRequest::get_keywords");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapBusStopSearchRequest * ref = (AMapBusStopSearchRequest *) HEAP[@(refId)];
      
          // 开始调用
          NSString* result = ref.keywords;
      
      
      
          // 返回值: jsonable
          methodResult(result);
      },
      
      @"AMapBusStopSearchRequest::get_city": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapBusStopSearchRequest::get_city");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapBusStopSearchRequest * ref = (AMapBusStopSearchRequest *) HEAP[@(refId)];
      
          // 开始调用
          NSString* result = ref.city;
      
      
      
          // 返回值: jsonable
          methodResult(result);
      },
      
      @"AMapBusStopSearchRequest::get_offset": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapBusStopSearchRequest::get_offset");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapBusStopSearchRequest * ref = (AMapBusStopSearchRequest *) HEAP[@(refId)];
      
          // 开始调用
          NSInteger result = ref.offset;
      
      
      
          // 返回值: Value
          methodResult(@(result));
      },
      
      @"AMapBusStopSearchRequest::get_page": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapBusStopSearchRequest::get_page");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapBusStopSearchRequest * ref = (AMapBusStopSearchRequest *) HEAP[@(refId)];
      
          // 开始调用
          NSInteger result = ref.page;
      
      
      
          // 返回值: Value
          methodResult(@(result));
      },
      
      @"AMapBusStopSearchResponse::get_count": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapBusStopSearchResponse::get_count");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapBusStopSearchResponse * ref = (AMapBusStopSearchResponse *) HEAP[@(refId)];
      
          // 开始调用
          NSInteger result = ref.count;
      
      
      
          // 返回值: Value
          methodResult(@(result));
      },
      
      @"AMapBusStopSearchResponse::get_suggestion": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapBusStopSearchResponse::get_suggestion");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapBusStopSearchResponse * ref = (AMapBusStopSearchResponse *) HEAP[@(refId)];
      
          // 开始调用
          AMapSuggestion* result = ref.suggestion;
      
      
      
          // 返回值: 引用
          HEAP[@(result.hash)] = result;
          methodResult(@(result.hash));
      },
      
      @"AMapBusStopSearchResponse::get_busstops": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapBusStopSearchResponse::get_busstops");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapBusStopSearchResponse * ref = (AMapBusStopSearchResponse *) HEAP[@(refId)];
      
          // 开始调用
          NSArray<AMapBusStop*>* result = ref.busstops;
      
      
      
          // 返回值: 列表
          NSMutableArray* refIdList = [NSMutableArray array];
          for (int i = 0; i < result.count; i++) {
              NSObject* object = [result objectAtIndex:i];
              [refIdList addObject: @(object.hash)];
              HEAP[@([object hash])] = object;
          }
      
          methodResult(refIdList);
      },
      
      @"AMapBusLineBaseSearchRequest::get_city": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapBusLineBaseSearchRequest::get_city");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapBusLineBaseSearchRequest * ref = (AMapBusLineBaseSearchRequest *) HEAP[@(refId)];
      
          // 开始调用
          NSString* result = ref.city;
      
      
      
          // 返回值: jsonable
          methodResult(result);
      },
      
      @"AMapBusLineBaseSearchRequest::get_requireExtension": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapBusLineBaseSearchRequest::get_requireExtension");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapBusLineBaseSearchRequest * ref = (AMapBusLineBaseSearchRequest *) HEAP[@(refId)];
      
          // 开始调用
          BOOL result = ref.requireExtension;
      
      
      
          // 返回值: Value
          methodResult(@(result));
      },
      
      @"AMapBusLineBaseSearchRequest::get_offset": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapBusLineBaseSearchRequest::get_offset");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapBusLineBaseSearchRequest * ref = (AMapBusLineBaseSearchRequest *) HEAP[@(refId)];
      
          // 开始调用
          NSInteger result = ref.offset;
      
      
      
          // 返回值: Value
          methodResult(@(result));
      },
      
      @"AMapBusLineBaseSearchRequest::get_page": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapBusLineBaseSearchRequest::get_page");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapBusLineBaseSearchRequest * ref = (AMapBusLineBaseSearchRequest *) HEAP[@(refId)];
      
          // 开始调用
          NSInteger result = ref.page;
      
      
      
          // 返回值: Value
          methodResult(@(result));
      },
      
      @"AMapBusLineNameSearchRequest::get_keywords": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapBusLineNameSearchRequest::get_keywords");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapBusLineNameSearchRequest * ref = (AMapBusLineNameSearchRequest *) HEAP[@(refId)];
      
          // 开始调用
          NSString* result = ref.keywords;
      
      
      
          // 返回值: jsonable
          methodResult(result);
      },
      
      @"AMapBusLineIDSearchRequest::get_uid": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapBusLineIDSearchRequest::get_uid");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapBusLineIDSearchRequest * ref = (AMapBusLineIDSearchRequest *) HEAP[@(refId)];
      
          // 开始调用
          NSString* result = ref.uid;
      
      
      
          // 返回值: jsonable
          methodResult(result);
      },
      
      @"AMapBusLineSearchResponse::get_count": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapBusLineSearchResponse::get_count");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapBusLineSearchResponse * ref = (AMapBusLineSearchResponse *) HEAP[@(refId)];
      
          // 开始调用
          NSInteger result = ref.count;
      
      
      
          // 返回值: Value
          methodResult(@(result));
      },
      
      @"AMapBusLineSearchResponse::get_suggestion": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapBusLineSearchResponse::get_suggestion");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapBusLineSearchResponse * ref = (AMapBusLineSearchResponse *) HEAP[@(refId)];
      
          // 开始调用
          AMapSuggestion* result = ref.suggestion;
      
      
      
          // 返回值: 引用
          HEAP[@(result.hash)] = result;
          methodResult(@(result.hash));
      },
      
      @"AMapBusLineSearchResponse::get_buslines": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapBusLineSearchResponse::get_buslines");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapBusLineSearchResponse * ref = (AMapBusLineSearchResponse *) HEAP[@(refId)];
      
          // 开始调用
          NSArray<AMapBusLine*>* result = ref.buslines;
      
      
      
          // 返回值: 列表
          NSMutableArray* refIdList = [NSMutableArray array];
          for (int i = 0; i < result.count; i++) {
              NSObject* object = [result objectAtIndex:i];
              [refIdList addObject: @(object.hash)];
              HEAP[@([object hash])] = object;
          }
      
          methodResult(refIdList);
      },
      
      @"AMapDistrictSearchRequest::get_keywords": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapDistrictSearchRequest::get_keywords");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapDistrictSearchRequest * ref = (AMapDistrictSearchRequest *) HEAP[@(refId)];
      
          // 开始调用
          NSString* result = ref.keywords;
      
      
      
          // 返回值: jsonable
          methodResult(result);
      },
      
      @"AMapDistrictSearchResponse::get_count": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapDistrictSearchResponse::get_count");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapDistrictSearchResponse * ref = (AMapDistrictSearchResponse *) HEAP[@(refId)];
      
          // 开始调用
          NSInteger result = ref.count;
      
      
      
          // 返回值: Value
          methodResult(@(result));
      },
      
      @"AMapDistrictSearchResponse::get_districts": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapDistrictSearchResponse::get_districts");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapDistrictSearchResponse * ref = (AMapDistrictSearchResponse *) HEAP[@(refId)];
      
          // 开始调用
          NSArray<AMapDistrict*>* result = ref.districts;
      
      
      
          // 返回值: 列表
          NSMutableArray* refIdList = [NSMutableArray array];
          for (int i = 0; i < result.count; i++) {
              NSObject* object = [result objectAtIndex:i];
              [refIdList addObject: @(object.hash)];
              HEAP[@([object hash])] = object;
          }
      
          methodResult(refIdList);
      },
      
      @"AMapRouteSearchBaseRequest::get_origin": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapRouteSearchBaseRequest::get_origin");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapRouteSearchBaseRequest * ref = (AMapRouteSearchBaseRequest *) HEAP[@(refId)];
      
          // 开始调用
          AMapGeoPoint* result = ref.origin;
      
      
      
          // 返回值: 引用
          HEAP[@(result.hash)] = result;
          methodResult(@(result.hash));
      },
      
      @"AMapRouteSearchBaseRequest::get_destination": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapRouteSearchBaseRequest::get_destination");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapRouteSearchBaseRequest * ref = (AMapRouteSearchBaseRequest *) HEAP[@(refId)];
      
          // 开始调用
          AMapGeoPoint* result = ref.destination;
      
      
      
          // 返回值: 引用
          HEAP[@(result.hash)] = result;
          methodResult(@(result.hash));
      },
      
      @"AMapDrivingRouteSearchRequest::get_strategy": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapDrivingRouteSearchRequest::get_strategy");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapDrivingRouteSearchRequest * ref = (AMapDrivingRouteSearchRequest *) HEAP[@(refId)];
      
          // 开始调用
          NSInteger result = ref.strategy;
      
      
      
          // 返回值: Value
          methodResult(@(result));
      },
      
      @"AMapDrivingRouteSearchRequest::get_waypoints": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapDrivingRouteSearchRequest::get_waypoints");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapDrivingRouteSearchRequest * ref = (AMapDrivingRouteSearchRequest *) HEAP[@(refId)];
      
          // 开始调用
          NSArray<AMapGeoPoint*>* result = ref.waypoints;
      
      
      
          // 返回值: 列表
          NSMutableArray* refIdList = [NSMutableArray array];
          for (int i = 0; i < result.count; i++) {
              NSObject* object = [result objectAtIndex:i];
              [refIdList addObject: @(object.hash)];
              HEAP[@([object hash])] = object;
          }
      
          methodResult(refIdList);
      },
      
      @"AMapDrivingRouteSearchRequest::get_avoidpolygons": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapDrivingRouteSearchRequest::get_avoidpolygons");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapDrivingRouteSearchRequest * ref = (AMapDrivingRouteSearchRequest *) HEAP[@(refId)];
      
          // 开始调用
          NSArray<AMapGeoPolygon*>* result = ref.avoidpolygons;
      
      
      
          // 返回值: 列表
          NSMutableArray* refIdList = [NSMutableArray array];
          for (int i = 0; i < result.count; i++) {
              NSObject* object = [result objectAtIndex:i];
              [refIdList addObject: @(object.hash)];
              HEAP[@([object hash])] = object;
          }
      
          methodResult(refIdList);
      },
      
      @"AMapDrivingRouteSearchRequest::get_avoidroad": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapDrivingRouteSearchRequest::get_avoidroad");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapDrivingRouteSearchRequest * ref = (AMapDrivingRouteSearchRequest *) HEAP[@(refId)];
      
          // 开始调用
          NSString* result = ref.avoidroad;
      
      
      
          // 返回值: jsonable
          methodResult(result);
      },
      
      @"AMapDrivingRouteSearchRequest::get_originId": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapDrivingRouteSearchRequest::get_originId");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapDrivingRouteSearchRequest * ref = (AMapDrivingRouteSearchRequest *) HEAP[@(refId)];
      
          // 开始调用
          NSString* result = ref.originId;
      
      
      
          // 返回值: jsonable
          methodResult(result);
      },
      
      @"AMapDrivingRouteSearchRequest::get_destinationId": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapDrivingRouteSearchRequest::get_destinationId");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapDrivingRouteSearchRequest * ref = (AMapDrivingRouteSearchRequest *) HEAP[@(refId)];
      
          // 开始调用
          NSString* result = ref.destinationId;
      
      
      
          // 返回值: jsonable
          methodResult(result);
      },
      
      @"AMapDrivingRouteSearchRequest::get_origintype": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapDrivingRouteSearchRequest::get_origintype");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapDrivingRouteSearchRequest * ref = (AMapDrivingRouteSearchRequest *) HEAP[@(refId)];
      
          // 开始调用
          NSString* result = ref.origintype;
      
      
      
          // 返回值: jsonable
          methodResult(result);
      },
      
      @"AMapDrivingRouteSearchRequest::get_destinationtype": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapDrivingRouteSearchRequest::get_destinationtype");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapDrivingRouteSearchRequest * ref = (AMapDrivingRouteSearchRequest *) HEAP[@(refId)];
      
          // 开始调用
          NSString* result = ref.destinationtype;
      
      
      
          // 返回值: jsonable
          methodResult(result);
      },
      
      @"AMapDrivingRouteSearchRequest::get_requireExtension": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapDrivingRouteSearchRequest::get_requireExtension");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapDrivingRouteSearchRequest * ref = (AMapDrivingRouteSearchRequest *) HEAP[@(refId)];
      
          // 开始调用
          BOOL result = ref.requireExtension;
      
      
      
          // 返回值: Value
          methodResult(@(result));
      },
      
      @"AMapDrivingRouteSearchRequest::get_plateProvince": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapDrivingRouteSearchRequest::get_plateProvince");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapDrivingRouteSearchRequest * ref = (AMapDrivingRouteSearchRequest *) HEAP[@(refId)];
      
          // 开始调用
          NSString* result = ref.plateProvince;
      
      
      
          // 返回值: jsonable
          methodResult(result);
      },
      
      @"AMapDrivingRouteSearchRequest::get_plateNumber": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapDrivingRouteSearchRequest::get_plateNumber");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapDrivingRouteSearchRequest * ref = (AMapDrivingRouteSearchRequest *) HEAP[@(refId)];
      
          // 开始调用
          NSString* result = ref.plateNumber;
      
      
      
          // 返回值: jsonable
          methodResult(result);
      },
      
      @"AMapDrivingRouteSearchRequest::get_ferry": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapDrivingRouteSearchRequest::get_ferry");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapDrivingRouteSearchRequest * ref = (AMapDrivingRouteSearchRequest *) HEAP[@(refId)];
      
          // 开始调用
          NSInteger result = ref.ferry;
      
      
      
          // 返回值: Value
          methodResult(@(result));
      },
      
      @"AMapDrivingRouteSearchRequest::get_cartype": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapDrivingRouteSearchRequest::get_cartype");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapDrivingRouteSearchRequest * ref = (AMapDrivingRouteSearchRequest *) HEAP[@(refId)];
      
          // 开始调用
          NSInteger result = ref.cartype;
      
      
      
          // 返回值: Value
          methodResult(@(result));
      },
      
      @"AMapWalkingRouteSearchRequest::get_multipath": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapWalkingRouteSearchRequest::get_multipath");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapWalkingRouteSearchRequest * ref = (AMapWalkingRouteSearchRequest *) HEAP[@(refId)];
      
          // 开始调用
          NSInteger result = ref.multipath;
      
      
      
          // 返回值: Value
          methodResult(@(result));
      },
      
      @"AMapTransitRouteSearchRequest::get_strategy": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapTransitRouteSearchRequest::get_strategy");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapTransitRouteSearchRequest * ref = (AMapTransitRouteSearchRequest *) HEAP[@(refId)];
      
          // 开始调用
          NSInteger result = ref.strategy;
      
      
      
          // 返回值: Value
          methodResult(@(result));
      },
      
      @"AMapTransitRouteSearchRequest::get_city": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapTransitRouteSearchRequest::get_city");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapTransitRouteSearchRequest * ref = (AMapTransitRouteSearchRequest *) HEAP[@(refId)];
      
          // 开始调用
          NSString* result = ref.city;
      
      
      
          // 返回值: jsonable
          methodResult(result);
      },
      
      @"AMapTransitRouteSearchRequest::get_destinationCity": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapTransitRouteSearchRequest::get_destinationCity");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapTransitRouteSearchRequest * ref = (AMapTransitRouteSearchRequest *) HEAP[@(refId)];
      
          // 开始调用
          NSString* result = ref.destinationCity;
      
      
      
          // 返回值: jsonable
          methodResult(result);
      },
      
      @"AMapTransitRouteSearchRequest::get_nightflag": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapTransitRouteSearchRequest::get_nightflag");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapTransitRouteSearchRequest * ref = (AMapTransitRouteSearchRequest *) HEAP[@(refId)];
      
          // 开始调用
          BOOL result = ref.nightflag;
      
      
      
          // 返回值: Value
          methodResult(@(result));
      },
      
      @"AMapTransitRouteSearchRequest::get_requireExtension": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapTransitRouteSearchRequest::get_requireExtension");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapTransitRouteSearchRequest * ref = (AMapTransitRouteSearchRequest *) HEAP[@(refId)];
      
          // 开始调用
          BOOL result = ref.requireExtension;
      
      
      
          // 返回值: Value
          methodResult(@(result));
      },
      
      @"AMapRidingRouteSearchRequest::get_type": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapRidingRouteSearchRequest::get_type");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapRidingRouteSearchRequest * ref = (AMapRidingRouteSearchRequest *) HEAP[@(refId)];
      
          // 开始调用
          NSInteger result = ref.type;
      
      
      
          // 返回值: Value
          methodResult(@(result));
      },
      
      @"AMapRouteSearchResponse::get_count": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapRouteSearchResponse::get_count");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapRouteSearchResponse * ref = (AMapRouteSearchResponse *) HEAP[@(refId)];
      
          // 开始调用
          NSInteger result = ref.count;
      
      
      
          // 返回值: Value
          methodResult(@(result));
      },
      
      @"AMapRouteSearchResponse::get_route": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapRouteSearchResponse::get_route");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapRouteSearchResponse * ref = (AMapRouteSearchResponse *) HEAP[@(refId)];
      
          // 开始调用
          AMapRoute* result = ref.route;
      
      
      
          // 返回值: 引用
          HEAP[@(result.hash)] = result;
          methodResult(@(result.hash));
      },
      
      @"AMapTruckRouteSearchRequest::get_strategy": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapTruckRouteSearchRequest::get_strategy");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapTruckRouteSearchRequest * ref = (AMapTruckRouteSearchRequest *) HEAP[@(refId)];
      
          // 开始调用
          NSInteger result = ref.strategy;
      
      
      
          // 返回值: Value
          methodResult(@(result));
      },
      
      @"AMapTruckRouteSearchRequest::get_waypoints": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapTruckRouteSearchRequest::get_waypoints");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapTruckRouteSearchRequest * ref = (AMapTruckRouteSearchRequest *) HEAP[@(refId)];
      
          // 开始调用
          NSArray<AMapGeoPoint*>* result = ref.waypoints;
      
      
      
          // 返回值: 列表
          NSMutableArray* refIdList = [NSMutableArray array];
          for (int i = 0; i < result.count; i++) {
              NSObject* object = [result objectAtIndex:i];
              [refIdList addObject: @(object.hash)];
              HEAP[@([object hash])] = object;
          }
      
          methodResult(refIdList);
      },
      
      @"AMapTruckRouteSearchRequest::get_originId": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapTruckRouteSearchRequest::get_originId");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapTruckRouteSearchRequest * ref = (AMapTruckRouteSearchRequest *) HEAP[@(refId)];
      
          // 开始调用
          NSString* result = ref.originId;
      
      
      
          // 返回值: jsonable
          methodResult(result);
      },
      
      @"AMapTruckRouteSearchRequest::get_destinationId": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapTruckRouteSearchRequest::get_destinationId");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapTruckRouteSearchRequest * ref = (AMapTruckRouteSearchRequest *) HEAP[@(refId)];
      
          // 开始调用
          NSString* result = ref.destinationId;
      
      
      
          // 返回值: jsonable
          methodResult(result);
      },
      
      @"AMapTruckRouteSearchRequest::get_origintype": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapTruckRouteSearchRequest::get_origintype");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapTruckRouteSearchRequest * ref = (AMapTruckRouteSearchRequest *) HEAP[@(refId)];
      
          // 开始调用
          NSString* result = ref.origintype;
      
      
      
          // 返回值: jsonable
          methodResult(result);
      },
      
      @"AMapTruckRouteSearchRequest::get_destinationtype": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapTruckRouteSearchRequest::get_destinationtype");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapTruckRouteSearchRequest * ref = (AMapTruckRouteSearchRequest *) HEAP[@(refId)];
      
          // 开始调用
          NSString* result = ref.destinationtype;
      
      
      
          // 返回值: jsonable
          methodResult(result);
      },
      
      @"AMapTruckRouteSearchRequest::get_plateProvince": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapTruckRouteSearchRequest::get_plateProvince");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapTruckRouteSearchRequest * ref = (AMapTruckRouteSearchRequest *) HEAP[@(refId)];
      
          // 开始调用
          NSString* result = ref.plateProvince;
      
      
      
          // 返回值: jsonable
          methodResult(result);
      },
      
      @"AMapTruckRouteSearchRequest::get_plateNumber": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapTruckRouteSearchRequest::get_plateNumber");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapTruckRouteSearchRequest * ref = (AMapTruckRouteSearchRequest *) HEAP[@(refId)];
      
          // 开始调用
          NSString* result = ref.plateNumber;
      
      
      
          // 返回值: jsonable
          methodResult(result);
      },
      
      @"AMapTruckRouteSearchRequest::get_size": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapTruckRouteSearchRequest::get_size");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapTruckRouteSearchRequest * ref = (AMapTruckRouteSearchRequest *) HEAP[@(refId)];
      
          // 开始调用
          AMapTruckSizeType result = ref.size;
      
      
      
          // 返回值: Value
          methodResult(@(result));
      },
      
      @"AMapTruckRouteSearchRequest::get_height": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapTruckRouteSearchRequest::get_height");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapTruckRouteSearchRequest * ref = (AMapTruckRouteSearchRequest *) HEAP[@(refId)];
      
          // 开始调用
          CGFloat result = ref.height;
      
      
      
          // 返回值: Value
          methodResult(@(result));
      },
      
      @"AMapTruckRouteSearchRequest::get_width": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapTruckRouteSearchRequest::get_width");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapTruckRouteSearchRequest * ref = (AMapTruckRouteSearchRequest *) HEAP[@(refId)];
      
          // 开始调用
          CGFloat result = ref.width;
      
      
      
          // 返回值: Value
          methodResult(@(result));
      },
      
      @"AMapTruckRouteSearchRequest::get_load": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapTruckRouteSearchRequest::get_load");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapTruckRouteSearchRequest * ref = (AMapTruckRouteSearchRequest *) HEAP[@(refId)];
      
          // 开始调用
          CGFloat result = ref.load;
      
      
      
          // 返回值: Value
          methodResult(@(result));
      },
      
      @"AMapTruckRouteSearchRequest::get_weight": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapTruckRouteSearchRequest::get_weight");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapTruckRouteSearchRequest * ref = (AMapTruckRouteSearchRequest *) HEAP[@(refId)];
      
          // 开始调用
          CGFloat result = ref.weight;
      
      
      
          // 返回值: Value
          methodResult(@(result));
      },
      
      @"AMapTruckRouteSearchRequest::get_axis": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapTruckRouteSearchRequest::get_axis");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapTruckRouteSearchRequest * ref = (AMapTruckRouteSearchRequest *) HEAP[@(refId)];
      
          // 开始调用
          NSInteger result = ref.axis;
      
      
      
          // 返回值: Value
          methodResult(@(result));
      },
      
      @"AMapDistanceSearchRequest::get_origins": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapDistanceSearchRequest::get_origins");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapDistanceSearchRequest * ref = (AMapDistanceSearchRequest *) HEAP[@(refId)];
      
          // 开始调用
          NSArray<AMapGeoPoint*>* result = ref.origins;
      
      
      
          // 返回值: 列表
          NSMutableArray* refIdList = [NSMutableArray array];
          for (int i = 0; i < result.count; i++) {
              NSObject* object = [result objectAtIndex:i];
              [refIdList addObject: @(object.hash)];
              HEAP[@([object hash])] = object;
          }
      
          methodResult(refIdList);
      },
      
      @"AMapDistanceSearchRequest::get_destination": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapDistanceSearchRequest::get_destination");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapDistanceSearchRequest * ref = (AMapDistanceSearchRequest *) HEAP[@(refId)];
      
          // 开始调用
          AMapGeoPoint* result = ref.destination;
      
      
      
          // 返回值: 引用
          HEAP[@(result.hash)] = result;
          methodResult(@(result.hash));
      },
      
      @"AMapDistanceSearchRequest::get_type": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapDistanceSearchRequest::get_type");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapDistanceSearchRequest * ref = (AMapDistanceSearchRequest *) HEAP[@(refId)];
      
          // 开始调用
          NSInteger result = ref.type;
      
      
      
          // 返回值: Value
          methodResult(@(result));
      },
      
      @"AMapDistanceSearchResponse::get_results": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapDistanceSearchResponse::get_results");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapDistanceSearchResponse * ref = (AMapDistanceSearchResponse *) HEAP[@(refId)];
      
          // 开始调用
          NSArray<AMapDistanceResult*>* result = ref.results;
      
      
      
          // 返回值: 列表
          NSMutableArray* refIdList = [NSMutableArray array];
          for (int i = 0; i < result.count; i++) {
              NSObject* object = [result objectAtIndex:i];
              [refIdList addObject: @(object.hash)];
              HEAP[@([object hash])] = object;
          }
      
          methodResult(refIdList);
      },
      
      @"AMapWeatherSearchRequest::get_city": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapWeatherSearchRequest::get_city");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapWeatherSearchRequest * ref = (AMapWeatherSearchRequest *) HEAP[@(refId)];
      
          // 开始调用
          NSString* result = ref.city;
      
      
      
          // 返回值: jsonable
          methodResult(result);
      },
      
      @"AMapWeatherSearchRequest::get_type": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapWeatherSearchRequest::get_type");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapWeatherSearchRequest * ref = (AMapWeatherSearchRequest *) HEAP[@(refId)];
      
          // 开始调用
          AMapWeatherType result = ref.type;
      
      
      
          // 返回值: Value
          methodResult(@(result));
      },
      
      @"AMapWeatherSearchResponse::get_lives": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapWeatherSearchResponse::get_lives");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapWeatherSearchResponse * ref = (AMapWeatherSearchResponse *) HEAP[@(refId)];
      
          // 开始调用
          NSArray<AMapLocalWeatherLive*>* result = ref.lives;
      
      
      
          // 返回值: 列表
          NSMutableArray* refIdList = [NSMutableArray array];
          for (int i = 0; i < result.count; i++) {
              NSObject* object = [result objectAtIndex:i];
              [refIdList addObject: @(object.hash)];
              HEAP[@([object hash])] = object;
          }
      
          methodResult(refIdList);
      },
      
      @"AMapWeatherSearchResponse::get_forecasts": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapWeatherSearchResponse::get_forecasts");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapWeatherSearchResponse * ref = (AMapWeatherSearchResponse *) HEAP[@(refId)];
      
          // 开始调用
          NSArray<AMapLocalWeatherForecast*>* result = ref.forecasts;
      
      
      
          // 返回值: 列表
          NSMutableArray* refIdList = [NSMutableArray array];
          for (int i = 0; i < result.count; i++) {
              NSObject* object = [result objectAtIndex:i];
              [refIdList addObject: @(object.hash)];
              HEAP[@([object hash])] = object;
          }
      
          methodResult(refIdList);
      },
      
      @"AMapRoadTrafficSearchBaseRequest::get_level": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapRoadTrafficSearchBaseRequest::get_level");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapRoadTrafficSearchBaseRequest * ref = (AMapRoadTrafficSearchBaseRequest *) HEAP[@(refId)];
      
          // 开始调用
          NSInteger result = ref.level;
      
      
      
          // 返回值: Value
          methodResult(@(result));
      },
      
      @"AMapRoadTrafficSearchBaseRequest::get_requireExtension": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapRoadTrafficSearchBaseRequest::get_requireExtension");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapRoadTrafficSearchBaseRequest * ref = (AMapRoadTrafficSearchBaseRequest *) HEAP[@(refId)];
      
          // 开始调用
          BOOL result = ref.requireExtension;
      
      
      
          // 返回值: Value
          methodResult(@(result));
      },
      
      @"AMapRoadTrafficSearchRequest::get_roadName": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapRoadTrafficSearchRequest::get_roadName");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapRoadTrafficSearchRequest * ref = (AMapRoadTrafficSearchRequest *) HEAP[@(refId)];
      
          // 开始调用
          NSString* result = ref.roadName;
      
      
      
          // 返回值: jsonable
          methodResult(result);
      },
      
      @"AMapRoadTrafficSearchRequest::get_adcode": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapRoadTrafficSearchRequest::get_adcode");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapRoadTrafficSearchRequest * ref = (AMapRoadTrafficSearchRequest *) HEAP[@(refId)];
      
          // 开始调用
          NSString* result = ref.adcode;
      
      
      
          // 返回值: jsonable
          methodResult(result);
      },
      
      @"AMapRoadTrafficCircleSearchRequest::get_location": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapRoadTrafficCircleSearchRequest::get_location");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapRoadTrafficCircleSearchRequest * ref = (AMapRoadTrafficCircleSearchRequest *) HEAP[@(refId)];
      
          // 开始调用
          AMapGeoPoint* result = ref.location;
      
      
      
          // 返回值: 引用
          HEAP[@(result.hash)] = result;
          methodResult(@(result.hash));
      },
      
      @"AMapRoadTrafficCircleSearchRequest::get_radius": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapRoadTrafficCircleSearchRequest::get_radius");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapRoadTrafficCircleSearchRequest * ref = (AMapRoadTrafficCircleSearchRequest *) HEAP[@(refId)];
      
          // 开始调用
          NSInteger result = ref.radius;
      
      
      
          // 返回值: Value
          methodResult(@(result));
      },
      
      @"AMapRoadTrafficSearchResponse::get_trafficInfo": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapRoadTrafficSearchResponse::get_trafficInfo");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapRoadTrafficSearchResponse * ref = (AMapRoadTrafficSearchResponse *) HEAP[@(refId)];
      
          // 开始调用
          AMapTrafficInfo* result = ref.trafficInfo;
      
      
      
          // 返回值: 引用
          HEAP[@(result.hash)] = result;
          methodResult(@(result.hash));
      },
      
      @"AMapNearbySearchRequest::get_center": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapNearbySearchRequest::get_center");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapNearbySearchRequest * ref = (AMapNearbySearchRequest *) HEAP[@(refId)];
      
          // 开始调用
          AMapGeoPoint* result = ref.center;
      
      
      
          // 返回值: 引用
          HEAP[@(result.hash)] = result;
          methodResult(@(result.hash));
      },
      
      @"AMapNearbySearchRequest::get_radius": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapNearbySearchRequest::get_radius");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapNearbySearchRequest * ref = (AMapNearbySearchRequest *) HEAP[@(refId)];
      
          // 开始调用
          NSInteger result = ref.radius;
      
      
      
          // 返回值: Value
          methodResult(@(result));
      },
      
      @"AMapNearbySearchRequest::get_searchType": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapNearbySearchRequest::get_searchType");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapNearbySearchRequest * ref = (AMapNearbySearchRequest *) HEAP[@(refId)];
      
          // 开始调用
          AMapNearbySearchType result = ref.searchType;
      
      
      
          // 返回值: Value
          methodResult(@(result));
      },
      
      @"AMapNearbySearchRequest::get_timeRange": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapNearbySearchRequest::get_timeRange");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapNearbySearchRequest * ref = (AMapNearbySearchRequest *) HEAP[@(refId)];
      
          // 开始调用
          NSInteger result = ref.timeRange;
      
      
      
          // 返回值: Value
          methodResult(@(result));
      },
      
      @"AMapNearbySearchRequest::get_limit": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapNearbySearchRequest::get_limit");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapNearbySearchRequest * ref = (AMapNearbySearchRequest *) HEAP[@(refId)];
      
          // 开始调用
          NSInteger result = ref.limit;
      
      
      
          // 返回值: Value
          methodResult(@(result));
      },
      
      @"AMapNearbySearchResponse::get_count": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapNearbySearchResponse::get_count");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapNearbySearchResponse * ref = (AMapNearbySearchResponse *) HEAP[@(refId)];
      
          // 开始调用
          NSInteger result = ref.count;
      
      
      
          // 返回值: Value
          methodResult(@(result));
      },
      
      @"AMapNearbySearchResponse::get_infos": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapNearbySearchResponse::get_infos");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapNearbySearchResponse * ref = (AMapNearbySearchResponse *) HEAP[@(refId)];
      
          // 开始调用
          NSArray<AMapNearbyUserInfo*>* result = ref.infos;
      
      
      
          // 返回值: 列表
          NSMutableArray* refIdList = [NSMutableArray array];
          for (int i = 0; i < result.count; i++) {
              NSObject* object = [result objectAtIndex:i];
              [refIdList addObject: @(object.hash)];
              HEAP[@([object hash])] = object;
          }
      
          methodResult(refIdList);
      },
      
      @"AMapCloudSearchBaseRequest::get_tableID": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapCloudSearchBaseRequest::get_tableID");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapCloudSearchBaseRequest * ref = (AMapCloudSearchBaseRequest *) HEAP[@(refId)];
      
          // 开始调用
          NSString* result = ref.tableID;
      
      
      
          // 返回值: jsonable
          methodResult(result);
      },
      
      @"AMapCloudSearchBaseRequest::get_filter": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapCloudSearchBaseRequest::get_filter");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapCloudSearchBaseRequest * ref = (AMapCloudSearchBaseRequest *) HEAP[@(refId)];
      
          // 开始调用
          NSArray<NSString*>* result = ref.filter;
      
      
      
          // 返回值: jsonable
          methodResult(result);
      },
      
      @"AMapCloudSearchBaseRequest::get_sortFields": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapCloudSearchBaseRequest::get_sortFields");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapCloudSearchBaseRequest * ref = (AMapCloudSearchBaseRequest *) HEAP[@(refId)];
      
          // 开始调用
          NSString* result = ref.sortFields;
      
      
      
          // 返回值: jsonable
          methodResult(result);
      },
      
      @"AMapCloudSearchBaseRequest::get_sortType": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapCloudSearchBaseRequest::get_sortType");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapCloudSearchBaseRequest * ref = (AMapCloudSearchBaseRequest *) HEAP[@(refId)];
      
          // 开始调用
          AMapCloudSortType result = ref.sortType;
      
      
      
          // 返回值: Value
          methodResult(@(result));
      },
      
      @"AMapCloudSearchBaseRequest::get_offset": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapCloudSearchBaseRequest::get_offset");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapCloudSearchBaseRequest * ref = (AMapCloudSearchBaseRequest *) HEAP[@(refId)];
      
          // 开始调用
          NSInteger result = ref.offset;
      
      
      
          // 返回值: Value
          methodResult(@(result));
      },
      
      @"AMapCloudSearchBaseRequest::get_page": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapCloudSearchBaseRequest::get_page");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapCloudSearchBaseRequest * ref = (AMapCloudSearchBaseRequest *) HEAP[@(refId)];
      
          // 开始调用
          NSInteger result = ref.page;
      
      
      
          // 返回值: Value
          methodResult(@(result));
      },
      
      @"AMapCloudPOIAroundSearchRequest::get_center": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapCloudPOIAroundSearchRequest::get_center");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapCloudPOIAroundSearchRequest * ref = (AMapCloudPOIAroundSearchRequest *) HEAP[@(refId)];
      
          // 开始调用
          AMapGeoPoint* result = ref.center;
      
      
      
          // 返回值: 引用
          HEAP[@(result.hash)] = result;
          methodResult(@(result.hash));
      },
      
      @"AMapCloudPOIAroundSearchRequest::get_radius": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapCloudPOIAroundSearchRequest::get_radius");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapCloudPOIAroundSearchRequest * ref = (AMapCloudPOIAroundSearchRequest *) HEAP[@(refId)];
      
          // 开始调用
          NSInteger result = ref.radius;
      
      
      
          // 返回值: Value
          methodResult(@(result));
      },
      
      @"AMapCloudPOIAroundSearchRequest::get_keywords": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapCloudPOIAroundSearchRequest::get_keywords");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapCloudPOIAroundSearchRequest * ref = (AMapCloudPOIAroundSearchRequest *) HEAP[@(refId)];
      
          // 开始调用
          NSString* result = ref.keywords;
      
      
      
          // 返回值: jsonable
          methodResult(result);
      },
      
      @"AMapCloudPOIPolygonSearchRequest::get_polygon": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapCloudPOIPolygonSearchRequest::get_polygon");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapCloudPOIPolygonSearchRequest * ref = (AMapCloudPOIPolygonSearchRequest *) HEAP[@(refId)];
      
          // 开始调用
          AMapGeoPolygon* result = ref.polygon;
      
      
      
          // 返回值: 引用
          HEAP[@(result.hash)] = result;
          methodResult(@(result.hash));
      },
      
      @"AMapCloudPOIPolygonSearchRequest::get_keywords": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapCloudPOIPolygonSearchRequest::get_keywords");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapCloudPOIPolygonSearchRequest * ref = (AMapCloudPOIPolygonSearchRequest *) HEAP[@(refId)];
      
          // 开始调用
          NSString* result = ref.keywords;
      
      
      
          // 返回值: jsonable
          methodResult(result);
      },
      
      @"AMapCloudPOIIDSearchRequest::get_uid": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapCloudPOIIDSearchRequest::get_uid");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapCloudPOIIDSearchRequest * ref = (AMapCloudPOIIDSearchRequest *) HEAP[@(refId)];
      
          // 开始调用
          NSInteger result = ref.uid;
      
      
      
          // 返回值: Value
          methodResult(@(result));
      },
      
      @"AMapCloudPOILocalSearchRequest::get_keywords": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapCloudPOILocalSearchRequest::get_keywords");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapCloudPOILocalSearchRequest * ref = (AMapCloudPOILocalSearchRequest *) HEAP[@(refId)];
      
          // 开始调用
          NSString* result = ref.keywords;
      
      
      
          // 返回值: jsonable
          methodResult(result);
      },
      
      @"AMapCloudPOILocalSearchRequest::get_city": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapCloudPOILocalSearchRequest::get_city");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapCloudPOILocalSearchRequest * ref = (AMapCloudPOILocalSearchRequest *) HEAP[@(refId)];
      
          // 开始调用
          NSString* result = ref.city;
      
      
      
          // 返回值: jsonable
          methodResult(result);
      },
      
      @"AMapCloudPOISearchResponse::get_count": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapCloudPOISearchResponse::get_count");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapCloudPOISearchResponse * ref = (AMapCloudPOISearchResponse *) HEAP[@(refId)];
      
          // 开始调用
          NSInteger result = ref.count;
      
      
      
          // 返回值: Value
          methodResult(@(result));
      },
      
      @"AMapCloudPOISearchResponse::get_POIs": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapCloudPOISearchResponse::get_POIs");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapCloudPOISearchResponse * ref = (AMapCloudPOISearchResponse *) HEAP[@(refId)];
      
          // 开始调用
          NSArray<AMapCloudPOI*>* result = ref.POIs;
      
      
      
          // 返回值: 列表
          NSMutableArray* refIdList = [NSMutableArray array];
          for (int i = 0; i < result.count; i++) {
              NSObject* object = [result objectAtIndex:i];
              [refIdList addObject: @(object.hash)];
              HEAP[@([object hash])] = object;
          }
      
          methodResult(refIdList);
      },
      
      @"AMapLocationShareSearchRequest::get_location": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapLocationShareSearchRequest::get_location");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapLocationShareSearchRequest * ref = (AMapLocationShareSearchRequest *) HEAP[@(refId)];
      
          // 开始调用
          AMapGeoPoint* result = ref.location;
      
      
      
          // 返回值: 引用
          HEAP[@(result.hash)] = result;
          methodResult(@(result.hash));
      },
      
      @"AMapLocationShareSearchRequest::get_name": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapLocationShareSearchRequest::get_name");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapLocationShareSearchRequest * ref = (AMapLocationShareSearchRequest *) HEAP[@(refId)];
      
          // 开始调用
          NSString* result = ref.name;
      
      
      
          // 返回值: jsonable
          methodResult(result);
      },
      
      @"AMapPOIShareSearchRequest::get_uid": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapPOIShareSearchRequest::get_uid");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapPOIShareSearchRequest * ref = (AMapPOIShareSearchRequest *) HEAP[@(refId)];
      
          // 开始调用
          NSString* result = ref.uid;
      
      
      
          // 返回值: jsonable
          methodResult(result);
      },
      
      @"AMapPOIShareSearchRequest::get_location": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapPOIShareSearchRequest::get_location");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapPOIShareSearchRequest * ref = (AMapPOIShareSearchRequest *) HEAP[@(refId)];
      
          // 开始调用
          AMapGeoPoint* result = ref.location;
      
      
      
          // 返回值: 引用
          HEAP[@(result.hash)] = result;
          methodResult(@(result.hash));
      },
      
      @"AMapPOIShareSearchRequest::get_name": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapPOIShareSearchRequest::get_name");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapPOIShareSearchRequest * ref = (AMapPOIShareSearchRequest *) HEAP[@(refId)];
      
          // 开始调用
          NSString* result = ref.name;
      
      
      
          // 返回值: jsonable
          methodResult(result);
      },
      
      @"AMapPOIShareSearchRequest::get_address": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapPOIShareSearchRequest::get_address");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapPOIShareSearchRequest * ref = (AMapPOIShareSearchRequest *) HEAP[@(refId)];
      
          // 开始调用
          NSString* result = ref.address;
      
      
      
          // 返回值: jsonable
          methodResult(result);
      },
      
      @"AMapRouteShareSearchRequest::get_strategy": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapRouteShareSearchRequest::get_strategy");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapRouteShareSearchRequest * ref = (AMapRouteShareSearchRequest *) HEAP[@(refId)];
      
          // 开始调用
          NSInteger result = ref.strategy;
      
      
      
          // 返回值: Value
          methodResult(@(result));
      },
      
      @"AMapRouteShareSearchRequest::get_type": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapRouteShareSearchRequest::get_type");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapRouteShareSearchRequest * ref = (AMapRouteShareSearchRequest *) HEAP[@(refId)];
      
          // 开始调用
          NSInteger result = ref.type;
      
      
      
          // 返回值: Value
          methodResult(@(result));
      },
      
      @"AMapRouteShareSearchRequest::get_startCoordinate": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapRouteShareSearchRequest::get_startCoordinate");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapRouteShareSearchRequest * ref = (AMapRouteShareSearchRequest *) HEAP[@(refId)];
      
          // 开始调用
          AMapGeoPoint* result = ref.startCoordinate;
      
      
      
          // 返回值: 引用
          HEAP[@(result.hash)] = result;
          methodResult(@(result.hash));
      },
      
      @"AMapRouteShareSearchRequest::get_destinationCoordinate": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapRouteShareSearchRequest::get_destinationCoordinate");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapRouteShareSearchRequest * ref = (AMapRouteShareSearchRequest *) HEAP[@(refId)];
      
          // 开始调用
          AMapGeoPoint* result = ref.destinationCoordinate;
      
      
      
          // 返回值: 引用
          HEAP[@(result.hash)] = result;
          methodResult(@(result.hash));
      },
      
      @"AMapRouteShareSearchRequest::get_startName": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapRouteShareSearchRequest::get_startName");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapRouteShareSearchRequest * ref = (AMapRouteShareSearchRequest *) HEAP[@(refId)];
      
          // 开始调用
          NSString* result = ref.startName;
      
      
      
          // 返回值: jsonable
          methodResult(result);
      },
      
      @"AMapRouteShareSearchRequest::get_destinationName": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapRouteShareSearchRequest::get_destinationName");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapRouteShareSearchRequest * ref = (AMapRouteShareSearchRequest *) HEAP[@(refId)];
      
          // 开始调用
          NSString* result = ref.destinationName;
      
      
      
          // 返回值: jsonable
          methodResult(result);
      },
      
      @"AMapNavigationShareSearchRequest::get_strategy": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapNavigationShareSearchRequest::get_strategy");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapNavigationShareSearchRequest * ref = (AMapNavigationShareSearchRequest *) HEAP[@(refId)];
      
          // 开始调用
          NSInteger result = ref.strategy;
      
      
      
          // 返回值: Value
          methodResult(@(result));
      },
      
      @"AMapNavigationShareSearchRequest::get_startCoordinate": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapNavigationShareSearchRequest::get_startCoordinate");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapNavigationShareSearchRequest * ref = (AMapNavigationShareSearchRequest *) HEAP[@(refId)];
      
          // 开始调用
          AMapGeoPoint* result = ref.startCoordinate;
      
      
      
          // 返回值: 引用
          HEAP[@(result.hash)] = result;
          methodResult(@(result.hash));
      },
      
      @"AMapNavigationShareSearchRequest::get_destinationCoordinate": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapNavigationShareSearchRequest::get_destinationCoordinate");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapNavigationShareSearchRequest * ref = (AMapNavigationShareSearchRequest *) HEAP[@(refId)];
      
          // 开始调用
          AMapGeoPoint* result = ref.destinationCoordinate;
      
      
      
          // 返回值: 引用
          HEAP[@(result.hash)] = result;
          methodResult(@(result.hash));
      },
      
      @"AMapShareSearchResponse::get_shareURL": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapShareSearchResponse::get_shareURL");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapShareSearchResponse * ref = (AMapShareSearchResponse *) HEAP[@(refId)];
      
          // 开始调用
          NSString* result = ref.shareURL;
      
      
      
          // 返回值: jsonable
          methodResult(result);
      },
      
      @"AMapFutureRouteSearchRequest::get_beginTime": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapFutureRouteSearchRequest::get_beginTime");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapFutureRouteSearchRequest * ref = (AMapFutureRouteSearchRequest *) HEAP[@(refId)];
      
          // 开始调用
          NSString* result = ref.beginTime;
      
      
      
          // 返回值: jsonable
          methodResult(result);
      },
      
      @"AMapFutureRouteSearchRequest::get_interval": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapFutureRouteSearchRequest::get_interval");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapFutureRouteSearchRequest * ref = (AMapFutureRouteSearchRequest *) HEAP[@(refId)];
      
          // 开始调用
          NSInteger result = ref.interval;
      
      
      
          // 返回值: Value
          methodResult(@(result));
      },
      
      @"AMapFutureRouteSearchRequest::get_timeCount": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapFutureRouteSearchRequest::get_timeCount");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapFutureRouteSearchRequest * ref = (AMapFutureRouteSearchRequest *) HEAP[@(refId)];
      
          // 开始调用
          NSInteger result = ref.timeCount;
      
      
      
          // 返回值: Value
          methodResult(@(result));
      },
      
      @"AMapFutureRouteSearchRequest::get_strategy": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapFutureRouteSearchRequest::get_strategy");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapFutureRouteSearchRequest * ref = (AMapFutureRouteSearchRequest *) HEAP[@(refId)];
      
          // 开始调用
          NSInteger result = ref.strategy;
      
      
      
          // 返回值: Value
          methodResult(@(result));
      },
      
      @"AMapFutureRouteSearchRequest::get_originId": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapFutureRouteSearchRequest::get_originId");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapFutureRouteSearchRequest * ref = (AMapFutureRouteSearchRequest *) HEAP[@(refId)];
      
          // 开始调用
          NSString* result = ref.originId;
      
      
      
          // 返回值: jsonable
          methodResult(result);
      },
      
      @"AMapFutureRouteSearchRequest::get_destinationId": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapFutureRouteSearchRequest::get_destinationId");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapFutureRouteSearchRequest * ref = (AMapFutureRouteSearchRequest *) HEAP[@(refId)];
      
          // 开始调用
          NSString* result = ref.destinationId;
      
      
      
          // 返回值: jsonable
          methodResult(result);
      },
      
      @"AMapFutureRouteSearchRequest::get_origintype": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapFutureRouteSearchRequest::get_origintype");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapFutureRouteSearchRequest * ref = (AMapFutureRouteSearchRequest *) HEAP[@(refId)];
      
          // 开始调用
          NSString* result = ref.origintype;
      
      
      
          // 返回值: jsonable
          methodResult(result);
      },
      
      @"AMapFutureRouteSearchRequest::get_destinationtype": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapFutureRouteSearchRequest::get_destinationtype");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapFutureRouteSearchRequest * ref = (AMapFutureRouteSearchRequest *) HEAP[@(refId)];
      
          // 开始调用
          NSString* result = ref.destinationtype;
      
      
      
          // 返回值: jsonable
          methodResult(result);
      },
      
      @"AMapFutureRouteSearchRequest::get_parentId": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapFutureRouteSearchRequest::get_parentId");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapFutureRouteSearchRequest * ref = (AMapFutureRouteSearchRequest *) HEAP[@(refId)];
      
          // 开始调用
          NSString* result = ref.parentId;
      
      
      
          // 返回值: jsonable
          methodResult(result);
      },
      
      @"AMapFutureRouteSearchRequest::get_plateProvince": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapFutureRouteSearchRequest::get_plateProvince");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapFutureRouteSearchRequest * ref = (AMapFutureRouteSearchRequest *) HEAP[@(refId)];
      
          // 开始调用
          NSString* result = ref.plateProvince;
      
      
      
          // 返回值: jsonable
          methodResult(result);
      },
      
      @"AMapFutureRouteSearchRequest::get_plateNumber": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapFutureRouteSearchRequest::get_plateNumber");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapFutureRouteSearchRequest * ref = (AMapFutureRouteSearchRequest *) HEAP[@(refId)];
      
          // 开始调用
          NSString* result = ref.plateNumber;
      
      
      
          // 返回值: jsonable
          methodResult(result);
      },
      
      @"AMapFutureRouteSearchRequest::get_cartype": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapFutureRouteSearchRequest::get_cartype");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapFutureRouteSearchRequest * ref = (AMapFutureRouteSearchRequest *) HEAP[@(refId)];
      
          // 开始调用
          NSInteger result = ref.cartype;
      
      
      
          // 返回值: Value
          methodResult(@(result));
      },
      
      @"AMapFutureRouteSearchResponse::get_paths": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapFutureRouteSearchResponse::get_paths");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapFutureRouteSearchResponse * ref = (AMapFutureRouteSearchResponse *) HEAP[@(refId)];
      
          // 开始调用
          NSArray<AMapPath*>* result = ref.paths;
      
      
      
          // 返回值: 列表
          NSMutableArray* refIdList = [NSMutableArray array];
          for (int i = 0; i < result.count; i++) {
              NSObject* object = [result objectAtIndex:i];
              [refIdList addObject: @(object.hash)];
              HEAP[@([object hash])] = object;
          }
      
          methodResult(refIdList);
      },
      
      @"AMapFutureRouteSearchResponse::get_timeInfos": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapFutureRouteSearchResponse::get_timeInfos");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapFutureRouteSearchResponse * ref = (AMapFutureRouteSearchResponse *) HEAP[@(refId)];
      
          // 开始调用
          NSArray<AMapFutureTimeInfo*>* result = ref.timeInfos;
      
      
      
          // 返回值: 列表
          NSMutableArray* refIdList = [NSMutableArray array];
          for (int i = 0; i < result.count; i++) {
              NSObject* object = [result objectAtIndex:i];
              [refIdList addObject: @(object.hash)];
              HEAP[@([object hash])] = object;
          }
      
          methodResult(refIdList);
      },
      
      @"AMapGeoPoint::get_latitude": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapGeoPoint::get_latitude");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapGeoPoint * ref = (AMapGeoPoint *) HEAP[@(refId)];
      
          // 开始调用
          CGFloat result = ref.latitude;
      
      
      
          // 返回值: Value
          methodResult(@(result));
      },
      
      @"AMapGeoPoint::get_longitude": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapGeoPoint::get_longitude");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapGeoPoint * ref = (AMapGeoPoint *) HEAP[@(refId)];
      
          // 开始调用
          CGFloat result = ref.longitude;
      
      
      
          // 返回值: Value
          methodResult(@(result));
      },
      
      @"AMapGeoPolygon::get_points": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapGeoPolygon::get_points");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapGeoPolygon * ref = (AMapGeoPolygon *) HEAP[@(refId)];
      
          // 开始调用
          NSArray<AMapGeoPoint*>* result = ref.points;
      
      
      
          // 返回值: 列表
          NSMutableArray* refIdList = [NSMutableArray array];
          for (int i = 0; i < result.count; i++) {
              NSObject* object = [result objectAtIndex:i];
              [refIdList addObject: @(object.hash)];
              HEAP[@([object hash])] = object;
          }
      
          methodResult(refIdList);
      },
      
      @"AMapCity::get_city": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapCity::get_city");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapCity * ref = (AMapCity *) HEAP[@(refId)];
      
          // 开始调用
          NSString* result = ref.city;
      
      
      
          // 返回值: jsonable
          methodResult(result);
      },
      
      @"AMapCity::get_citycode": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapCity::get_citycode");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapCity * ref = (AMapCity *) HEAP[@(refId)];
      
          // 开始调用
          NSString* result = ref.citycode;
      
      
      
          // 返回值: jsonable
          methodResult(result);
      },
      
      @"AMapCity::get_adcode": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapCity::get_adcode");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapCity * ref = (AMapCity *) HEAP[@(refId)];
      
          // 开始调用
          NSString* result = ref.adcode;
      
      
      
          // 返回值: jsonable
          methodResult(result);
      },
      
      @"AMapCity::get_num": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapCity::get_num");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapCity * ref = (AMapCity *) HEAP[@(refId)];
      
          // 开始调用
          NSInteger result = ref.num;
      
      
      
          // 返回值: Value
          methodResult(@(result));
      },
      
      @"AMapCity::get_districts": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapCity::get_districts");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapCity * ref = (AMapCity *) HEAP[@(refId)];
      
          // 开始调用
          NSArray<AMapDistrict*>* result = ref.districts;
      
      
      
          // 返回值: 列表
          NSMutableArray* refIdList = [NSMutableArray array];
          for (int i = 0; i < result.count; i++) {
              NSObject* object = [result objectAtIndex:i];
              [refIdList addObject: @(object.hash)];
              HEAP[@([object hash])] = object;
          }
      
          methodResult(refIdList);
      },
      
      @"AMapSuggestion::get_keywords": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapSuggestion::get_keywords");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapSuggestion * ref = (AMapSuggestion *) HEAP[@(refId)];
      
          // 开始调用
          NSArray<NSString*>* result = ref.keywords;
      
      
      
          // 返回值: jsonable
          methodResult(result);
      },
      
      @"AMapSuggestion::get_cities": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapSuggestion::get_cities");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapSuggestion * ref = (AMapSuggestion *) HEAP[@(refId)];
      
          // 开始调用
          NSArray<AMapCity*>* result = ref.cities;
      
      
      
          // 返回值: 列表
          NSMutableArray* refIdList = [NSMutableArray array];
          for (int i = 0; i < result.count; i++) {
              NSObject* object = [result objectAtIndex:i];
              [refIdList addObject: @(object.hash)];
              HEAP[@([object hash])] = object;
          }
      
          methodResult(refIdList);
      },
      
      @"AMapTip::get_uid": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapTip::get_uid");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapTip * ref = (AMapTip *) HEAP[@(refId)];
      
          // 开始调用
          NSString* result = ref.uid;
      
      
      
          // 返回值: jsonable
          methodResult(result);
      },
      
      @"AMapTip::get_name": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapTip::get_name");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapTip * ref = (AMapTip *) HEAP[@(refId)];
      
          // 开始调用
          NSString* result = ref.name;
      
      
      
          // 返回值: jsonable
          methodResult(result);
      },
      
      @"AMapTip::get_adcode": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapTip::get_adcode");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapTip * ref = (AMapTip *) HEAP[@(refId)];
      
          // 开始调用
          NSString* result = ref.adcode;
      
      
      
          // 返回值: jsonable
          methodResult(result);
      },
      
      @"AMapTip::get_district": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapTip::get_district");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapTip * ref = (AMapTip *) HEAP[@(refId)];
      
          // 开始调用
          NSString* result = ref.district;
      
      
      
          // 返回值: jsonable
          methodResult(result);
      },
      
      @"AMapTip::get_address": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapTip::get_address");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapTip * ref = (AMapTip *) HEAP[@(refId)];
      
          // 开始调用
          NSString* result = ref.address;
      
      
      
          // 返回值: jsonable
          methodResult(result);
      },
      
      @"AMapTip::get_location": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapTip::get_location");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapTip * ref = (AMapTip *) HEAP[@(refId)];
      
          // 开始调用
          AMapGeoPoint* result = ref.location;
      
      
      
          // 返回值: 引用
          HEAP[@(result.hash)] = result;
          methodResult(@(result.hash));
      },
      
      @"AMapTip::get_typecode": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapTip::get_typecode");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapTip * ref = (AMapTip *) HEAP[@(refId)];
      
          // 开始调用
          NSString* result = ref.typecode;
      
      
      
          // 返回值: jsonable
          methodResult(result);
      },
      
      @"AMapImage::get_title": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapImage::get_title");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapImage * ref = (AMapImage *) HEAP[@(refId)];
      
          // 开始调用
          NSString* result = ref.title;
      
      
      
          // 返回值: jsonable
          methodResult(result);
      },
      
      @"AMapImage::get_url": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapImage::get_url");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapImage * ref = (AMapImage *) HEAP[@(refId)];
      
          // 开始调用
          NSString* result = ref.url;
      
      
      
          // 返回值: jsonable
          methodResult(result);
      },
      
      @"AMapPOIExtension::get_rating": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapPOIExtension::get_rating");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapPOIExtension * ref = (AMapPOIExtension *) HEAP[@(refId)];
      
          // 开始调用
          CGFloat result = ref.rating;
      
      
      
          // 返回值: Value
          methodResult(@(result));
      },
      
      @"AMapPOIExtension::get_cost": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapPOIExtension::get_cost");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapPOIExtension * ref = (AMapPOIExtension *) HEAP[@(refId)];
      
          // 开始调用
          CGFloat result = ref.cost;
      
      
      
          // 返回值: Value
          methodResult(@(result));
      },
      
      @"AMapPOIExtension::get_openTime": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapPOIExtension::get_openTime");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapPOIExtension * ref = (AMapPOIExtension *) HEAP[@(refId)];
      
          // 开始调用
          NSString* result = ref.openTime;
      
      
      
          // 返回值: jsonable
          methodResult(result);
      },
      
      @"AMapIndoorData::get_floor": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapIndoorData::get_floor");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapIndoorData * ref = (AMapIndoorData *) HEAP[@(refId)];
      
          // 开始调用
          NSInteger result = ref.floor;
      
      
      
          // 返回值: Value
          methodResult(@(result));
      },
      
      @"AMapIndoorData::get_floorName": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapIndoorData::get_floorName");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapIndoorData * ref = (AMapIndoorData *) HEAP[@(refId)];
      
          // 开始调用
          NSString* result = ref.floorName;
      
      
      
          // 返回值: jsonable
          methodResult(result);
      },
      
      @"AMapIndoorData::get_pid": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapIndoorData::get_pid");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapIndoorData * ref = (AMapIndoorData *) HEAP[@(refId)];
      
          // 开始调用
          NSString* result = ref.pid;
      
      
      
          // 返回值: jsonable
          methodResult(result);
      },
      
      @"AMapSubPOI::get_uid": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapSubPOI::get_uid");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapSubPOI * ref = (AMapSubPOI *) HEAP[@(refId)];
      
          // 开始调用
          NSString* result = ref.uid;
      
      
      
          // 返回值: jsonable
          methodResult(result);
      },
      
      @"AMapSubPOI::get_name": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapSubPOI::get_name");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapSubPOI * ref = (AMapSubPOI *) HEAP[@(refId)];
      
          // 开始调用
          NSString* result = ref.name;
      
      
      
          // 返回值: jsonable
          methodResult(result);
      },
      
      @"AMapSubPOI::get_sname": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapSubPOI::get_sname");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapSubPOI * ref = (AMapSubPOI *) HEAP[@(refId)];
      
          // 开始调用
          NSString* result = ref.sname;
      
      
      
          // 返回值: jsonable
          methodResult(result);
      },
      
      @"AMapSubPOI::get_location": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapSubPOI::get_location");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapSubPOI * ref = (AMapSubPOI *) HEAP[@(refId)];
      
          // 开始调用
          AMapGeoPoint* result = ref.location;
      
      
      
          // 返回值: 引用
          HEAP[@(result.hash)] = result;
          methodResult(@(result.hash));
      },
      
      @"AMapSubPOI::get_address": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapSubPOI::get_address");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapSubPOI * ref = (AMapSubPOI *) HEAP[@(refId)];
      
          // 开始调用
          NSString* result = ref.address;
      
      
      
          // 返回值: jsonable
          methodResult(result);
      },
      
      @"AMapSubPOI::get_distance": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapSubPOI::get_distance");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapSubPOI * ref = (AMapSubPOI *) HEAP[@(refId)];
      
          // 开始调用
          NSInteger result = ref.distance;
      
      
      
          // 返回值: Value
          methodResult(@(result));
      },
      
      @"AMapSubPOI::get_subtype": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapSubPOI::get_subtype");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapSubPOI * ref = (AMapSubPOI *) HEAP[@(refId)];
      
          // 开始调用
          NSString* result = ref.subtype;
      
      
      
          // 返回值: jsonable
          methodResult(result);
      },
      
      @"AMapRoutePOI::get_uid": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapRoutePOI::get_uid");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapRoutePOI * ref = (AMapRoutePOI *) HEAP[@(refId)];
      
          // 开始调用
          NSString* result = ref.uid;
      
      
      
          // 返回值: jsonable
          methodResult(result);
      },
      
      @"AMapRoutePOI::get_name": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapRoutePOI::get_name");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapRoutePOI * ref = (AMapRoutePOI *) HEAP[@(refId)];
      
          // 开始调用
          NSString* result = ref.name;
      
      
      
          // 返回值: jsonable
          methodResult(result);
      },
      
      @"AMapRoutePOI::get_location": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapRoutePOI::get_location");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapRoutePOI * ref = (AMapRoutePOI *) HEAP[@(refId)];
      
          // 开始调用
          AMapGeoPoint* result = ref.location;
      
      
      
          // 返回值: 引用
          HEAP[@(result.hash)] = result;
          methodResult(@(result.hash));
      },
      
      @"AMapRoutePOI::get_distance": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapRoutePOI::get_distance");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapRoutePOI * ref = (AMapRoutePOI *) HEAP[@(refId)];
      
          // 开始调用
          NSInteger result = ref.distance;
      
      
      
          // 返回值: Value
          methodResult(@(result));
      },
      
      @"AMapRoutePOI::get_duration": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapRoutePOI::get_duration");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapRoutePOI * ref = (AMapRoutePOI *) HEAP[@(refId)];
      
          // 开始调用
          NSInteger result = ref.duration;
      
      
      
          // 返回值: Value
          methodResult(@(result));
      },
      
      @"AMapPOI::get_uid": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapPOI::get_uid");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapPOI * ref = (AMapPOI *) HEAP[@(refId)];
      
          // 开始调用
          NSString* result = ref.uid;
      
      
      
          // 返回值: jsonable
          methodResult(result);
      },
      
      @"AMapPOI::get_name": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapPOI::get_name");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapPOI * ref = (AMapPOI *) HEAP[@(refId)];
      
          // 开始调用
          NSString* result = ref.name;
      
      
      
          // 返回值: jsonable
          methodResult(result);
      },
      
      @"AMapPOI::get_type": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapPOI::get_type");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapPOI * ref = (AMapPOI *) HEAP[@(refId)];
      
          // 开始调用
          NSString* result = ref.type;
      
      
      
          // 返回值: jsonable
          methodResult(result);
      },
      
      @"AMapPOI::get_typecode": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapPOI::get_typecode");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapPOI * ref = (AMapPOI *) HEAP[@(refId)];
      
          // 开始调用
          NSString* result = ref.typecode;
      
      
      
          // 返回值: jsonable
          methodResult(result);
      },
      
      @"AMapPOI::get_location": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapPOI::get_location");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapPOI * ref = (AMapPOI *) HEAP[@(refId)];
      
          // 开始调用
          AMapGeoPoint* result = ref.location;
      
      
      
          // 返回值: 引用
          HEAP[@(result.hash)] = result;
          methodResult(@(result.hash));
      },
      
      @"AMapPOI::get_address": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapPOI::get_address");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapPOI * ref = (AMapPOI *) HEAP[@(refId)];
      
          // 开始调用
          NSString* result = ref.address;
      
      
      
          // 返回值: jsonable
          methodResult(result);
      },
      
      @"AMapPOI::get_tel": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapPOI::get_tel");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapPOI * ref = (AMapPOI *) HEAP[@(refId)];
      
          // 开始调用
          NSString* result = ref.tel;
      
      
      
          // 返回值: jsonable
          methodResult(result);
      },
      
      @"AMapPOI::get_distance": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapPOI::get_distance");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapPOI * ref = (AMapPOI *) HEAP[@(refId)];
      
          // 开始调用
          NSInteger result = ref.distance;
      
      
      
          // 返回值: Value
          methodResult(@(result));
      },
      
      @"AMapPOI::get_parkingType": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapPOI::get_parkingType");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapPOI * ref = (AMapPOI *) HEAP[@(refId)];
      
          // 开始调用
          NSString* result = ref.parkingType;
      
      
      
          // 返回值: jsonable
          methodResult(result);
      },
      
      @"AMapPOI::get_shopID": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapPOI::get_shopID");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapPOI * ref = (AMapPOI *) HEAP[@(refId)];
      
          // 开始调用
          NSString* result = ref.shopID;
      
      
      
          // 返回值: jsonable
          methodResult(result);
      },
      
      @"AMapPOI::get_postcode": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapPOI::get_postcode");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapPOI * ref = (AMapPOI *) HEAP[@(refId)];
      
          // 开始调用
          NSString* result = ref.postcode;
      
      
      
          // 返回值: jsonable
          methodResult(result);
      },
      
      @"AMapPOI::get_website": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapPOI::get_website");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapPOI * ref = (AMapPOI *) HEAP[@(refId)];
      
          // 开始调用
          NSString* result = ref.website;
      
      
      
          // 返回值: jsonable
          methodResult(result);
      },
      
      @"AMapPOI::get_email": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapPOI::get_email");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapPOI * ref = (AMapPOI *) HEAP[@(refId)];
      
          // 开始调用
          NSString* result = ref.email;
      
      
      
          // 返回值: jsonable
          methodResult(result);
      },
      
      @"AMapPOI::get_province": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapPOI::get_province");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapPOI * ref = (AMapPOI *) HEAP[@(refId)];
      
          // 开始调用
          NSString* result = ref.province;
      
      
      
          // 返回值: jsonable
          methodResult(result);
      },
      
      @"AMapPOI::get_pcode": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapPOI::get_pcode");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapPOI * ref = (AMapPOI *) HEAP[@(refId)];
      
          // 开始调用
          NSString* result = ref.pcode;
      
      
      
          // 返回值: jsonable
          methodResult(result);
      },
      
      @"AMapPOI::get_city": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapPOI::get_city");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapPOI * ref = (AMapPOI *) HEAP[@(refId)];
      
          // 开始调用
          NSString* result = ref.city;
      
      
      
          // 返回值: jsonable
          methodResult(result);
      },
      
      @"AMapPOI::get_citycode": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapPOI::get_citycode");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapPOI * ref = (AMapPOI *) HEAP[@(refId)];
      
          // 开始调用
          NSString* result = ref.citycode;
      
      
      
          // 返回值: jsonable
          methodResult(result);
      },
      
      @"AMapPOI::get_district": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapPOI::get_district");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapPOI * ref = (AMapPOI *) HEAP[@(refId)];
      
          // 开始调用
          NSString* result = ref.district;
      
      
      
          // 返回值: jsonable
          methodResult(result);
      },
      
      @"AMapPOI::get_adcode": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapPOI::get_adcode");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapPOI * ref = (AMapPOI *) HEAP[@(refId)];
      
          // 开始调用
          NSString* result = ref.adcode;
      
      
      
          // 返回值: jsonable
          methodResult(result);
      },
      
      @"AMapPOI::get_gridcode": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapPOI::get_gridcode");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapPOI * ref = (AMapPOI *) HEAP[@(refId)];
      
          // 开始调用
          NSString* result = ref.gridcode;
      
      
      
          // 返回值: jsonable
          methodResult(result);
      },
      
      @"AMapPOI::get_enterLocation": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapPOI::get_enterLocation");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapPOI * ref = (AMapPOI *) HEAP[@(refId)];
      
          // 开始调用
          AMapGeoPoint* result = ref.enterLocation;
      
      
      
          // 返回值: 引用
          HEAP[@(result.hash)] = result;
          methodResult(@(result.hash));
      },
      
      @"AMapPOI::get_exitLocation": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapPOI::get_exitLocation");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapPOI * ref = (AMapPOI *) HEAP[@(refId)];
      
          // 开始调用
          AMapGeoPoint* result = ref.exitLocation;
      
      
      
          // 返回值: 引用
          HEAP[@(result.hash)] = result;
          methodResult(@(result.hash));
      },
      
      @"AMapPOI::get_direction": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapPOI::get_direction");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapPOI * ref = (AMapPOI *) HEAP[@(refId)];
      
          // 开始调用
          NSString* result = ref.direction;
      
      
      
          // 返回值: jsonable
          methodResult(result);
      },
      
      @"AMapPOI::get_hasIndoorMap": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapPOI::get_hasIndoorMap");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapPOI * ref = (AMapPOI *) HEAP[@(refId)];
      
          // 开始调用
          BOOL result = ref.hasIndoorMap;
      
      
      
          // 返回值: Value
          methodResult(@(result));
      },
      
      @"AMapPOI::get_businessArea": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapPOI::get_businessArea");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapPOI * ref = (AMapPOI *) HEAP[@(refId)];
      
          // 开始调用
          NSString* result = ref.businessArea;
      
      
      
          // 返回值: jsonable
          methodResult(result);
      },
      
      @"AMapPOI::get_indoorData": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapPOI::get_indoorData");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapPOI * ref = (AMapPOI *) HEAP[@(refId)];
      
          // 开始调用
          AMapIndoorData* result = ref.indoorData;
      
      
      
          // 返回值: 引用
          HEAP[@(result.hash)] = result;
          methodResult(@(result.hash));
      },
      
      @"AMapPOI::get_subPOIs": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapPOI::get_subPOIs");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapPOI * ref = (AMapPOI *) HEAP[@(refId)];
      
          // 开始调用
          NSArray<AMapSubPOI*>* result = ref.subPOIs;
      
      
      
          // 返回值: 列表
          NSMutableArray* refIdList = [NSMutableArray array];
          for (int i = 0; i < result.count; i++) {
              NSObject* object = [result objectAtIndex:i];
              [refIdList addObject: @(object.hash)];
              HEAP[@([object hash])] = object;
          }
      
          methodResult(refIdList);
      },
      
      @"AMapPOI::get_images": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapPOI::get_images");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapPOI * ref = (AMapPOI *) HEAP[@(refId)];
      
          // 开始调用
          NSArray<AMapImage*>* result = ref.images;
      
      
      
          // 返回值: 列表
          NSMutableArray* refIdList = [NSMutableArray array];
          for (int i = 0; i < result.count; i++) {
              NSObject* object = [result objectAtIndex:i];
              [refIdList addObject: @(object.hash)];
              HEAP[@([object hash])] = object;
          }
      
          methodResult(refIdList);
      },
      
      @"AMapPOI::get_extensionInfo": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapPOI::get_extensionInfo");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapPOI * ref = (AMapPOI *) HEAP[@(refId)];
      
          // 开始调用
          AMapPOIExtension* result = ref.extensionInfo;
      
      
      
          // 返回值: 引用
          HEAP[@(result.hash)] = result;
          methodResult(@(result.hash));
      },
      
      @"AMapAOI::get_uid": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapAOI::get_uid");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapAOI * ref = (AMapAOI *) HEAP[@(refId)];
      
          // 开始调用
          NSString* result = ref.uid;
      
      
      
          // 返回值: jsonable
          methodResult(result);
      },
      
      @"AMapAOI::get_name": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapAOI::get_name");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapAOI * ref = (AMapAOI *) HEAP[@(refId)];
      
          // 开始调用
          NSString* result = ref.name;
      
      
      
          // 返回值: jsonable
          methodResult(result);
      },
      
      @"AMapAOI::get_adcode": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapAOI::get_adcode");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapAOI * ref = (AMapAOI *) HEAP[@(refId)];
      
          // 开始调用
          NSString* result = ref.adcode;
      
      
      
          // 返回值: jsonable
          methodResult(result);
      },
      
      @"AMapAOI::get_location": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapAOI::get_location");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapAOI * ref = (AMapAOI *) HEAP[@(refId)];
      
          // 开始调用
          AMapGeoPoint* result = ref.location;
      
      
      
          // 返回值: 引用
          HEAP[@(result.hash)] = result;
          methodResult(@(result.hash));
      },
      
      @"AMapAOI::get_area": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapAOI::get_area");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapAOI * ref = (AMapAOI *) HEAP[@(refId)];
      
          // 开始调用
          CGFloat result = ref.area;
      
      
      
          // 返回值: Value
          methodResult(@(result));
      },
      
      @"AMapRoad::get_uid": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapRoad::get_uid");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapRoad * ref = (AMapRoad *) HEAP[@(refId)];
      
          // 开始调用
          NSString* result = ref.uid;
      
      
      
          // 返回值: jsonable
          methodResult(result);
      },
      
      @"AMapRoad::get_name": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapRoad::get_name");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapRoad * ref = (AMapRoad *) HEAP[@(refId)];
      
          // 开始调用
          NSString* result = ref.name;
      
      
      
          // 返回值: jsonable
          methodResult(result);
      },
      
      @"AMapRoad::get_distance": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapRoad::get_distance");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapRoad * ref = (AMapRoad *) HEAP[@(refId)];
      
          // 开始调用
          NSInteger result = ref.distance;
      
      
      
          // 返回值: Value
          methodResult(@(result));
      },
      
      @"AMapRoad::get_direction": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapRoad::get_direction");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapRoad * ref = (AMapRoad *) HEAP[@(refId)];
      
          // 开始调用
          NSString* result = ref.direction;
      
      
      
          // 返回值: jsonable
          methodResult(result);
      },
      
      @"AMapRoad::get_location": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapRoad::get_location");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapRoad * ref = (AMapRoad *) HEAP[@(refId)];
      
          // 开始调用
          AMapGeoPoint* result = ref.location;
      
      
      
          // 返回值: 引用
          HEAP[@(result.hash)] = result;
          methodResult(@(result.hash));
      },
      
      @"AMapRoadInter::get_distance": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapRoadInter::get_distance");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapRoadInter * ref = (AMapRoadInter *) HEAP[@(refId)];
      
          // 开始调用
          NSInteger result = ref.distance;
      
      
      
          // 返回值: Value
          methodResult(@(result));
      },
      
      @"AMapRoadInter::get_direction": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapRoadInter::get_direction");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapRoadInter * ref = (AMapRoadInter *) HEAP[@(refId)];
      
          // 开始调用
          NSString* result = ref.direction;
      
      
      
          // 返回值: jsonable
          methodResult(result);
      },
      
      @"AMapRoadInter::get_location": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapRoadInter::get_location");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapRoadInter * ref = (AMapRoadInter *) HEAP[@(refId)];
      
          // 开始调用
          AMapGeoPoint* result = ref.location;
      
      
      
          // 返回值: 引用
          HEAP[@(result.hash)] = result;
          methodResult(@(result.hash));
      },
      
      @"AMapRoadInter::get_firstId": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapRoadInter::get_firstId");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapRoadInter * ref = (AMapRoadInter *) HEAP[@(refId)];
      
          // 开始调用
          NSString* result = ref.firstId;
      
      
      
          // 返回值: jsonable
          methodResult(result);
      },
      
      @"AMapRoadInter::get_firstName": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapRoadInter::get_firstName");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapRoadInter * ref = (AMapRoadInter *) HEAP[@(refId)];
      
          // 开始调用
          NSString* result = ref.firstName;
      
      
      
          // 返回值: jsonable
          methodResult(result);
      },
      
      @"AMapRoadInter::get_secondId": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapRoadInter::get_secondId");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapRoadInter * ref = (AMapRoadInter *) HEAP[@(refId)];
      
          // 开始调用
          NSString* result = ref.secondId;
      
      
      
          // 返回值: jsonable
          methodResult(result);
      },
      
      @"AMapRoadInter::get_secondName": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapRoadInter::get_secondName");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapRoadInter * ref = (AMapRoadInter *) HEAP[@(refId)];
      
          // 开始调用
          NSString* result = ref.secondName;
      
      
      
          // 返回值: jsonable
          methodResult(result);
      },
      
      @"AMapStreetNumber::get_street": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapStreetNumber::get_street");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapStreetNumber * ref = (AMapStreetNumber *) HEAP[@(refId)];
      
          // 开始调用
          NSString* result = ref.street;
      
      
      
          // 返回值: jsonable
          methodResult(result);
      },
      
      @"AMapStreetNumber::get_number": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapStreetNumber::get_number");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapStreetNumber * ref = (AMapStreetNumber *) HEAP[@(refId)];
      
          // 开始调用
          NSString* result = ref.number;
      
      
      
          // 返回值: jsonable
          methodResult(result);
      },
      
      @"AMapStreetNumber::get_location": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapStreetNumber::get_location");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapStreetNumber * ref = (AMapStreetNumber *) HEAP[@(refId)];
      
          // 开始调用
          AMapGeoPoint* result = ref.location;
      
      
      
          // 返回值: 引用
          HEAP[@(result.hash)] = result;
          methodResult(@(result.hash));
      },
      
      @"AMapStreetNumber::get_distance": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapStreetNumber::get_distance");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapStreetNumber * ref = (AMapStreetNumber *) HEAP[@(refId)];
      
          // 开始调用
          NSInteger result = ref.distance;
      
      
      
          // 返回值: Value
          methodResult(@(result));
      },
      
      @"AMapStreetNumber::get_direction": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapStreetNumber::get_direction");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapStreetNumber * ref = (AMapStreetNumber *) HEAP[@(refId)];
      
          // 开始调用
          NSString* result = ref.direction;
      
      
      
          // 返回值: jsonable
          methodResult(result);
      },
      
      @"AMapBusinessArea::get_name": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapBusinessArea::get_name");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapBusinessArea * ref = (AMapBusinessArea *) HEAP[@(refId)];
      
          // 开始调用
          NSString* result = ref.name;
      
      
      
          // 返回值: jsonable
          methodResult(result);
      },
      
      @"AMapBusinessArea::get_location": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapBusinessArea::get_location");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapBusinessArea * ref = (AMapBusinessArea *) HEAP[@(refId)];
      
          // 开始调用
          AMapGeoPoint* result = ref.location;
      
      
      
          // 返回值: 引用
          HEAP[@(result.hash)] = result;
          methodResult(@(result.hash));
      },
      
      @"AMapAddressComponent::get_country": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapAddressComponent::get_country");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapAddressComponent * ref = (AMapAddressComponent *) HEAP[@(refId)];
      
          // 开始调用
          NSString* result = ref.country;
      
      
      
          // 返回值: jsonable
          methodResult(result);
      },
      
      @"AMapAddressComponent::get_province": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapAddressComponent::get_province");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapAddressComponent * ref = (AMapAddressComponent *) HEAP[@(refId)];
      
          // 开始调用
          NSString* result = ref.province;
      
      
      
          // 返回值: jsonable
          methodResult(result);
      },
      
      @"AMapAddressComponent::get_city": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapAddressComponent::get_city");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapAddressComponent * ref = (AMapAddressComponent *) HEAP[@(refId)];
      
          // 开始调用
          NSString* result = ref.city;
      
      
      
          // 返回值: jsonable
          methodResult(result);
      },
      
      @"AMapAddressComponent::get_citycode": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapAddressComponent::get_citycode");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapAddressComponent * ref = (AMapAddressComponent *) HEAP[@(refId)];
      
          // 开始调用
          NSString* result = ref.citycode;
      
      
      
          // 返回值: jsonable
          methodResult(result);
      },
      
      @"AMapAddressComponent::get_district": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapAddressComponent::get_district");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapAddressComponent * ref = (AMapAddressComponent *) HEAP[@(refId)];
      
          // 开始调用
          NSString* result = ref.district;
      
      
      
          // 返回值: jsonable
          methodResult(result);
      },
      
      @"AMapAddressComponent::get_adcode": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapAddressComponent::get_adcode");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapAddressComponent * ref = (AMapAddressComponent *) HEAP[@(refId)];
      
          // 开始调用
          NSString* result = ref.adcode;
      
      
      
          // 返回值: jsonable
          methodResult(result);
      },
      
      @"AMapAddressComponent::get_township": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapAddressComponent::get_township");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapAddressComponent * ref = (AMapAddressComponent *) HEAP[@(refId)];
      
          // 开始调用
          NSString* result = ref.township;
      
      
      
          // 返回值: jsonable
          methodResult(result);
      },
      
      @"AMapAddressComponent::get_towncode": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapAddressComponent::get_towncode");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapAddressComponent * ref = (AMapAddressComponent *) HEAP[@(refId)];
      
          // 开始调用
          NSString* result = ref.towncode;
      
      
      
          // 返回值: jsonable
          methodResult(result);
      },
      
      @"AMapAddressComponent::get_neighborhood": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapAddressComponent::get_neighborhood");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapAddressComponent * ref = (AMapAddressComponent *) HEAP[@(refId)];
      
          // 开始调用
          NSString* result = ref.neighborhood;
      
      
      
          // 返回值: jsonable
          methodResult(result);
      },
      
      @"AMapAddressComponent::get_building": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapAddressComponent::get_building");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapAddressComponent * ref = (AMapAddressComponent *) HEAP[@(refId)];
      
          // 开始调用
          NSString* result = ref.building;
      
      
      
          // 返回值: jsonable
          methodResult(result);
      },
      
      @"AMapAddressComponent::get_streetNumber": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapAddressComponent::get_streetNumber");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapAddressComponent * ref = (AMapAddressComponent *) HEAP[@(refId)];
      
          // 开始调用
          AMapStreetNumber* result = ref.streetNumber;
      
      
      
          // 返回值: 引用
          HEAP[@(result.hash)] = result;
          methodResult(@(result.hash));
      },
      
      @"AMapAddressComponent::get_businessAreas": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapAddressComponent::get_businessAreas");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapAddressComponent * ref = (AMapAddressComponent *) HEAP[@(refId)];
      
          // 开始调用
          NSArray<AMapBusinessArea*>* result = ref.businessAreas;
      
      
      
          // 返回值: 列表
          NSMutableArray* refIdList = [NSMutableArray array];
          for (int i = 0; i < result.count; i++) {
              NSObject* object = [result objectAtIndex:i];
              [refIdList addObject: @(object.hash)];
              HEAP[@([object hash])] = object;
          }
      
          methodResult(refIdList);
      },
      
      @"AMapReGeocode::get_formattedAddress": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapReGeocode::get_formattedAddress");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapReGeocode * ref = (AMapReGeocode *) HEAP[@(refId)];
      
          // 开始调用
          NSString* result = ref.formattedAddress;
      
      
      
          // 返回值: jsonable
          methodResult(result);
      },
      
      @"AMapReGeocode::get_addressComponent": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapReGeocode::get_addressComponent");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapReGeocode * ref = (AMapReGeocode *) HEAP[@(refId)];
      
          // 开始调用
          AMapAddressComponent* result = ref.addressComponent;
      
      
      
          // 返回值: 引用
          HEAP[@(result.hash)] = result;
          methodResult(@(result.hash));
      },
      
      @"AMapReGeocode::get_roads": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapReGeocode::get_roads");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapReGeocode * ref = (AMapReGeocode *) HEAP[@(refId)];
      
          // 开始调用
          NSArray<AMapRoad*>* result = ref.roads;
      
      
      
          // 返回值: 列表
          NSMutableArray* refIdList = [NSMutableArray array];
          for (int i = 0; i < result.count; i++) {
              NSObject* object = [result objectAtIndex:i];
              [refIdList addObject: @(object.hash)];
              HEAP[@([object hash])] = object;
          }
      
          methodResult(refIdList);
      },
      
      @"AMapReGeocode::get_roadinters": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapReGeocode::get_roadinters");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapReGeocode * ref = (AMapReGeocode *) HEAP[@(refId)];
      
          // 开始调用
          NSArray<AMapRoadInter*>* result = ref.roadinters;
      
      
      
          // 返回值: 列表
          NSMutableArray* refIdList = [NSMutableArray array];
          for (int i = 0; i < result.count; i++) {
              NSObject* object = [result objectAtIndex:i];
              [refIdList addObject: @(object.hash)];
              HEAP[@([object hash])] = object;
          }
      
          methodResult(refIdList);
      },
      
      @"AMapReGeocode::get_pois": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapReGeocode::get_pois");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapReGeocode * ref = (AMapReGeocode *) HEAP[@(refId)];
      
          // 开始调用
          NSArray<AMapPOI*>* result = ref.pois;
      
      
      
          // 返回值: 列表
          NSMutableArray* refIdList = [NSMutableArray array];
          for (int i = 0; i < result.count; i++) {
              NSObject* object = [result objectAtIndex:i];
              [refIdList addObject: @(object.hash)];
              HEAP[@([object hash])] = object;
          }
      
          methodResult(refIdList);
      },
      
      @"AMapReGeocode::get_aois": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapReGeocode::get_aois");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapReGeocode * ref = (AMapReGeocode *) HEAP[@(refId)];
      
          // 开始调用
          NSArray<AMapAOI*>* result = ref.aois;
      
      
      
          // 返回值: 列表
          NSMutableArray* refIdList = [NSMutableArray array];
          for (int i = 0; i < result.count; i++) {
              NSObject* object = [result objectAtIndex:i];
              [refIdList addObject: @(object.hash)];
              HEAP[@([object hash])] = object;
          }
      
          methodResult(refIdList);
      },
      
      @"AMapGeocode::get_formattedAddress": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapGeocode::get_formattedAddress");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapGeocode * ref = (AMapGeocode *) HEAP[@(refId)];
      
          // 开始调用
          NSString* result = ref.formattedAddress;
      
      
      
          // 返回值: jsonable
          methodResult(result);
      },
      
      @"AMapGeocode::get_province": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapGeocode::get_province");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapGeocode * ref = (AMapGeocode *) HEAP[@(refId)];
      
          // 开始调用
          NSString* result = ref.province;
      
      
      
          // 返回值: jsonable
          methodResult(result);
      },
      
      @"AMapGeocode::get_city": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapGeocode::get_city");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapGeocode * ref = (AMapGeocode *) HEAP[@(refId)];
      
          // 开始调用
          NSString* result = ref.city;
      
      
      
          // 返回值: jsonable
          methodResult(result);
      },
      
      @"AMapGeocode::get_citycode": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapGeocode::get_citycode");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapGeocode * ref = (AMapGeocode *) HEAP[@(refId)];
      
          // 开始调用
          NSString* result = ref.citycode;
      
      
      
          // 返回值: jsonable
          methodResult(result);
      },
      
      @"AMapGeocode::get_district": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapGeocode::get_district");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapGeocode * ref = (AMapGeocode *) HEAP[@(refId)];
      
          // 开始调用
          NSString* result = ref.district;
      
      
      
          // 返回值: jsonable
          methodResult(result);
      },
      
      @"AMapGeocode::get_adcode": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapGeocode::get_adcode");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapGeocode * ref = (AMapGeocode *) HEAP[@(refId)];
      
          // 开始调用
          NSString* result = ref.adcode;
      
      
      
          // 返回值: jsonable
          methodResult(result);
      },
      
      @"AMapGeocode::get_township": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapGeocode::get_township");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapGeocode * ref = (AMapGeocode *) HEAP[@(refId)];
      
          // 开始调用
          NSString* result = ref.township;
      
      
      
          // 返回值: jsonable
          methodResult(result);
      },
      
      @"AMapGeocode::get_neighborhood": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapGeocode::get_neighborhood");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapGeocode * ref = (AMapGeocode *) HEAP[@(refId)];
      
          // 开始调用
          NSString* result = ref.neighborhood;
      
      
      
          // 返回值: jsonable
          methodResult(result);
      },
      
      @"AMapGeocode::get_building": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapGeocode::get_building");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapGeocode * ref = (AMapGeocode *) HEAP[@(refId)];
      
          // 开始调用
          NSString* result = ref.building;
      
      
      
          // 返回值: jsonable
          methodResult(result);
      },
      
      @"AMapGeocode::get_location": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapGeocode::get_location");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapGeocode * ref = (AMapGeocode *) HEAP[@(refId)];
      
          // 开始调用
          AMapGeoPoint* result = ref.location;
      
      
      
          // 返回值: 引用
          HEAP[@(result.hash)] = result;
          methodResult(@(result.hash));
      },
      
      @"AMapGeocode::get_level": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapGeocode::get_level");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapGeocode * ref = (AMapGeocode *) HEAP[@(refId)];
      
          // 开始调用
          NSString* result = ref.level;
      
      
      
          // 返回值: jsonable
          methodResult(result);
      },
      
      @"AMapBusStop::get_uid": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapBusStop::get_uid");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapBusStop * ref = (AMapBusStop *) HEAP[@(refId)];
      
          // 开始调用
          NSString* result = ref.uid;
      
      
      
          // 返回值: jsonable
          methodResult(result);
      },
      
      @"AMapBusStop::get_adcode": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapBusStop::get_adcode");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapBusStop * ref = (AMapBusStop *) HEAP[@(refId)];
      
          // 开始调用
          NSString* result = ref.adcode;
      
      
      
          // 返回值: jsonable
          methodResult(result);
      },
      
      @"AMapBusStop::get_name": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapBusStop::get_name");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapBusStop * ref = (AMapBusStop *) HEAP[@(refId)];
      
          // 开始调用
          NSString* result = ref.name;
      
      
      
          // 返回值: jsonable
          methodResult(result);
      },
      
      @"AMapBusStop::get_citycode": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapBusStop::get_citycode");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapBusStop * ref = (AMapBusStop *) HEAP[@(refId)];
      
          // 开始调用
          NSString* result = ref.citycode;
      
      
      
          // 返回值: jsonable
          methodResult(result);
      },
      
      @"AMapBusStop::get_location": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapBusStop::get_location");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapBusStop * ref = (AMapBusStop *) HEAP[@(refId)];
      
          // 开始调用
          AMapGeoPoint* result = ref.location;
      
      
      
          // 返回值: 引用
          HEAP[@(result.hash)] = result;
          methodResult(@(result.hash));
      },
      
      @"AMapBusStop::get_buslines": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapBusStop::get_buslines");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapBusStop * ref = (AMapBusStop *) HEAP[@(refId)];
      
          // 开始调用
          NSArray<AMapBusLine*>* result = ref.buslines;
      
      
      
          // 返回值: 列表
          NSMutableArray* refIdList = [NSMutableArray array];
          for (int i = 0; i < result.count; i++) {
              NSObject* object = [result objectAtIndex:i];
              [refIdList addObject: @(object.hash)];
              HEAP[@([object hash])] = object;
          }
      
          methodResult(refIdList);
      },
      
      @"AMapBusStop::get_sequence": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapBusStop::get_sequence");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapBusStop * ref = (AMapBusStop *) HEAP[@(refId)];
      
          // 开始调用
          NSString* result = ref.sequence;
      
      
      
          // 返回值: jsonable
          methodResult(result);
      },
      
      @"AMapBusLine::get_uid": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapBusLine::get_uid");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapBusLine * ref = (AMapBusLine *) HEAP[@(refId)];
      
          // 开始调用
          NSString* result = ref.uid;
      
      
      
          // 返回值: jsonable
          methodResult(result);
      },
      
      @"AMapBusLine::get_type": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapBusLine::get_type");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapBusLine * ref = (AMapBusLine *) HEAP[@(refId)];
      
          // 开始调用
          NSString* result = ref.type;
      
      
      
          // 返回值: jsonable
          methodResult(result);
      },
      
      @"AMapBusLine::get_name": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapBusLine::get_name");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapBusLine * ref = (AMapBusLine *) HEAP[@(refId)];
      
          // 开始调用
          NSString* result = ref.name;
      
      
      
          // 返回值: jsonable
          methodResult(result);
      },
      
      @"AMapBusLine::get_polyline": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapBusLine::get_polyline");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapBusLine * ref = (AMapBusLine *) HEAP[@(refId)];
      
          // 开始调用
          NSString* result = ref.polyline;
      
      
      
          // 返回值: jsonable
          methodResult(result);
      },
      
      @"AMapBusLine::get_citycode": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapBusLine::get_citycode");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapBusLine * ref = (AMapBusLine *) HEAP[@(refId)];
      
          // 开始调用
          NSString* result = ref.citycode;
      
      
      
          // 返回值: jsonable
          methodResult(result);
      },
      
      @"AMapBusLine::get_startStop": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapBusLine::get_startStop");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapBusLine * ref = (AMapBusLine *) HEAP[@(refId)];
      
          // 开始调用
          NSString* result = ref.startStop;
      
      
      
          // 返回值: jsonable
          methodResult(result);
      },
      
      @"AMapBusLine::get_endStop": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapBusLine::get_endStop");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapBusLine * ref = (AMapBusLine *) HEAP[@(refId)];
      
          // 开始调用
          NSString* result = ref.endStop;
      
      
      
          // 返回值: jsonable
          methodResult(result);
      },
      
      @"AMapBusLine::get_location": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapBusLine::get_location");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapBusLine * ref = (AMapBusLine *) HEAP[@(refId)];
      
          // 开始调用
          AMapGeoPoint* result = ref.location;
      
      
      
          // 返回值: 引用
          HEAP[@(result.hash)] = result;
          methodResult(@(result.hash));
      },
      
      @"AMapBusLine::get_startTime": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapBusLine::get_startTime");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapBusLine * ref = (AMapBusLine *) HEAP[@(refId)];
      
          // 开始调用
          NSString* result = ref.startTime;
      
      
      
          // 返回值: jsonable
          methodResult(result);
      },
      
      @"AMapBusLine::get_endTime": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapBusLine::get_endTime");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapBusLine * ref = (AMapBusLine *) HEAP[@(refId)];
      
          // 开始调用
          NSString* result = ref.endTime;
      
      
      
          // 返回值: jsonable
          methodResult(result);
      },
      
      @"AMapBusLine::get_company": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapBusLine::get_company");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapBusLine * ref = (AMapBusLine *) HEAP[@(refId)];
      
          // 开始调用
          NSString* result = ref.company;
      
      
      
          // 返回值: jsonable
          methodResult(result);
      },
      
      @"AMapBusLine::get_distance": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapBusLine::get_distance");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapBusLine * ref = (AMapBusLine *) HEAP[@(refId)];
      
          // 开始调用
          CGFloat result = ref.distance;
      
      
      
          // 返回值: Value
          methodResult(@(result));
      },
      
      @"AMapBusLine::get_basicPrice": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapBusLine::get_basicPrice");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapBusLine * ref = (AMapBusLine *) HEAP[@(refId)];
      
          // 开始调用
          CGFloat result = ref.basicPrice;
      
      
      
          // 返回值: Value
          methodResult(@(result));
      },
      
      @"AMapBusLine::get_totalPrice": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapBusLine::get_totalPrice");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapBusLine * ref = (AMapBusLine *) HEAP[@(refId)];
      
          // 开始调用
          CGFloat result = ref.totalPrice;
      
      
      
          // 返回值: Value
          methodResult(@(result));
      },
      
      @"AMapBusLine::get_bounds": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapBusLine::get_bounds");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapBusLine * ref = (AMapBusLine *) HEAP[@(refId)];
      
          // 开始调用
          AMapGeoPolygon* result = ref.bounds;
      
      
      
          // 返回值: 引用
          HEAP[@(result.hash)] = result;
          methodResult(@(result.hash));
      },
      
      @"AMapBusLine::get_busStops": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapBusLine::get_busStops");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapBusLine * ref = (AMapBusLine *) HEAP[@(refId)];
      
          // 开始调用
          NSArray<AMapBusStop*>* result = ref.busStops;
      
      
      
          // 返回值: 列表
          NSMutableArray* refIdList = [NSMutableArray array];
          for (int i = 0; i < result.count; i++) {
              NSObject* object = [result objectAtIndex:i];
              [refIdList addObject: @(object.hash)];
              HEAP[@([object hash])] = object;
          }
      
          methodResult(refIdList);
      },
      
      @"AMapBusLine::get_departureStop": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapBusLine::get_departureStop");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapBusLine * ref = (AMapBusLine *) HEAP[@(refId)];
      
          // 开始调用
          AMapBusStop* result = ref.departureStop;
      
      
      
          // 返回值: 引用
          HEAP[@(result.hash)] = result;
          methodResult(@(result.hash));
      },
      
      @"AMapBusLine::get_arrivalStop": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapBusLine::get_arrivalStop");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapBusLine * ref = (AMapBusLine *) HEAP[@(refId)];
      
          // 开始调用
          AMapBusStop* result = ref.arrivalStop;
      
      
      
          // 返回值: 引用
          HEAP[@(result.hash)] = result;
          methodResult(@(result.hash));
      },
      
      @"AMapBusLine::get_viaBusStops": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapBusLine::get_viaBusStops");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapBusLine * ref = (AMapBusLine *) HEAP[@(refId)];
      
          // 开始调用
          NSArray<AMapBusStop*>* result = ref.viaBusStops;
      
      
      
          // 返回值: 列表
          NSMutableArray* refIdList = [NSMutableArray array];
          for (int i = 0; i < result.count; i++) {
              NSObject* object = [result objectAtIndex:i];
              [refIdList addObject: @(object.hash)];
              HEAP[@([object hash])] = object;
          }
      
          methodResult(refIdList);
      },
      
      @"AMapBusLine::get_duration": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapBusLine::get_duration");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapBusLine * ref = (AMapBusLine *) HEAP[@(refId)];
      
          // 开始调用
          NSInteger result = ref.duration;
      
      
      
          // 返回值: Value
          methodResult(@(result));
      },
      
      @"AMapDistrict::get_adcode": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapDistrict::get_adcode");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapDistrict * ref = (AMapDistrict *) HEAP[@(refId)];
      
          // 开始调用
          NSString* result = ref.adcode;
      
      
      
          // 返回值: jsonable
          methodResult(result);
      },
      
      @"AMapDistrict::get_citycode": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapDistrict::get_citycode");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapDistrict * ref = (AMapDistrict *) HEAP[@(refId)];
      
          // 开始调用
          NSString* result = ref.citycode;
      
      
      
          // 返回值: jsonable
          methodResult(result);
      },
      
      @"AMapDistrict::get_name": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapDistrict::get_name");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapDistrict * ref = (AMapDistrict *) HEAP[@(refId)];
      
          // 开始调用
          NSString* result = ref.name;
      
      
      
          // 返回值: jsonable
          methodResult(result);
      },
      
      @"AMapDistrict::get_level": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapDistrict::get_level");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapDistrict * ref = (AMapDistrict *) HEAP[@(refId)];
      
          // 开始调用
          NSString* result = ref.level;
      
      
      
          // 返回值: jsonable
          methodResult(result);
      },
      
      @"AMapDistrict::get_center": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapDistrict::get_center");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapDistrict * ref = (AMapDistrict *) HEAP[@(refId)];
      
          // 开始调用
          AMapGeoPoint* result = ref.center;
      
      
      
          // 返回值: 引用
          HEAP[@(result.hash)] = result;
          methodResult(@(result.hash));
      },
      
      @"AMapDistrict::get_districts": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapDistrict::get_districts");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapDistrict * ref = (AMapDistrict *) HEAP[@(refId)];
      
          // 开始调用
          NSArray<AMapDistrict*>* result = ref.districts;
      
      
      
          // 返回值: 列表
          NSMutableArray* refIdList = [NSMutableArray array];
          for (int i = 0; i < result.count; i++) {
              NSObject* object = [result objectAtIndex:i];
              [refIdList addObject: @(object.hash)];
              HEAP[@([object hash])] = object;
          }
      
          methodResult(refIdList);
      },
      
      @"AMapDistrict::get_polylines": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapDistrict::get_polylines");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapDistrict * ref = (AMapDistrict *) HEAP[@(refId)];
      
          // 开始调用
          NSArray<NSString*>* result = ref.polylines;
      
      
      
          // 返回值: jsonable
          methodResult(result);
      },
      
      @"AMapTMC::get_distance": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapTMC::get_distance");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapTMC * ref = (AMapTMC *) HEAP[@(refId)];
      
          // 开始调用
          NSInteger result = ref.distance;
      
      
      
          // 返回值: Value
          methodResult(@(result));
      },
      
      @"AMapTMC::get_status": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapTMC::get_status");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapTMC * ref = (AMapTMC *) HEAP[@(refId)];
      
          // 开始调用
          NSString* result = ref.status;
      
      
      
          // 返回值: jsonable
          methodResult(result);
      },
      
      @"AMapTMC::get_polyline": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapTMC::get_polyline");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapTMC * ref = (AMapTMC *) HEAP[@(refId)];
      
          // 开始调用
          NSString* result = ref.polyline;
      
      
      
          // 返回值: jsonable
          methodResult(result);
      },
      
      @"AMapStep::get_instruction": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapStep::get_instruction");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapStep * ref = (AMapStep *) HEAP[@(refId)];
      
          // 开始调用
          NSString* result = ref.instruction;
      
      
      
          // 返回值: jsonable
          methodResult(result);
      },
      
      @"AMapStep::get_orientation": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapStep::get_orientation");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapStep * ref = (AMapStep *) HEAP[@(refId)];
      
          // 开始调用
          NSString* result = ref.orientation;
      
      
      
          // 返回值: jsonable
          methodResult(result);
      },
      
      @"AMapStep::get_road": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapStep::get_road");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapStep * ref = (AMapStep *) HEAP[@(refId)];
      
          // 开始调用
          NSString* result = ref.road;
      
      
      
          // 返回值: jsonable
          methodResult(result);
      },
      
      @"AMapStep::get_distance": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapStep::get_distance");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapStep * ref = (AMapStep *) HEAP[@(refId)];
      
          // 开始调用
          NSInteger result = ref.distance;
      
      
      
          // 返回值: Value
          methodResult(@(result));
      },
      
      @"AMapStep::get_duration": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapStep::get_duration");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapStep * ref = (AMapStep *) HEAP[@(refId)];
      
          // 开始调用
          NSInteger result = ref.duration;
      
      
      
          // 返回值: Value
          methodResult(@(result));
      },
      
      @"AMapStep::get_polyline": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapStep::get_polyline");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapStep * ref = (AMapStep *) HEAP[@(refId)];
      
          // 开始调用
          NSString* result = ref.polyline;
      
      
      
          // 返回值: jsonable
          methodResult(result);
      },
      
      @"AMapStep::get_action": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapStep::get_action");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapStep * ref = (AMapStep *) HEAP[@(refId)];
      
          // 开始调用
          NSString* result = ref.action;
      
      
      
          // 返回值: jsonable
          methodResult(result);
      },
      
      @"AMapStep::get_assistantAction": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapStep::get_assistantAction");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapStep * ref = (AMapStep *) HEAP[@(refId)];
      
          // 开始调用
          NSString* result = ref.assistantAction;
      
      
      
          // 返回值: jsonable
          methodResult(result);
      },
      
      @"AMapStep::get_tolls": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapStep::get_tolls");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapStep * ref = (AMapStep *) HEAP[@(refId)];
      
          // 开始调用
          CGFloat result = ref.tolls;
      
      
      
          // 返回值: Value
          methodResult(@(result));
      },
      
      @"AMapStep::get_tollDistance": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapStep::get_tollDistance");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapStep * ref = (AMapStep *) HEAP[@(refId)];
      
          // 开始调用
          NSInteger result = ref.tollDistance;
      
      
      
          // 返回值: Value
          methodResult(@(result));
      },
      
      @"AMapStep::get_tollRoad": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapStep::get_tollRoad");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapStep * ref = (AMapStep *) HEAP[@(refId)];
      
          // 开始调用
          NSString* result = ref.tollRoad;
      
      
      
          // 返回值: jsonable
          methodResult(result);
      },
      
      @"AMapStep::get_cities": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapStep::get_cities");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapStep * ref = (AMapStep *) HEAP[@(refId)];
      
          // 开始调用
          NSArray<AMapCity*>* result = ref.cities;
      
      
      
          // 返回值: 列表
          NSMutableArray* refIdList = [NSMutableArray array];
          for (int i = 0; i < result.count; i++) {
              NSObject* object = [result objectAtIndex:i];
              [refIdList addObject: @(object.hash)];
              HEAP[@([object hash])] = object;
          }
      
          methodResult(refIdList);
      },
      
      @"AMapStep::get_tmcs": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapStep::get_tmcs");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapStep * ref = (AMapStep *) HEAP[@(refId)];
      
          // 开始调用
          NSArray<AMapTMC*>* result = ref.tmcs;
      
      
      
          // 返回值: 列表
          NSMutableArray* refIdList = [NSMutableArray array];
          for (int i = 0; i < result.count; i++) {
              NSObject* object = [result objectAtIndex:i];
              [refIdList addObject: @(object.hash)];
              HEAP[@([object hash])] = object;
          }
      
          methodResult(refIdList);
      },
      
      @"AMapPath::get_distance": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapPath::get_distance");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapPath * ref = (AMapPath *) HEAP[@(refId)];
      
          // 开始调用
          NSInteger result = ref.distance;
      
      
      
          // 返回值: Value
          methodResult(@(result));
      },
      
      @"AMapPath::get_duration": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapPath::get_duration");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapPath * ref = (AMapPath *) HEAP[@(refId)];
      
          // 开始调用
          NSInteger result = ref.duration;
      
      
      
          // 返回值: Value
          methodResult(@(result));
      },
      
      @"AMapPath::get_strategy": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapPath::get_strategy");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapPath * ref = (AMapPath *) HEAP[@(refId)];
      
          // 开始调用
          NSString* result = ref.strategy;
      
      
      
          // 返回值: jsonable
          methodResult(result);
      },
      
      @"AMapPath::get_steps": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapPath::get_steps");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapPath * ref = (AMapPath *) HEAP[@(refId)];
      
          // 开始调用
          NSArray<AMapStep*>* result = ref.steps;
      
      
      
          // 返回值: 列表
          NSMutableArray* refIdList = [NSMutableArray array];
          for (int i = 0; i < result.count; i++) {
              NSObject* object = [result objectAtIndex:i];
              [refIdList addObject: @(object.hash)];
              HEAP[@([object hash])] = object;
          }
      
          methodResult(refIdList);
      },
      
      @"AMapPath::get_tolls": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapPath::get_tolls");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapPath * ref = (AMapPath *) HEAP[@(refId)];
      
          // 开始调用
          CGFloat result = ref.tolls;
      
      
      
          // 返回值: Value
          methodResult(@(result));
      },
      
      @"AMapPath::get_tollDistance": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapPath::get_tollDistance");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapPath * ref = (AMapPath *) HEAP[@(refId)];
      
          // 开始调用
          NSInteger result = ref.tollDistance;
      
      
      
          // 返回值: Value
          methodResult(@(result));
      },
      
      @"AMapPath::get_totalTrafficLights": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapPath::get_totalTrafficLights");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapPath * ref = (AMapPath *) HEAP[@(refId)];
      
          // 开始调用
          NSInteger result = ref.totalTrafficLights;
      
      
      
          // 返回值: Value
          methodResult(@(result));
      },
      
      @"AMapPath::get_restriction": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapPath::get_restriction");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapPath * ref = (AMapPath *) HEAP[@(refId)];
      
          // 开始调用
          NSInteger result = ref.restriction;
      
      
      
          // 返回值: Value
          methodResult(@(result));
      },
      
      @"AMapFutureTimeInfoElement::get_duration": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapFutureTimeInfoElement::get_duration");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapFutureTimeInfoElement * ref = (AMapFutureTimeInfoElement *) HEAP[@(refId)];
      
          // 开始调用
          NSInteger result = ref.duration;
      
      
      
          // 返回值: Value
          methodResult(@(result));
      },
      
      @"AMapFutureTimeInfoElement::get_pathindex": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapFutureTimeInfoElement::get_pathindex");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapFutureTimeInfoElement * ref = (AMapFutureTimeInfoElement *) HEAP[@(refId)];
      
          // 开始调用
          NSInteger result = ref.pathindex;
      
      
      
          // 返回值: Value
          methodResult(@(result));
      },
      
      @"AMapFutureTimeInfoElement::get_restriction": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapFutureTimeInfoElement::get_restriction");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapFutureTimeInfoElement * ref = (AMapFutureTimeInfoElement *) HEAP[@(refId)];
      
          // 开始调用
          NSInteger result = ref.restriction;
      
      
      
          // 返回值: Value
          methodResult(@(result));
      },
      
      @"AMapFutureTimeInfoElement::get_tmcs": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapFutureTimeInfoElement::get_tmcs");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapFutureTimeInfoElement * ref = (AMapFutureTimeInfoElement *) HEAP[@(refId)];
      
          // 开始调用
          NSArray<AMapTMC*>* result = ref.tmcs;
      
      
      
          // 返回值: 列表
          NSMutableArray* refIdList = [NSMutableArray array];
          for (int i = 0; i < result.count; i++) {
              NSObject* object = [result objectAtIndex:i];
              [refIdList addObject: @(object.hash)];
              HEAP[@([object hash])] = object;
          }
      
          methodResult(refIdList);
      },
      
      @"AMapFutureTimeInfo::get_startTime": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapFutureTimeInfo::get_startTime");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapFutureTimeInfo * ref = (AMapFutureTimeInfo *) HEAP[@(refId)];
      
          // 开始调用
          NSString* result = ref.startTime;
      
      
      
          // 返回值: jsonable
          methodResult(result);
      },
      
      @"AMapFutureTimeInfo::get_elements": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapFutureTimeInfo::get_elements");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapFutureTimeInfo * ref = (AMapFutureTimeInfo *) HEAP[@(refId)];
      
          // 开始调用
          NSArray<AMapFutureTimeInfoElement*>* result = ref.elements;
      
      
      
          // 返回值: 列表
          NSMutableArray* refIdList = [NSMutableArray array];
          for (int i = 0; i < result.count; i++) {
              NSObject* object = [result objectAtIndex:i];
              [refIdList addObject: @(object.hash)];
              HEAP[@([object hash])] = object;
          }
      
          methodResult(refIdList);
      },
      
      @"AMapWalking::get_origin": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapWalking::get_origin");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapWalking * ref = (AMapWalking *) HEAP[@(refId)];
      
          // 开始调用
          AMapGeoPoint* result = ref.origin;
      
      
      
          // 返回值: 引用
          HEAP[@(result.hash)] = result;
          methodResult(@(result.hash));
      },
      
      @"AMapWalking::get_destination": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapWalking::get_destination");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapWalking * ref = (AMapWalking *) HEAP[@(refId)];
      
          // 开始调用
          AMapGeoPoint* result = ref.destination;
      
      
      
          // 返回值: 引用
          HEAP[@(result.hash)] = result;
          methodResult(@(result.hash));
      },
      
      @"AMapWalking::get_distance": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapWalking::get_distance");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapWalking * ref = (AMapWalking *) HEAP[@(refId)];
      
          // 开始调用
          NSInteger result = ref.distance;
      
      
      
          // 返回值: Value
          methodResult(@(result));
      },
      
      @"AMapWalking::get_duration": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapWalking::get_duration");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapWalking * ref = (AMapWalking *) HEAP[@(refId)];
      
          // 开始调用
          NSInteger result = ref.duration;
      
      
      
          // 返回值: Value
          methodResult(@(result));
      },
      
      @"AMapWalking::get_steps": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapWalking::get_steps");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapWalking * ref = (AMapWalking *) HEAP[@(refId)];
      
          // 开始调用
          NSArray<AMapStep*>* result = ref.steps;
      
      
      
          // 返回值: 列表
          NSMutableArray* refIdList = [NSMutableArray array];
          for (int i = 0; i < result.count; i++) {
              NSObject* object = [result objectAtIndex:i];
              [refIdList addObject: @(object.hash)];
              HEAP[@([object hash])] = object;
          }
      
          methodResult(refIdList);
      },
      
      @"AMapTaxi::get_origin": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapTaxi::get_origin");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapTaxi * ref = (AMapTaxi *) HEAP[@(refId)];
      
          // 开始调用
          AMapGeoPoint* result = ref.origin;
      
      
      
          // 返回值: 引用
          HEAP[@(result.hash)] = result;
          methodResult(@(result.hash));
      },
      
      @"AMapTaxi::get_destination": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapTaxi::get_destination");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapTaxi * ref = (AMapTaxi *) HEAP[@(refId)];
      
          // 开始调用
          AMapGeoPoint* result = ref.destination;
      
      
      
          // 返回值: 引用
          HEAP[@(result.hash)] = result;
          methodResult(@(result.hash));
      },
      
      @"AMapTaxi::get_distance": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapTaxi::get_distance");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapTaxi * ref = (AMapTaxi *) HEAP[@(refId)];
      
          // 开始调用
          NSInteger result = ref.distance;
      
      
      
          // 返回值: Value
          methodResult(@(result));
      },
      
      @"AMapTaxi::get_duration": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapTaxi::get_duration");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapTaxi * ref = (AMapTaxi *) HEAP[@(refId)];
      
          // 开始调用
          NSInteger result = ref.duration;
      
      
      
          // 返回值: Value
          methodResult(@(result));
      },
      
      @"AMapTaxi::get_sname": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapTaxi::get_sname");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapTaxi * ref = (AMapTaxi *) HEAP[@(refId)];
      
          // 开始调用
          NSString* result = ref.sname;
      
      
      
          // 返回值: jsonable
          methodResult(result);
      },
      
      @"AMapTaxi::get_tname": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapTaxi::get_tname");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapTaxi * ref = (AMapTaxi *) HEAP[@(refId)];
      
          // 开始调用
          NSString* result = ref.tname;
      
      
      
          // 返回值: jsonable
          methodResult(result);
      },
      
      @"AMapRailwayStation::get_uid": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapRailwayStation::get_uid");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapRailwayStation * ref = (AMapRailwayStation *) HEAP[@(refId)];
      
          // 开始调用
          NSString* result = ref.uid;
      
      
      
          // 返回值: jsonable
          methodResult(result);
      },
      
      @"AMapRailwayStation::get_name": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapRailwayStation::get_name");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapRailwayStation * ref = (AMapRailwayStation *) HEAP[@(refId)];
      
          // 开始调用
          NSString* result = ref.name;
      
      
      
          // 返回值: jsonable
          methodResult(result);
      },
      
      @"AMapRailwayStation::get_location": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapRailwayStation::get_location");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapRailwayStation * ref = (AMapRailwayStation *) HEAP[@(refId)];
      
          // 开始调用
          AMapGeoPoint* result = ref.location;
      
      
      
          // 返回值: 引用
          HEAP[@(result.hash)] = result;
          methodResult(@(result.hash));
      },
      
      @"AMapRailwayStation::get_adcode": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapRailwayStation::get_adcode");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapRailwayStation * ref = (AMapRailwayStation *) HEAP[@(refId)];
      
          // 开始调用
          NSString* result = ref.adcode;
      
      
      
          // 返回值: jsonable
          methodResult(result);
      },
      
      @"AMapRailwayStation::get_time": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapRailwayStation::get_time");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapRailwayStation * ref = (AMapRailwayStation *) HEAP[@(refId)];
      
          // 开始调用
          NSString* result = ref.time;
      
      
      
          // 返回值: jsonable
          methodResult(result);
      },
      
      @"AMapRailwayStation::get_wait": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapRailwayStation::get_wait");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapRailwayStation * ref = (AMapRailwayStation *) HEAP[@(refId)];
      
          // 开始调用
          NSInteger result = ref.wait;
      
      
      
          // 返回值: Value
          methodResult(@(result));
      },
      
      @"AMapRailwayStation::get_isStart": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapRailwayStation::get_isStart");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapRailwayStation * ref = (AMapRailwayStation *) HEAP[@(refId)];
      
          // 开始调用
          BOOL result = ref.isStart;
      
      
      
          // 返回值: Value
          methodResult(@(result));
      },
      
      @"AMapRailwayStation::get_isEnd": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapRailwayStation::get_isEnd");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapRailwayStation * ref = (AMapRailwayStation *) HEAP[@(refId)];
      
          // 开始调用
          BOOL result = ref.isEnd;
      
      
      
          // 返回值: Value
          methodResult(@(result));
      },
      
      @"AMapRailwaySpace::get_code": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapRailwaySpace::get_code");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapRailwaySpace * ref = (AMapRailwaySpace *) HEAP[@(refId)];
      
          // 开始调用
          NSString* result = ref.code;
      
      
      
          // 返回值: jsonable
          methodResult(result);
      },
      
      @"AMapRailwaySpace::get_cost": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapRailwaySpace::get_cost");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapRailwaySpace * ref = (AMapRailwaySpace *) HEAP[@(refId)];
      
          // 开始调用
          CGFloat result = ref.cost;
      
      
      
          // 返回值: Value
          methodResult(@(result));
      },
      
      @"AMapRailway::get_uid": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapRailway::get_uid");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapRailway * ref = (AMapRailway *) HEAP[@(refId)];
      
          // 开始调用
          NSString* result = ref.uid;
      
      
      
          // 返回值: jsonable
          methodResult(result);
      },
      
      @"AMapRailway::get_name": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapRailway::get_name");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapRailway * ref = (AMapRailway *) HEAP[@(refId)];
      
          // 开始调用
          NSString* result = ref.name;
      
      
      
          // 返回值: jsonable
          methodResult(result);
      },
      
      @"AMapRailway::get_trip": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapRailway::get_trip");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapRailway * ref = (AMapRailway *) HEAP[@(refId)];
      
          // 开始调用
          NSString* result = ref.trip;
      
      
      
          // 返回值: jsonable
          methodResult(result);
      },
      
      @"AMapRailway::get_type": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapRailway::get_type");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapRailway * ref = (AMapRailway *) HEAP[@(refId)];
      
          // 开始调用
          NSString* result = ref.type;
      
      
      
          // 返回值: jsonable
          methodResult(result);
      },
      
      @"AMapRailway::get_distance": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapRailway::get_distance");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapRailway * ref = (AMapRailway *) HEAP[@(refId)];
      
          // 开始调用
          NSInteger result = ref.distance;
      
      
      
          // 返回值: Value
          methodResult(@(result));
      },
      
      @"AMapRailway::get_time": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapRailway::get_time");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapRailway * ref = (AMapRailway *) HEAP[@(refId)];
      
          // 开始调用
          NSInteger result = ref.time;
      
      
      
          // 返回值: Value
          methodResult(@(result));
      },
      
      @"AMapRailway::get_departureStation": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapRailway::get_departureStation");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapRailway * ref = (AMapRailway *) HEAP[@(refId)];
      
          // 开始调用
          AMapRailwayStation* result = ref.departureStation;
      
      
      
          // 返回值: 引用
          HEAP[@(result.hash)] = result;
          methodResult(@(result.hash));
      },
      
      @"AMapRailway::get_arrivalStation": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapRailway::get_arrivalStation");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapRailway * ref = (AMapRailway *) HEAP[@(refId)];
      
          // 开始调用
          AMapRailwayStation* result = ref.arrivalStation;
      
      
      
          // 返回值: 引用
          HEAP[@(result.hash)] = result;
          methodResult(@(result.hash));
      },
      
      @"AMapRailway::get_spaces": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapRailway::get_spaces");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapRailway * ref = (AMapRailway *) HEAP[@(refId)];
      
          // 开始调用
          NSArray<AMapRailwaySpace*>* result = ref.spaces;
      
      
      
          // 返回值: 列表
          NSMutableArray* refIdList = [NSMutableArray array];
          for (int i = 0; i < result.count; i++) {
              NSObject* object = [result objectAtIndex:i];
              [refIdList addObject: @(object.hash)];
              HEAP[@([object hash])] = object;
          }
      
          methodResult(refIdList);
      },
      
      @"AMapRailway::get_viaStops": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapRailway::get_viaStops");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapRailway * ref = (AMapRailway *) HEAP[@(refId)];
      
          // 开始调用
          NSArray<AMapRailwayStation*>* result = ref.viaStops;
      
      
      
          // 返回值: 列表
          NSMutableArray* refIdList = [NSMutableArray array];
          for (int i = 0; i < result.count; i++) {
              NSObject* object = [result objectAtIndex:i];
              [refIdList addObject: @(object.hash)];
              HEAP[@([object hash])] = object;
          }
      
          methodResult(refIdList);
      },
      
      @"AMapRailway::get_alters": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapRailway::get_alters");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapRailway * ref = (AMapRailway *) HEAP[@(refId)];
      
          // 开始调用
          NSArray<AMapRailway*>* result = ref.alters;
      
      
      
          // 返回值: 列表
          NSMutableArray* refIdList = [NSMutableArray array];
          for (int i = 0; i < result.count; i++) {
              NSObject* object = [result objectAtIndex:i];
              [refIdList addObject: @(object.hash)];
              HEAP[@([object hash])] = object;
          }
      
          methodResult(refIdList);
      },
      
      @"AMapSegment::get_walking": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapSegment::get_walking");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapSegment * ref = (AMapSegment *) HEAP[@(refId)];
      
          // 开始调用
          AMapWalking* result = ref.walking;
      
      
      
          // 返回值: 引用
          HEAP[@(result.hash)] = result;
          methodResult(@(result.hash));
      },
      
      @"AMapSegment::get_buslines": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapSegment::get_buslines");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapSegment * ref = (AMapSegment *) HEAP[@(refId)];
      
          // 开始调用
          NSArray<AMapBusLine*>* result = ref.buslines;
      
      
      
          // 返回值: 列表
          NSMutableArray* refIdList = [NSMutableArray array];
          for (int i = 0; i < result.count; i++) {
              NSObject* object = [result objectAtIndex:i];
              [refIdList addObject: @(object.hash)];
              HEAP[@([object hash])] = object;
          }
      
          methodResult(refIdList);
      },
      
      @"AMapSegment::get_taxi": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapSegment::get_taxi");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapSegment * ref = (AMapSegment *) HEAP[@(refId)];
      
          // 开始调用
          AMapTaxi* result = ref.taxi;
      
      
      
          // 返回值: 引用
          HEAP[@(result.hash)] = result;
          methodResult(@(result.hash));
      },
      
      @"AMapSegment::get_railway": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapSegment::get_railway");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapSegment * ref = (AMapSegment *) HEAP[@(refId)];
      
          // 开始调用
          AMapRailway* result = ref.railway;
      
      
      
          // 返回值: 引用
          HEAP[@(result.hash)] = result;
          methodResult(@(result.hash));
      },
      
      @"AMapSegment::get_enterName": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapSegment::get_enterName");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapSegment * ref = (AMapSegment *) HEAP[@(refId)];
      
          // 开始调用
          NSString* result = ref.enterName;
      
      
      
          // 返回值: jsonable
          methodResult(result);
      },
      
      @"AMapSegment::get_enterLocation": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapSegment::get_enterLocation");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapSegment * ref = (AMapSegment *) HEAP[@(refId)];
      
          // 开始调用
          AMapGeoPoint* result = ref.enterLocation;
      
      
      
          // 返回值: 引用
          HEAP[@(result.hash)] = result;
          methodResult(@(result.hash));
      },
      
      @"AMapSegment::get_exitName": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapSegment::get_exitName");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapSegment * ref = (AMapSegment *) HEAP[@(refId)];
      
          // 开始调用
          NSString* result = ref.exitName;
      
      
      
          // 返回值: jsonable
          methodResult(result);
      },
      
      @"AMapSegment::get_exitLocation": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapSegment::get_exitLocation");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapSegment * ref = (AMapSegment *) HEAP[@(refId)];
      
          // 开始调用
          AMapGeoPoint* result = ref.exitLocation;
      
      
      
          // 返回值: 引用
          HEAP[@(result.hash)] = result;
          methodResult(@(result.hash));
      },
      
      @"AMapTransit::get_cost": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapTransit::get_cost");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapTransit * ref = (AMapTransit *) HEAP[@(refId)];
      
          // 开始调用
          CGFloat result = ref.cost;
      
      
      
          // 返回值: Value
          methodResult(@(result));
      },
      
      @"AMapTransit::get_duration": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapTransit::get_duration");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapTransit * ref = (AMapTransit *) HEAP[@(refId)];
      
          // 开始调用
          NSInteger result = ref.duration;
      
      
      
          // 返回值: Value
          methodResult(@(result));
      },
      
      @"AMapTransit::get_nightflag": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapTransit::get_nightflag");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapTransit * ref = (AMapTransit *) HEAP[@(refId)];
      
          // 开始调用
          BOOL result = ref.nightflag;
      
      
      
          // 返回值: Value
          methodResult(@(result));
      },
      
      @"AMapTransit::get_walkingDistance": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapTransit::get_walkingDistance");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapTransit * ref = (AMapTransit *) HEAP[@(refId)];
      
          // 开始调用
          NSInteger result = ref.walkingDistance;
      
      
      
          // 返回值: Value
          methodResult(@(result));
      },
      
      @"AMapTransit::get_segments": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapTransit::get_segments");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapTransit * ref = (AMapTransit *) HEAP[@(refId)];
      
          // 开始调用
          NSArray<AMapSegment*>* result = ref.segments;
      
      
      
          // 返回值: 列表
          NSMutableArray* refIdList = [NSMutableArray array];
          for (int i = 0; i < result.count; i++) {
              NSObject* object = [result objectAtIndex:i];
              [refIdList addObject: @(object.hash)];
              HEAP[@([object hash])] = object;
          }
      
          methodResult(refIdList);
      },
      
      @"AMapTransit::get_distance": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapTransit::get_distance");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapTransit * ref = (AMapTransit *) HEAP[@(refId)];
      
          // 开始调用
          NSInteger result = ref.distance;
      
      
      
          // 返回值: Value
          methodResult(@(result));
      },
      
      @"AMapRoute::get_origin": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapRoute::get_origin");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapRoute * ref = (AMapRoute *) HEAP[@(refId)];
      
          // 开始调用
          AMapGeoPoint* result = ref.origin;
      
      
      
          // 返回值: 引用
          HEAP[@(result.hash)] = result;
          methodResult(@(result.hash));
      },
      
      @"AMapRoute::get_destination": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapRoute::get_destination");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapRoute * ref = (AMapRoute *) HEAP[@(refId)];
      
          // 开始调用
          AMapGeoPoint* result = ref.destination;
      
      
      
          // 返回值: 引用
          HEAP[@(result.hash)] = result;
          methodResult(@(result.hash));
      },
      
      @"AMapRoute::get_taxiCost": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapRoute::get_taxiCost");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapRoute * ref = (AMapRoute *) HEAP[@(refId)];
      
          // 开始调用
          CGFloat result = ref.taxiCost;
      
      
      
          // 返回值: Value
          methodResult(@(result));
      },
      
      @"AMapRoute::get_paths": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapRoute::get_paths");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapRoute * ref = (AMapRoute *) HEAP[@(refId)];
      
          // 开始调用
          NSArray<AMapPath*>* result = ref.paths;
      
      
      
          // 返回值: 列表
          NSMutableArray* refIdList = [NSMutableArray array];
          for (int i = 0; i < result.count; i++) {
              NSObject* object = [result objectAtIndex:i];
              [refIdList addObject: @(object.hash)];
              HEAP[@([object hash])] = object;
          }
      
          methodResult(refIdList);
      },
      
      @"AMapRoute::get_transits": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapRoute::get_transits");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapRoute * ref = (AMapRoute *) HEAP[@(refId)];
      
          // 开始调用
          NSArray<AMapTransit*>* result = ref.transits;
      
      
      
          // 返回值: 列表
          NSMutableArray* refIdList = [NSMutableArray array];
          for (int i = 0; i < result.count; i++) {
              NSObject* object = [result objectAtIndex:i];
              [refIdList addObject: @(object.hash)];
              HEAP[@([object hash])] = object;
          }
      
          methodResult(refIdList);
      },
      
      @"AMapDistanceResult::get_originID": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapDistanceResult::get_originID");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapDistanceResult * ref = (AMapDistanceResult *) HEAP[@(refId)];
      
          // 开始调用
          NSInteger result = ref.originID;
      
      
      
          // 返回值: Value
          methodResult(@(result));
      },
      
      @"AMapDistanceResult::get_destID": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapDistanceResult::get_destID");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapDistanceResult * ref = (AMapDistanceResult *) HEAP[@(refId)];
      
          // 开始调用
          NSInteger result = ref.destID;
      
      
      
          // 返回值: Value
          methodResult(@(result));
      },
      
      @"AMapDistanceResult::get_distance": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapDistanceResult::get_distance");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapDistanceResult * ref = (AMapDistanceResult *) HEAP[@(refId)];
      
          // 开始调用
          NSInteger result = ref.distance;
      
      
      
          // 返回值: Value
          methodResult(@(result));
      },
      
      @"AMapDistanceResult::get_duration": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapDistanceResult::get_duration");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapDistanceResult * ref = (AMapDistanceResult *) HEAP[@(refId)];
      
          // 开始调用
          NSInteger result = ref.duration;
      
      
      
          // 返回值: Value
          methodResult(@(result));
      },
      
      @"AMapDistanceResult::get_info": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapDistanceResult::get_info");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapDistanceResult * ref = (AMapDistanceResult *) HEAP[@(refId)];
      
          // 开始调用
          NSString* result = ref.info;
      
      
      
          // 返回值: jsonable
          methodResult(result);
      },
      
      @"AMapDistanceResult::get_code": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapDistanceResult::get_code");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapDistanceResult * ref = (AMapDistanceResult *) HEAP[@(refId)];
      
          // 开始调用
          NSInteger result = ref.code;
      
      
      
          // 返回值: Value
          methodResult(@(result));
      },
      
      @"AMapLocalWeatherLive::get_adcode": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapLocalWeatherLive::get_adcode");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapLocalWeatherLive * ref = (AMapLocalWeatherLive *) HEAP[@(refId)];
      
          // 开始调用
          NSString* result = ref.adcode;
      
      
      
          // 返回值: jsonable
          methodResult(result);
      },
      
      @"AMapLocalWeatherLive::get_province": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapLocalWeatherLive::get_province");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapLocalWeatherLive * ref = (AMapLocalWeatherLive *) HEAP[@(refId)];
      
          // 开始调用
          NSString* result = ref.province;
      
      
      
          // 返回值: jsonable
          methodResult(result);
      },
      
      @"AMapLocalWeatherLive::get_city": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapLocalWeatherLive::get_city");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapLocalWeatherLive * ref = (AMapLocalWeatherLive *) HEAP[@(refId)];
      
          // 开始调用
          NSString* result = ref.city;
      
      
      
          // 返回值: jsonable
          methodResult(result);
      },
      
      @"AMapLocalWeatherLive::get_weather": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapLocalWeatherLive::get_weather");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapLocalWeatherLive * ref = (AMapLocalWeatherLive *) HEAP[@(refId)];
      
          // 开始调用
          NSString* result = ref.weather;
      
      
      
          // 返回值: jsonable
          methodResult(result);
      },
      
      @"AMapLocalWeatherLive::get_temperature": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapLocalWeatherLive::get_temperature");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapLocalWeatherLive * ref = (AMapLocalWeatherLive *) HEAP[@(refId)];
      
          // 开始调用
          NSString* result = ref.temperature;
      
      
      
          // 返回值: jsonable
          methodResult(result);
      },
      
      @"AMapLocalWeatherLive::get_windDirection": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapLocalWeatherLive::get_windDirection");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapLocalWeatherLive * ref = (AMapLocalWeatherLive *) HEAP[@(refId)];
      
          // 开始调用
          NSString* result = ref.windDirection;
      
      
      
          // 返回值: jsonable
          methodResult(result);
      },
      
      @"AMapLocalWeatherLive::get_windPower": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapLocalWeatherLive::get_windPower");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapLocalWeatherLive * ref = (AMapLocalWeatherLive *) HEAP[@(refId)];
      
          // 开始调用
          NSString* result = ref.windPower;
      
      
      
          // 返回值: jsonable
          methodResult(result);
      },
      
      @"AMapLocalWeatherLive::get_humidity": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapLocalWeatherLive::get_humidity");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapLocalWeatherLive * ref = (AMapLocalWeatherLive *) HEAP[@(refId)];
      
          // 开始调用
          NSString* result = ref.humidity;
      
      
      
          // 返回值: jsonable
          methodResult(result);
      },
      
      @"AMapLocalWeatherLive::get_reportTime": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapLocalWeatherLive::get_reportTime");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapLocalWeatherLive * ref = (AMapLocalWeatherLive *) HEAP[@(refId)];
      
          // 开始调用
          NSString* result = ref.reportTime;
      
      
      
          // 返回值: jsonable
          methodResult(result);
      },
      
      @"AMapLocalDayWeatherForecast::get_date": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapLocalDayWeatherForecast::get_date");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapLocalDayWeatherForecast * ref = (AMapLocalDayWeatherForecast *) HEAP[@(refId)];
      
          // 开始调用
          NSString* result = ref.date;
      
      
      
          // 返回值: jsonable
          methodResult(result);
      },
      
      @"AMapLocalDayWeatherForecast::get_week": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapLocalDayWeatherForecast::get_week");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapLocalDayWeatherForecast * ref = (AMapLocalDayWeatherForecast *) HEAP[@(refId)];
      
          // 开始调用
          NSString* result = ref.week;
      
      
      
          // 返回值: jsonable
          methodResult(result);
      },
      
      @"AMapLocalDayWeatherForecast::get_dayWeather": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapLocalDayWeatherForecast::get_dayWeather");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapLocalDayWeatherForecast * ref = (AMapLocalDayWeatherForecast *) HEAP[@(refId)];
      
          // 开始调用
          NSString* result = ref.dayWeather;
      
      
      
          // 返回值: jsonable
          methodResult(result);
      },
      
      @"AMapLocalDayWeatherForecast::get_nightWeather": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapLocalDayWeatherForecast::get_nightWeather");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapLocalDayWeatherForecast * ref = (AMapLocalDayWeatherForecast *) HEAP[@(refId)];
      
          // 开始调用
          NSString* result = ref.nightWeather;
      
      
      
          // 返回值: jsonable
          methodResult(result);
      },
      
      @"AMapLocalDayWeatherForecast::get_dayTemp": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapLocalDayWeatherForecast::get_dayTemp");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapLocalDayWeatherForecast * ref = (AMapLocalDayWeatherForecast *) HEAP[@(refId)];
      
          // 开始调用
          NSString* result = ref.dayTemp;
      
      
      
          // 返回值: jsonable
          methodResult(result);
      },
      
      @"AMapLocalDayWeatherForecast::get_nightTemp": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapLocalDayWeatherForecast::get_nightTemp");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapLocalDayWeatherForecast * ref = (AMapLocalDayWeatherForecast *) HEAP[@(refId)];
      
          // 开始调用
          NSString* result = ref.nightTemp;
      
      
      
          // 返回值: jsonable
          methodResult(result);
      },
      
      @"AMapLocalDayWeatherForecast::get_dayWind": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapLocalDayWeatherForecast::get_dayWind");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapLocalDayWeatherForecast * ref = (AMapLocalDayWeatherForecast *) HEAP[@(refId)];
      
          // 开始调用
          NSString* result = ref.dayWind;
      
      
      
          // 返回值: jsonable
          methodResult(result);
      },
      
      @"AMapLocalDayWeatherForecast::get_nightWind": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapLocalDayWeatherForecast::get_nightWind");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapLocalDayWeatherForecast * ref = (AMapLocalDayWeatherForecast *) HEAP[@(refId)];
      
          // 开始调用
          NSString* result = ref.nightWind;
      
      
      
          // 返回值: jsonable
          methodResult(result);
      },
      
      @"AMapLocalDayWeatherForecast::get_dayPower": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapLocalDayWeatherForecast::get_dayPower");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapLocalDayWeatherForecast * ref = (AMapLocalDayWeatherForecast *) HEAP[@(refId)];
      
          // 开始调用
          NSString* result = ref.dayPower;
      
      
      
          // 返回值: jsonable
          methodResult(result);
      },
      
      @"AMapLocalDayWeatherForecast::get_nightPower": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapLocalDayWeatherForecast::get_nightPower");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapLocalDayWeatherForecast * ref = (AMapLocalDayWeatherForecast *) HEAP[@(refId)];
      
          // 开始调用
          NSString* result = ref.nightPower;
      
      
      
          // 返回值: jsonable
          methodResult(result);
      },
      
      @"AMapLocalWeatherForecast::get_adcode": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapLocalWeatherForecast::get_adcode");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapLocalWeatherForecast * ref = (AMapLocalWeatherForecast *) HEAP[@(refId)];
      
          // 开始调用
          NSString* result = ref.adcode;
      
      
      
          // 返回值: jsonable
          methodResult(result);
      },
      
      @"AMapLocalWeatherForecast::get_province": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapLocalWeatherForecast::get_province");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapLocalWeatherForecast * ref = (AMapLocalWeatherForecast *) HEAP[@(refId)];
      
          // 开始调用
          NSString* result = ref.province;
      
      
      
          // 返回值: jsonable
          methodResult(result);
      },
      
      @"AMapLocalWeatherForecast::get_city": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapLocalWeatherForecast::get_city");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapLocalWeatherForecast * ref = (AMapLocalWeatherForecast *) HEAP[@(refId)];
      
          // 开始调用
          NSString* result = ref.city;
      
      
      
          // 返回值: jsonable
          methodResult(result);
      },
      
      @"AMapLocalWeatherForecast::get_reportTime": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapLocalWeatherForecast::get_reportTime");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapLocalWeatherForecast * ref = (AMapLocalWeatherForecast *) HEAP[@(refId)];
      
          // 开始调用
          NSString* result = ref.reportTime;
      
      
      
          // 返回值: jsonable
          methodResult(result);
      },
      
      @"AMapLocalWeatherForecast::get_casts": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapLocalWeatherForecast::get_casts");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapLocalWeatherForecast * ref = (AMapLocalWeatherForecast *) HEAP[@(refId)];
      
          // 开始调用
          NSArray<AMapLocalDayWeatherForecast*>* result = ref.casts;
      
      
      
          // 返回值: 列表
          NSMutableArray* refIdList = [NSMutableArray array];
          for (int i = 0; i < result.count; i++) {
              NSObject* object = [result objectAtIndex:i];
              [refIdList addObject: @(object.hash)];
              HEAP[@([object hash])] = object;
          }
      
          methodResult(refIdList);
      },
      
      @"AMapNearbyUserInfo::get_userID": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapNearbyUserInfo::get_userID");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapNearbyUserInfo * ref = (AMapNearbyUserInfo *) HEAP[@(refId)];
      
          // 开始调用
          NSString* result = ref.userID;
      
      
      
          // 返回值: jsonable
          methodResult(result);
      },
      
      @"AMapNearbyUserInfo::get_location": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapNearbyUserInfo::get_location");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapNearbyUserInfo * ref = (AMapNearbyUserInfo *) HEAP[@(refId)];
      
          // 开始调用
          AMapGeoPoint* result = ref.location;
      
      
      
          // 返回值: 引用
          HEAP[@(result.hash)] = result;
          methodResult(@(result.hash));
      },
      
      @"AMapNearbyUserInfo::get_distance": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapNearbyUserInfo::get_distance");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapNearbyUserInfo * ref = (AMapNearbyUserInfo *) HEAP[@(refId)];
      
          // 开始调用
          CGFloat result = ref.distance;
      
      
      
          // 返回值: Value
          methodResult(@(result));
      },
      
      @"AMapTrafficEvaluation::get_evaluationDescription": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapTrafficEvaluation::get_evaluationDescription");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapTrafficEvaluation * ref = (AMapTrafficEvaluation *) HEAP[@(refId)];
      
          // 开始调用
          NSString* result = ref.evaluationDescription;
      
      
      
          // 返回值: jsonable
          methodResult(result);
      },
      
      @"AMapTrafficEvaluation::get_status": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapTrafficEvaluation::get_status");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapTrafficEvaluation * ref = (AMapTrafficEvaluation *) HEAP[@(refId)];
      
          // 开始调用
          NSInteger result = ref.status;
      
      
      
          // 返回值: Value
          methodResult(@(result));
      },
      
      @"AMapTrafficEvaluation::get_expedite": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapTrafficEvaluation::get_expedite");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapTrafficEvaluation * ref = (AMapTrafficEvaluation *) HEAP[@(refId)];
      
          // 开始调用
          NSString* result = ref.expedite;
      
      
      
          // 返回值: jsonable
          methodResult(result);
      },
      
      @"AMapTrafficEvaluation::get_congested": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapTrafficEvaluation::get_congested");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapTrafficEvaluation * ref = (AMapTrafficEvaluation *) HEAP[@(refId)];
      
          // 开始调用
          NSString* result = ref.congested;
      
      
      
          // 返回值: jsonable
          methodResult(result);
      },
      
      @"AMapTrafficEvaluation::get_blocked": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapTrafficEvaluation::get_blocked");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapTrafficEvaluation * ref = (AMapTrafficEvaluation *) HEAP[@(refId)];
      
          // 开始调用
          NSString* result = ref.blocked;
      
      
      
          // 返回值: jsonable
          methodResult(result);
      },
      
      @"AMapTrafficEvaluation::get_unknown": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapTrafficEvaluation::get_unknown");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapTrafficEvaluation * ref = (AMapTrafficEvaluation *) HEAP[@(refId)];
      
          // 开始调用
          NSString* result = ref.unknown;
      
      
      
          // 返回值: jsonable
          methodResult(result);
      },
      
      @"AMapTrafficRoad::get_name": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapTrafficRoad::get_name");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapTrafficRoad * ref = (AMapTrafficRoad *) HEAP[@(refId)];
      
          // 开始调用
          NSString* result = ref.name;
      
      
      
          // 返回值: jsonable
          methodResult(result);
      },
      
      @"AMapTrafficRoad::get_status": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapTrafficRoad::get_status");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapTrafficRoad * ref = (AMapTrafficRoad *) HEAP[@(refId)];
      
          // 开始调用
          NSInteger result = ref.status;
      
      
      
          // 返回值: Value
          methodResult(@(result));
      },
      
      @"AMapTrafficRoad::get_direction": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapTrafficRoad::get_direction");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapTrafficRoad * ref = (AMapTrafficRoad *) HEAP[@(refId)];
      
          // 开始调用
          NSString* result = ref.direction;
      
      
      
          // 返回值: jsonable
          methodResult(result);
      },
      
      @"AMapTrafficRoad::get_angle": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapTrafficRoad::get_angle");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapTrafficRoad * ref = (AMapTrafficRoad *) HEAP[@(refId)];
      
          // 开始调用
          float result = ref.angle;
      
      
      
          // 返回值: Value
          methodResult(@(result));
      },
      
      @"AMapTrafficRoad::get_speed": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapTrafficRoad::get_speed");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapTrafficRoad * ref = (AMapTrafficRoad *) HEAP[@(refId)];
      
          // 开始调用
          float result = ref.speed;
      
      
      
          // 返回值: Value
          methodResult(@(result));
      },
      
      @"AMapTrafficRoad::get_polyline": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapTrafficRoad::get_polyline");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapTrafficRoad * ref = (AMapTrafficRoad *) HEAP[@(refId)];
      
          // 开始调用
          NSString* result = ref.polyline;
      
      
      
          // 返回值: jsonable
          methodResult(result);
      },
      
      @"AMapTrafficInfo::get_statusDescription": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapTrafficInfo::get_statusDescription");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapTrafficInfo * ref = (AMapTrafficInfo *) HEAP[@(refId)];
      
          // 开始调用
          NSString* result = ref.statusDescription;
      
      
      
          // 返回值: jsonable
          methodResult(result);
      },
      
      @"AMapTrafficInfo::get_evaluation": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapTrafficInfo::get_evaluation");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapTrafficInfo * ref = (AMapTrafficInfo *) HEAP[@(refId)];
      
          // 开始调用
          AMapTrafficEvaluation* result = ref.evaluation;
      
      
      
          // 返回值: 引用
          HEAP[@(result.hash)] = result;
          methodResult(@(result.hash));
      },
      
      @"AMapTrafficInfo::get_roads": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapTrafficInfo::get_roads");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapTrafficInfo * ref = (AMapTrafficInfo *) HEAP[@(refId)];
      
          // 开始调用
          NSArray<AMapTrafficRoad*>* result = ref.roads;
      
      
      
          // 返回值: 列表
          NSMutableArray* refIdList = [NSMutableArray array];
          for (int i = 0; i < result.count; i++) {
              NSObject* object = [result objectAtIndex:i];
              [refIdList addObject: @(object.hash)];
              HEAP[@([object hash])] = object;
          }
      
          methodResult(refIdList);
      },
      
      @"AMapCloudImage::get_uid": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapCloudImage::get_uid");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapCloudImage * ref = (AMapCloudImage *) HEAP[@(refId)];
      
          // 开始调用
          NSString* result = ref.uid;
      
      
      
          // 返回值: jsonable
          methodResult(result);
      },
      
      @"AMapCloudImage::get_preurl": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapCloudImage::get_preurl");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapCloudImage * ref = (AMapCloudImage *) HEAP[@(refId)];
      
          // 开始调用
          NSString* result = ref.preurl;
      
      
      
          // 返回值: jsonable
          methodResult(result);
      },
      
      @"AMapCloudImage::get_url": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapCloudImage::get_url");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapCloudImage * ref = (AMapCloudImage *) HEAP[@(refId)];
      
          // 开始调用
          NSString* result = ref.url;
      
      
      
          // 返回值: jsonable
          methodResult(result);
      },
      
      @"AMapCloudPOI::get_uid": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapCloudPOI::get_uid");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapCloudPOI * ref = (AMapCloudPOI *) HEAP[@(refId)];
      
          // 开始调用
          NSInteger result = ref.uid;
      
      
      
          // 返回值: Value
          methodResult(@(result));
      },
      
      @"AMapCloudPOI::get_name": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapCloudPOI::get_name");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapCloudPOI * ref = (AMapCloudPOI *) HEAP[@(refId)];
      
          // 开始调用
          NSString* result = ref.name;
      
      
      
          // 返回值: jsonable
          methodResult(result);
      },
      
      @"AMapCloudPOI::get_location": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapCloudPOI::get_location");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapCloudPOI * ref = (AMapCloudPOI *) HEAP[@(refId)];
      
          // 开始调用
          AMapGeoPoint* result = ref.location;
      
      
      
          // 返回值: 引用
          HEAP[@(result.hash)] = result;
          methodResult(@(result.hash));
      },
      
      @"AMapCloudPOI::get_address": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapCloudPOI::get_address");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapCloudPOI * ref = (AMapCloudPOI *) HEAP[@(refId)];
      
          // 开始调用
          NSString* result = ref.address;
      
      
      
          // 返回值: jsonable
          methodResult(result);
      },
      
      @"AMapCloudPOI::get_createTime": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapCloudPOI::get_createTime");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapCloudPOI * ref = (AMapCloudPOI *) HEAP[@(refId)];
      
          // 开始调用
          NSString* result = ref.createTime;
      
      
      
          // 返回值: jsonable
          methodResult(result);
      },
      
      @"AMapCloudPOI::get_updateTime": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapCloudPOI::get_updateTime");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapCloudPOI * ref = (AMapCloudPOI *) HEAP[@(refId)];
      
          // 开始调用
          NSString* result = ref.updateTime;
      
      
      
          // 返回值: jsonable
          methodResult(result);
      },
      
      @"AMapCloudPOI::get_distance": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapCloudPOI::get_distance");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapCloudPOI * ref = (AMapCloudPOI *) HEAP[@(refId)];
      
          // 开始调用
          NSInteger result = ref.distance;
      
      
      
          // 返回值: Value
          methodResult(@(result));
      },
      
      @"AMapCloudPOI::get_images": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapCloudPOI::get_images");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapCloudPOI * ref = (AMapCloudPOI *) HEAP[@(refId)];
      
          // 开始调用
          NSArray<AMapCloudImage*>* result = ref.images;
      
      
      
          // 返回值: 列表
          NSMutableArray* refIdList = [NSMutableArray array];
          for (int i = 0; i < result.count; i++) {
              NSObject* object = [result objectAtIndex:i];
              [refIdList addObject: @(object.hash)];
              HEAP[@([object hash])] = object;
          }
      
          methodResult(refIdList);
      },
      
      @"AMapNearbyUploadInfo::get_userID": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapNearbyUploadInfo::get_userID");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapNearbyUploadInfo * ref = (AMapNearbyUploadInfo *) HEAP[@(refId)];
      
          // 开始调用
          NSString* result = ref.userID;
      
      
      
          // 返回值: jsonable
          methodResult(result);
      },
      
      @"AMapNearbyUploadInfo::get_coordinateType": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapNearbyUploadInfo::get_coordinateType");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapNearbyUploadInfo * ref = (AMapNearbyUploadInfo *) HEAP[@(refId)];
      
          // 开始调用
          AMapSearchCoordinateType result = ref.coordinateType;
      
      
      
          // 返回值: Value
          methodResult(@(result));
      },
      
      @"AMapNearbyUploadInfo::get_coordinate": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapNearbyUploadInfo::get_coordinate");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapNearbyUploadInfo * ref = (AMapNearbyUploadInfo *) HEAP[@(refId)];
      
          // 开始调用
          CLLocationCoordinate2D result = ref.coordinate;
      
          NSLog(@"AMapNearbyUploadInfo::get_coordinate:结构体getter暂时不支持");
      
          // 返回值: 结构体
          // NSValue* resultValue = [NSValue value:&result withObjCType:@encode(CLLocationCoordinate2D)];
          // HEAP[@(resultValue.hash)] = resultValue;
          //
          // methodResult(@(resultValue.hash));
      
          methodResult(nil/* 结构体getter暂时不支持 */);
      },
      
      @"AMapSearchAPI::get_timeout": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapSearchAPI::get_timeout");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapSearchAPI * ref = (AMapSearchAPI *) HEAP[@(refId)];
      
          // 开始调用
          NSInteger result = ref.timeout;
      
      
      
          // 返回值: Value
          methodResult(@(result));
      },
      
      @"AMapSearchAPI::get_language": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapSearchAPI::get_language");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapSearchAPI * ref = (AMapSearchAPI *) HEAP[@(refId)];
      
          // 开始调用
          AMapSearchLanguage result = ref.language;
      
      
      
          // 返回值: Value
          methodResult(@(result));
      },
      
      @"AMapNaviConfig::set_appScheme": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapNaviConfig::set_appScheme");
      
          // 参数
          // jsonable参数
          NSString * appScheme = (NSString *) args[@"appScheme"];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapNaviConfig * ref = (AMapNaviConfig *) HEAP[@(refId)];
      
          ref.appScheme = appScheme;
          methodResult(@"success");
      },
      
      @"AMapNaviConfig::set_appName": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapNaviConfig::set_appName");
      
          // 参数
          // jsonable参数
          NSString * appName = (NSString *) args[@"appName"];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapNaviConfig * ref = (AMapNaviConfig *) HEAP[@(refId)];
      
          ref.appName = appName;
          methodResult(@"success");
      },
      
      @"AMapNaviConfig::set_destination": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapNaviConfig::set_destination");
      
          // 参数
          // 结构体参数
          NSValue* destinationValue = (NSValue*) HEAP[@([args[@"destination"] integerValue])];
          CLLocationCoordinate2D destination;
          [destinationValue getValue:&destination];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapNaviConfig * ref = (AMapNaviConfig *) HEAP[@(refId)];
      
          ref.destination = destination;
          methodResult(@"success");
      },
      
      @"AMapNaviConfig::set_strategy": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapNaviConfig::set_strategy");
      
          // 参数
          // 枚举参数
          AMapDrivingStrategy strategy = (AMapDrivingStrategy) [args[@"strategy"] integerValue];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapNaviConfig * ref = (AMapNaviConfig *) HEAP[@(refId)];
      
          ref.strategy = strategy;
          methodResult(@"success");
      },
      
      @"AMapRouteConfig::set_appScheme": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapRouteConfig::set_appScheme");
      
          // 参数
          // jsonable参数
          NSString * appScheme = (NSString *) args[@"appScheme"];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapRouteConfig * ref = (AMapRouteConfig *) HEAP[@(refId)];
      
          ref.appScheme = appScheme;
          methodResult(@"success");
      },
      
      @"AMapRouteConfig::set_appName": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapRouteConfig::set_appName");
      
          // 参数
          // jsonable参数
          NSString * appName = (NSString *) args[@"appName"];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapRouteConfig * ref = (AMapRouteConfig *) HEAP[@(refId)];
      
          ref.appName = appName;
          methodResult(@"success");
      },
      
      @"AMapRouteConfig::set_startCoordinate": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapRouteConfig::set_startCoordinate");
      
          // 参数
          // 结构体参数
          NSValue* startCoordinateValue = (NSValue*) HEAP[@([args[@"startCoordinate"] integerValue])];
          CLLocationCoordinate2D startCoordinate;
          [startCoordinateValue getValue:&startCoordinate];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapRouteConfig * ref = (AMapRouteConfig *) HEAP[@(refId)];
      
          ref.startCoordinate = startCoordinate;
          methodResult(@"success");
      },
      
      @"AMapRouteConfig::set_destinationCoordinate": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapRouteConfig::set_destinationCoordinate");
      
          // 参数
          // 结构体参数
          NSValue* destinationCoordinateValue = (NSValue*) HEAP[@([args[@"destinationCoordinate"] integerValue])];
          CLLocationCoordinate2D destinationCoordinate;
          [destinationCoordinateValue getValue:&destinationCoordinate];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapRouteConfig * ref = (AMapRouteConfig *) HEAP[@(refId)];
      
          ref.destinationCoordinate = destinationCoordinate;
          methodResult(@"success");
      },
      
      @"AMapRouteConfig::set_drivingStrategy": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapRouteConfig::set_drivingStrategy");
      
          // 参数
          // 枚举参数
          AMapDrivingStrategy drivingStrategy = (AMapDrivingStrategy) [args[@"drivingStrategy"] integerValue];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapRouteConfig * ref = (AMapRouteConfig *) HEAP[@(refId)];
      
          ref.drivingStrategy = drivingStrategy;
          methodResult(@"success");
      },
      
      @"AMapRouteConfig::set_transitStrategy": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapRouteConfig::set_transitStrategy");
      
          // 参数
          // 枚举参数
          AMapTransitStrategy transitStrategy = (AMapTransitStrategy) [args[@"transitStrategy"] integerValue];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapRouteConfig * ref = (AMapRouteConfig *) HEAP[@(refId)];
      
          ref.transitStrategy = transitStrategy;
          methodResult(@"success");
      },
      
      @"AMapRouteConfig::set_routeType": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapRouteConfig::set_routeType");
      
          // 参数
          // 枚举参数
          AMapRouteSearchType routeType = (AMapRouteSearchType) [args[@"routeType"] integerValue];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapRouteConfig * ref = (AMapRouteConfig *) HEAP[@(refId)];
      
          ref.routeType = routeType;
          methodResult(@"success");
      },
      
      @"AMapPOIConfig::set_appScheme": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapPOIConfig::set_appScheme");
      
          // 参数
          // jsonable参数
          NSString * appScheme = (NSString *) args[@"appScheme"];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapPOIConfig * ref = (AMapPOIConfig *) HEAP[@(refId)];
      
          ref.appScheme = appScheme;
          methodResult(@"success");
      },
      
      @"AMapPOIConfig::set_appName": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapPOIConfig::set_appName");
      
          // 参数
          // jsonable参数
          NSString * appName = (NSString *) args[@"appName"];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapPOIConfig * ref = (AMapPOIConfig *) HEAP[@(refId)];
      
          ref.appName = appName;
          methodResult(@"success");
      },
      
      @"AMapPOIConfig::set_keywords": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapPOIConfig::set_keywords");
      
          // 参数
          // jsonable参数
          NSString * keywords = (NSString *) args[@"keywords"];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapPOIConfig * ref = (AMapPOIConfig *) HEAP[@(refId)];
      
          ref.keywords = keywords;
          methodResult(@"success");
      },
      
      @"AMapPOIConfig::set_leftTopCoordinate": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapPOIConfig::set_leftTopCoordinate");
      
          // 参数
          // 结构体参数
          NSValue* leftTopCoordinateValue = (NSValue*) HEAP[@([args[@"leftTopCoordinate"] integerValue])];
          CLLocationCoordinate2D leftTopCoordinate;
          [leftTopCoordinateValue getValue:&leftTopCoordinate];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapPOIConfig * ref = (AMapPOIConfig *) HEAP[@(refId)];
      
          ref.leftTopCoordinate = leftTopCoordinate;
          methodResult(@"success");
      },
      
      @"AMapPOIConfig::set_rightBottomCoordinate": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapPOIConfig::set_rightBottomCoordinate");
      
          // 参数
          // 结构体参数
          NSValue* rightBottomCoordinateValue = (NSValue*) HEAP[@([args[@"rightBottomCoordinate"] integerValue])];
          CLLocationCoordinate2D rightBottomCoordinate;
          [rightBottomCoordinateValue getValue:&rightBottomCoordinate];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapPOIConfig * ref = (AMapPOIConfig *) HEAP[@(refId)];
      
          ref.rightBottomCoordinate = rightBottomCoordinate;
          methodResult(@"success");
      },
      
      @"AMapServices::set_apiKey": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapServices::set_apiKey");
      
          // 参数
          // jsonable参数
          NSString * apiKey = (NSString *) args[@"apiKey"];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapServices * ref = (AMapServices *) HEAP[@(refId)];
      
          ref.apiKey = apiKey;
          methodResult(@"success");
      },
      
      @"AMapServices::set_enableHTTPS": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapServices::set_enableHTTPS");
      
          // 参数
          // jsonable参数
          BOOL enableHTTPS = [args[@"enableHTTPS"] boolValue];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapServices * ref = (AMapServices *) HEAP[@(refId)];
      
          ref.enableHTTPS = enableHTTPS;
          methodResult(@"success");
      },
      
      @"AMapServices::set_crashReportEnabled": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapServices::set_crashReportEnabled");
      
          // 参数
          // jsonable参数
          BOOL crashReportEnabled = [args[@"crashReportEnabled"] boolValue];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapServices * ref = (AMapServices *) HEAP[@(refId)];
      
          ref.crashReportEnabled = crashReportEnabled;
          methodResult(@"success");
      },
      
      @"AMapPOISearchBaseRequest::set_types": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapPOISearchBaseRequest::set_types");
      
          // 参数
          // jsonable参数
          NSString * types = (NSString *) args[@"types"];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapPOISearchBaseRequest * ref = (AMapPOISearchBaseRequest *) HEAP[@(refId)];
      
          ref.types = types;
          methodResult(@"success");
      },
      
      @"AMapPOISearchBaseRequest::set_sortrule": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapPOISearchBaseRequest::set_sortrule");
      
          // 参数
          // jsonable参数
          NSInteger sortrule = [args[@"sortrule"] integerValue];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapPOISearchBaseRequest * ref = (AMapPOISearchBaseRequest *) HEAP[@(refId)];
      
          ref.sortrule = sortrule;
          methodResult(@"success");
      },
      
      @"AMapPOISearchBaseRequest::set_offset": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapPOISearchBaseRequest::set_offset");
      
          // 参数
          // jsonable参数
          NSInteger offset = [args[@"offset"] integerValue];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapPOISearchBaseRequest * ref = (AMapPOISearchBaseRequest *) HEAP[@(refId)];
      
          ref.offset = offset;
          methodResult(@"success");
      },
      
      @"AMapPOISearchBaseRequest::set_page": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapPOISearchBaseRequest::set_page");
      
          // 参数
          // jsonable参数
          NSInteger page = [args[@"page"] integerValue];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapPOISearchBaseRequest * ref = (AMapPOISearchBaseRequest *) HEAP[@(refId)];
      
          ref.page = page;
          methodResult(@"success");
      },
      
      @"AMapPOISearchBaseRequest::set_building": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapPOISearchBaseRequest::set_building");
      
          // 参数
          // jsonable参数
          NSString * building = (NSString *) args[@"building"];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapPOISearchBaseRequest * ref = (AMapPOISearchBaseRequest *) HEAP[@(refId)];
      
          ref.building = building;
          methodResult(@"success");
      },
      
      @"AMapPOISearchBaseRequest::set_requireExtension": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapPOISearchBaseRequest::set_requireExtension");
      
          // 参数
          // jsonable参数
          BOOL requireExtension = [args[@"requireExtension"] boolValue];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapPOISearchBaseRequest * ref = (AMapPOISearchBaseRequest *) HEAP[@(refId)];
      
          ref.requireExtension = requireExtension;
          methodResult(@"success");
      },
      
      @"AMapPOISearchBaseRequest::set_requireSubPOIs": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapPOISearchBaseRequest::set_requireSubPOIs");
      
          // 参数
          // jsonable参数
          BOOL requireSubPOIs = [args[@"requireSubPOIs"] boolValue];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapPOISearchBaseRequest * ref = (AMapPOISearchBaseRequest *) HEAP[@(refId)];
      
          ref.requireSubPOIs = requireSubPOIs;
          methodResult(@"success");
      },
      
      @"AMapPOIIDSearchRequest::set_uid": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapPOIIDSearchRequest::set_uid");
      
          // 参数
          // jsonable参数
          NSString * uid = (NSString *) args[@"uid"];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapPOIIDSearchRequest * ref = (AMapPOIIDSearchRequest *) HEAP[@(refId)];
      
          ref.uid = uid;
          methodResult(@"success");
      },
      
      @"AMapPOIKeywordsSearchRequest::set_keywords": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapPOIKeywordsSearchRequest::set_keywords");
      
          // 参数
          // jsonable参数
          NSString * keywords = (NSString *) args[@"keywords"];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapPOIKeywordsSearchRequest * ref = (AMapPOIKeywordsSearchRequest *) HEAP[@(refId)];
      
          ref.keywords = keywords;
          methodResult(@"success");
      },
      
      @"AMapPOIKeywordsSearchRequest::set_city": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapPOIKeywordsSearchRequest::set_city");
      
          // 参数
          // jsonable参数
          NSString * city = (NSString *) args[@"city"];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapPOIKeywordsSearchRequest * ref = (AMapPOIKeywordsSearchRequest *) HEAP[@(refId)];
      
          ref.city = city;
          methodResult(@"success");
      },
      
      @"AMapPOIKeywordsSearchRequest::set_cityLimit": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapPOIKeywordsSearchRequest::set_cityLimit");
      
          // 参数
          // jsonable参数
          BOOL cityLimit = [args[@"cityLimit"] boolValue];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapPOIKeywordsSearchRequest * ref = (AMapPOIKeywordsSearchRequest *) HEAP[@(refId)];
      
          ref.cityLimit = cityLimit;
          methodResult(@"success");
      },
      
      @"AMapPOIKeywordsSearchRequest::set_location": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapPOIKeywordsSearchRequest::set_location");
      
          // 参数
          // 引用参数
          AMapGeoPoint * location = (AMapGeoPoint *) HEAP[@([args[@"location"] integerValue])];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapPOIKeywordsSearchRequest * ref = (AMapPOIKeywordsSearchRequest *) HEAP[@(refId)];
      
          ref.location = location;
          methodResult(@"success");
      },
      
      @"AMapPOIAroundSearchRequest::set_keywords": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapPOIAroundSearchRequest::set_keywords");
      
          // 参数
          // jsonable参数
          NSString * keywords = (NSString *) args[@"keywords"];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapPOIAroundSearchRequest * ref = (AMapPOIAroundSearchRequest *) HEAP[@(refId)];
      
          ref.keywords = keywords;
          methodResult(@"success");
      },
      
      @"AMapPOIAroundSearchRequest::set_location": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapPOIAroundSearchRequest::set_location");
      
          // 参数
          // 引用参数
          AMapGeoPoint * location = (AMapGeoPoint *) HEAP[@([args[@"location"] integerValue])];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapPOIAroundSearchRequest * ref = (AMapPOIAroundSearchRequest *) HEAP[@(refId)];
      
          ref.location = location;
          methodResult(@"success");
      },
      
      @"AMapPOIAroundSearchRequest::set_radius": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapPOIAroundSearchRequest::set_radius");
      
          // 参数
          // jsonable参数
          NSInteger radius = [args[@"radius"] integerValue];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapPOIAroundSearchRequest * ref = (AMapPOIAroundSearchRequest *) HEAP[@(refId)];
      
          ref.radius = radius;
          methodResult(@"success");
      },
      
      @"AMapPOIAroundSearchRequest::set_city": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapPOIAroundSearchRequest::set_city");
      
          // 参数
          // jsonable参数
          NSString * city = (NSString *) args[@"city"];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapPOIAroundSearchRequest * ref = (AMapPOIAroundSearchRequest *) HEAP[@(refId)];
      
          ref.city = city;
          methodResult(@"success");
      },
      
      @"AMapPOIPolygonSearchRequest::set_keywords": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapPOIPolygonSearchRequest::set_keywords");
      
          // 参数
          // jsonable参数
          NSString * keywords = (NSString *) args[@"keywords"];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapPOIPolygonSearchRequest * ref = (AMapPOIPolygonSearchRequest *) HEAP[@(refId)];
      
          ref.keywords = keywords;
          methodResult(@"success");
      },
      
      @"AMapPOIPolygonSearchRequest::set_polygon": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapPOIPolygonSearchRequest::set_polygon");
      
          // 参数
          // 引用参数
          AMapGeoPolygon * polygon = (AMapGeoPolygon *) HEAP[@([args[@"polygon"] integerValue])];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapPOIPolygonSearchRequest * ref = (AMapPOIPolygonSearchRequest *) HEAP[@(refId)];
      
          ref.polygon = polygon;
          methodResult(@"success");
      },
      
      @"AMapPOISearchResponse::set_count": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapPOISearchResponse::set_count");
      
          // 参数
          // jsonable参数
          NSInteger count = [args[@"count"] integerValue];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapPOISearchResponse * ref = (AMapPOISearchResponse *) HEAP[@(refId)];
      
          ref.count = count;
          methodResult(@"success");
      },
      
      @"AMapPOISearchResponse::set_suggestion": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapPOISearchResponse::set_suggestion");
      
          // 参数
          // 引用参数
          AMapSuggestion * suggestion = (AMapSuggestion *) HEAP[@([args[@"suggestion"] integerValue])];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapPOISearchResponse * ref = (AMapPOISearchResponse *) HEAP[@(refId)];
      
          ref.suggestion = suggestion;
          methodResult(@"success");
      },
      
      @"AMapRoutePOISearchRequest::set_origin": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapRoutePOISearchRequest::set_origin");
      
          // 参数
          // 引用参数
          AMapGeoPoint * origin = (AMapGeoPoint *) HEAP[@([args[@"origin"] integerValue])];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapRoutePOISearchRequest * ref = (AMapRoutePOISearchRequest *) HEAP[@(refId)];
      
          ref.origin = origin;
          methodResult(@"success");
      },
      
      @"AMapRoutePOISearchRequest::set_destination": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapRoutePOISearchRequest::set_destination");
      
          // 参数
          // 引用参数
          AMapGeoPoint * destination = (AMapGeoPoint *) HEAP[@([args[@"destination"] integerValue])];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapRoutePOISearchRequest * ref = (AMapRoutePOISearchRequest *) HEAP[@(refId)];
      
          ref.destination = destination;
          methodResult(@"success");
      },
      
      @"AMapRoutePOISearchRequest::set_searchType": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapRoutePOISearchRequest::set_searchType");
      
          // 参数
          // 枚举参数
          AMapRoutePOISearchType searchType = (AMapRoutePOISearchType) [args[@"searchType"] integerValue];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapRoutePOISearchRequest * ref = (AMapRoutePOISearchRequest *) HEAP[@(refId)];
      
          ref.searchType = searchType;
          methodResult(@"success");
      },
      
      @"AMapRoutePOISearchRequest::set_strategy": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapRoutePOISearchRequest::set_strategy");
      
          // 参数
          // jsonable参数
          NSInteger strategy = [args[@"strategy"] integerValue];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapRoutePOISearchRequest * ref = (AMapRoutePOISearchRequest *) HEAP[@(refId)];
      
          ref.strategy = strategy;
          methodResult(@"success");
      },
      
      @"AMapRoutePOISearchRequest::set_range": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapRoutePOISearchRequest::set_range");
      
          // 参数
          // jsonable参数
          NSInteger range = [args[@"range"] integerValue];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapRoutePOISearchRequest * ref = (AMapRoutePOISearchRequest *) HEAP[@(refId)];
      
          ref.range = range;
          methodResult(@"success");
      },
      
      @"AMapRoutePOISearchRequest::set_polylineStr": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapRoutePOISearchRequest::set_polylineStr");
      
          // 参数
          // jsonable参数
          NSString * polylineStr = (NSString *) args[@"polylineStr"];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapRoutePOISearchRequest * ref = (AMapRoutePOISearchRequest *) HEAP[@(refId)];
      
          ref.polylineStr = polylineStr;
          methodResult(@"success");
      },
      
      @"AMapRoutePOISearchResponse::set_count": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapRoutePOISearchResponse::set_count");
      
          // 参数
          // jsonable参数
          NSInteger count = [args[@"count"] integerValue];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapRoutePOISearchResponse * ref = (AMapRoutePOISearchResponse *) HEAP[@(refId)];
      
          ref.count = count;
          methodResult(@"success");
      },
      
      @"AMapInputTipsSearchRequest::set_keywords": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapInputTipsSearchRequest::set_keywords");
      
          // 参数
          // jsonable参数
          NSString * keywords = (NSString *) args[@"keywords"];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapInputTipsSearchRequest * ref = (AMapInputTipsSearchRequest *) HEAP[@(refId)];
      
          ref.keywords = keywords;
          methodResult(@"success");
      },
      
      @"AMapInputTipsSearchRequest::set_city": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapInputTipsSearchRequest::set_city");
      
          // 参数
          // jsonable参数
          NSString * city = (NSString *) args[@"city"];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapInputTipsSearchRequest * ref = (AMapInputTipsSearchRequest *) HEAP[@(refId)];
      
          ref.city = city;
          methodResult(@"success");
      },
      
      @"AMapInputTipsSearchRequest::set_types": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapInputTipsSearchRequest::set_types");
      
          // 参数
          // jsonable参数
          NSString * types = (NSString *) args[@"types"];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapInputTipsSearchRequest * ref = (AMapInputTipsSearchRequest *) HEAP[@(refId)];
      
          ref.types = types;
          methodResult(@"success");
      },
      
      @"AMapInputTipsSearchRequest::set_cityLimit": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapInputTipsSearchRequest::set_cityLimit");
      
          // 参数
          // jsonable参数
          BOOL cityLimit = [args[@"cityLimit"] boolValue];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapInputTipsSearchRequest * ref = (AMapInputTipsSearchRequest *) HEAP[@(refId)];
      
          ref.cityLimit = cityLimit;
          methodResult(@"success");
      },
      
      @"AMapInputTipsSearchRequest::set_location": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapInputTipsSearchRequest::set_location");
      
          // 参数
          // jsonable参数
          NSString * location = (NSString *) args[@"location"];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapInputTipsSearchRequest * ref = (AMapInputTipsSearchRequest *) HEAP[@(refId)];
      
          ref.location = location;
          methodResult(@"success");
      },
      
      @"AMapInputTipsSearchResponse::set_count": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapInputTipsSearchResponse::set_count");
      
          // 参数
          // jsonable参数
          NSInteger count = [args[@"count"] integerValue];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapInputTipsSearchResponse * ref = (AMapInputTipsSearchResponse *) HEAP[@(refId)];
      
          ref.count = count;
          methodResult(@"success");
      },
      
      @"AMapGeocodeSearchRequest::set_address": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapGeocodeSearchRequest::set_address");
      
          // 参数
          // jsonable参数
          NSString * address = (NSString *) args[@"address"];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapGeocodeSearchRequest * ref = (AMapGeocodeSearchRequest *) HEAP[@(refId)];
      
          ref.address = address;
          methodResult(@"success");
      },
      
      @"AMapGeocodeSearchRequest::set_city": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapGeocodeSearchRequest::set_city");
      
          // 参数
          // jsonable参数
          NSString * city = (NSString *) args[@"city"];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapGeocodeSearchRequest * ref = (AMapGeocodeSearchRequest *) HEAP[@(refId)];
      
          ref.city = city;
          methodResult(@"success");
      },
      
      @"AMapGeocodeSearchResponse::set_count": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapGeocodeSearchResponse::set_count");
      
          // 参数
          // jsonable参数
          NSInteger count = [args[@"count"] integerValue];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapGeocodeSearchResponse * ref = (AMapGeocodeSearchResponse *) HEAP[@(refId)];
      
          ref.count = count;
          methodResult(@"success");
      },
      
      @"AMapReGeocodeSearchRequest::set_requireExtension": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapReGeocodeSearchRequest::set_requireExtension");
      
          // 参数
          // jsonable参数
          BOOL requireExtension = [args[@"requireExtension"] boolValue];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapReGeocodeSearchRequest * ref = (AMapReGeocodeSearchRequest *) HEAP[@(refId)];
      
          ref.requireExtension = requireExtension;
          methodResult(@"success");
      },
      
      @"AMapReGeocodeSearchRequest::set_location": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapReGeocodeSearchRequest::set_location");
      
          // 参数
          // 引用参数
          AMapGeoPoint * location = (AMapGeoPoint *) HEAP[@([args[@"location"] integerValue])];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapReGeocodeSearchRequest * ref = (AMapReGeocodeSearchRequest *) HEAP[@(refId)];
      
          ref.location = location;
          methodResult(@"success");
      },
      
      @"AMapReGeocodeSearchRequest::set_radius": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapReGeocodeSearchRequest::set_radius");
      
          // 参数
          // jsonable参数
          NSInteger radius = [args[@"radius"] integerValue];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapReGeocodeSearchRequest * ref = (AMapReGeocodeSearchRequest *) HEAP[@(refId)];
      
          ref.radius = radius;
          methodResult(@"success");
      },
      
      @"AMapReGeocodeSearchRequest::set_poitype": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapReGeocodeSearchRequest::set_poitype");
      
          // 参数
          // jsonable参数
          NSString * poitype = (NSString *) args[@"poitype"];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapReGeocodeSearchRequest * ref = (AMapReGeocodeSearchRequest *) HEAP[@(refId)];
      
          ref.poitype = poitype;
          methodResult(@"success");
      },
      
      @"AMapReGeocodeSearchResponse::set_regeocode": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapReGeocodeSearchResponse::set_regeocode");
      
          // 参数
          // 引用参数
          AMapReGeocode * regeocode = (AMapReGeocode *) HEAP[@([args[@"regeocode"] integerValue])];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapReGeocodeSearchResponse * ref = (AMapReGeocodeSearchResponse *) HEAP[@(refId)];
      
          ref.regeocode = regeocode;
          methodResult(@"success");
      },
      
      @"AMapBusStopSearchRequest::set_keywords": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapBusStopSearchRequest::set_keywords");
      
          // 参数
          // jsonable参数
          NSString * keywords = (NSString *) args[@"keywords"];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapBusStopSearchRequest * ref = (AMapBusStopSearchRequest *) HEAP[@(refId)];
      
          ref.keywords = keywords;
          methodResult(@"success");
      },
      
      @"AMapBusStopSearchRequest::set_city": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapBusStopSearchRequest::set_city");
      
          // 参数
          // jsonable参数
          NSString * city = (NSString *) args[@"city"];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapBusStopSearchRequest * ref = (AMapBusStopSearchRequest *) HEAP[@(refId)];
      
          ref.city = city;
          methodResult(@"success");
      },
      
      @"AMapBusStopSearchRequest::set_offset": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapBusStopSearchRequest::set_offset");
      
          // 参数
          // jsonable参数
          NSInteger offset = [args[@"offset"] integerValue];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapBusStopSearchRequest * ref = (AMapBusStopSearchRequest *) HEAP[@(refId)];
      
          ref.offset = offset;
          methodResult(@"success");
      },
      
      @"AMapBusStopSearchRequest::set_page": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapBusStopSearchRequest::set_page");
      
          // 参数
          // jsonable参数
          NSInteger page = [args[@"page"] integerValue];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapBusStopSearchRequest * ref = (AMapBusStopSearchRequest *) HEAP[@(refId)];
      
          ref.page = page;
          methodResult(@"success");
      },
      
      @"AMapBusStopSearchResponse::set_count": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapBusStopSearchResponse::set_count");
      
          // 参数
          // jsonable参数
          NSInteger count = [args[@"count"] integerValue];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapBusStopSearchResponse * ref = (AMapBusStopSearchResponse *) HEAP[@(refId)];
      
          ref.count = count;
          methodResult(@"success");
      },
      
      @"AMapBusStopSearchResponse::set_suggestion": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapBusStopSearchResponse::set_suggestion");
      
          // 参数
          // 引用参数
          AMapSuggestion * suggestion = (AMapSuggestion *) HEAP[@([args[@"suggestion"] integerValue])];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapBusStopSearchResponse * ref = (AMapBusStopSearchResponse *) HEAP[@(refId)];
      
          ref.suggestion = suggestion;
          methodResult(@"success");
      },
      
      @"AMapBusLineBaseSearchRequest::set_city": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapBusLineBaseSearchRequest::set_city");
      
          // 参数
          // jsonable参数
          NSString * city = (NSString *) args[@"city"];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapBusLineBaseSearchRequest * ref = (AMapBusLineBaseSearchRequest *) HEAP[@(refId)];
      
          ref.city = city;
          methodResult(@"success");
      },
      
      @"AMapBusLineBaseSearchRequest::set_requireExtension": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapBusLineBaseSearchRequest::set_requireExtension");
      
          // 参数
          // jsonable参数
          BOOL requireExtension = [args[@"requireExtension"] boolValue];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapBusLineBaseSearchRequest * ref = (AMapBusLineBaseSearchRequest *) HEAP[@(refId)];
      
          ref.requireExtension = requireExtension;
          methodResult(@"success");
      },
      
      @"AMapBusLineBaseSearchRequest::set_offset": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapBusLineBaseSearchRequest::set_offset");
      
          // 参数
          // jsonable参数
          NSInteger offset = [args[@"offset"] integerValue];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapBusLineBaseSearchRequest * ref = (AMapBusLineBaseSearchRequest *) HEAP[@(refId)];
      
          ref.offset = offset;
          methodResult(@"success");
      },
      
      @"AMapBusLineBaseSearchRequest::set_page": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapBusLineBaseSearchRequest::set_page");
      
          // 参数
          // jsonable参数
          NSInteger page = [args[@"page"] integerValue];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapBusLineBaseSearchRequest * ref = (AMapBusLineBaseSearchRequest *) HEAP[@(refId)];
      
          ref.page = page;
          methodResult(@"success");
      },
      
      @"AMapBusLineNameSearchRequest::set_keywords": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapBusLineNameSearchRequest::set_keywords");
      
          // 参数
          // jsonable参数
          NSString * keywords = (NSString *) args[@"keywords"];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapBusLineNameSearchRequest * ref = (AMapBusLineNameSearchRequest *) HEAP[@(refId)];
      
          ref.keywords = keywords;
          methodResult(@"success");
      },
      
      @"AMapBusLineIDSearchRequest::set_uid": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapBusLineIDSearchRequest::set_uid");
      
          // 参数
          // jsonable参数
          NSString * uid = (NSString *) args[@"uid"];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapBusLineIDSearchRequest * ref = (AMapBusLineIDSearchRequest *) HEAP[@(refId)];
      
          ref.uid = uid;
          methodResult(@"success");
      },
      
      @"AMapBusLineSearchResponse::set_count": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapBusLineSearchResponse::set_count");
      
          // 参数
          // jsonable参数
          NSInteger count = [args[@"count"] integerValue];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapBusLineSearchResponse * ref = (AMapBusLineSearchResponse *) HEAP[@(refId)];
      
          ref.count = count;
          methodResult(@"success");
      },
      
      @"AMapBusLineSearchResponse::set_suggestion": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapBusLineSearchResponse::set_suggestion");
      
          // 参数
          // 引用参数
          AMapSuggestion * suggestion = (AMapSuggestion *) HEAP[@([args[@"suggestion"] integerValue])];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapBusLineSearchResponse * ref = (AMapBusLineSearchResponse *) HEAP[@(refId)];
      
          ref.suggestion = suggestion;
          methodResult(@"success");
      },
      
      @"AMapDistrictSearchRequest::set_keywords": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapDistrictSearchRequest::set_keywords");
      
          // 参数
          // jsonable参数
          NSString * keywords = (NSString *) args[@"keywords"];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapDistrictSearchRequest * ref = (AMapDistrictSearchRequest *) HEAP[@(refId)];
      
          ref.keywords = keywords;
          methodResult(@"success");
      },
      
      @"AMapDistrictSearchResponse::set_count": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapDistrictSearchResponse::set_count");
      
          // 参数
          // jsonable参数
          NSInteger count = [args[@"count"] integerValue];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapDistrictSearchResponse * ref = (AMapDistrictSearchResponse *) HEAP[@(refId)];
      
          ref.count = count;
          methodResult(@"success");
      },
      
      @"AMapRouteSearchBaseRequest::set_origin": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapRouteSearchBaseRequest::set_origin");
      
          // 参数
          // 引用参数
          AMapGeoPoint * origin = (AMapGeoPoint *) HEAP[@([args[@"origin"] integerValue])];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapRouteSearchBaseRequest * ref = (AMapRouteSearchBaseRequest *) HEAP[@(refId)];
      
          ref.origin = origin;
          methodResult(@"success");
      },
      
      @"AMapRouteSearchBaseRequest::set_destination": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapRouteSearchBaseRequest::set_destination");
      
          // 参数
          // 引用参数
          AMapGeoPoint * destination = (AMapGeoPoint *) HEAP[@([args[@"destination"] integerValue])];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapRouteSearchBaseRequest * ref = (AMapRouteSearchBaseRequest *) HEAP[@(refId)];
      
          ref.destination = destination;
          methodResult(@"success");
      },
      
      @"AMapDrivingRouteSearchRequest::set_strategy": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapDrivingRouteSearchRequest::set_strategy");
      
          // 参数
          // jsonable参数
          NSInteger strategy = [args[@"strategy"] integerValue];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapDrivingRouteSearchRequest * ref = (AMapDrivingRouteSearchRequest *) HEAP[@(refId)];
      
          ref.strategy = strategy;
          methodResult(@"success");
      },
      
      @"AMapDrivingRouteSearchRequest::set_avoidroad": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapDrivingRouteSearchRequest::set_avoidroad");
      
          // 参数
          // jsonable参数
          NSString * avoidroad = (NSString *) args[@"avoidroad"];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapDrivingRouteSearchRequest * ref = (AMapDrivingRouteSearchRequest *) HEAP[@(refId)];
      
          ref.avoidroad = avoidroad;
          methodResult(@"success");
      },
      
      @"AMapDrivingRouteSearchRequest::set_originId": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapDrivingRouteSearchRequest::set_originId");
      
          // 参数
          // jsonable参数
          NSString * originId = (NSString *) args[@"originId"];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapDrivingRouteSearchRequest * ref = (AMapDrivingRouteSearchRequest *) HEAP[@(refId)];
      
          ref.originId = originId;
          methodResult(@"success");
      },
      
      @"AMapDrivingRouteSearchRequest::set_destinationId": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapDrivingRouteSearchRequest::set_destinationId");
      
          // 参数
          // jsonable参数
          NSString * destinationId = (NSString *) args[@"destinationId"];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapDrivingRouteSearchRequest * ref = (AMapDrivingRouteSearchRequest *) HEAP[@(refId)];
      
          ref.destinationId = destinationId;
          methodResult(@"success");
      },
      
      @"AMapDrivingRouteSearchRequest::set_origintype": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapDrivingRouteSearchRequest::set_origintype");
      
          // 参数
          // jsonable参数
          NSString * origintype = (NSString *) args[@"origintype"];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapDrivingRouteSearchRequest * ref = (AMapDrivingRouteSearchRequest *) HEAP[@(refId)];
      
          ref.origintype = origintype;
          methodResult(@"success");
      },
      
      @"AMapDrivingRouteSearchRequest::set_destinationtype": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapDrivingRouteSearchRequest::set_destinationtype");
      
          // 参数
          // jsonable参数
          NSString * destinationtype = (NSString *) args[@"destinationtype"];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapDrivingRouteSearchRequest * ref = (AMapDrivingRouteSearchRequest *) HEAP[@(refId)];
      
          ref.destinationtype = destinationtype;
          methodResult(@"success");
      },
      
      @"AMapDrivingRouteSearchRequest::set_requireExtension": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapDrivingRouteSearchRequest::set_requireExtension");
      
          // 参数
          // jsonable参数
          BOOL requireExtension = [args[@"requireExtension"] boolValue];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapDrivingRouteSearchRequest * ref = (AMapDrivingRouteSearchRequest *) HEAP[@(refId)];
      
          ref.requireExtension = requireExtension;
          methodResult(@"success");
      },
      
      @"AMapDrivingRouteSearchRequest::set_plateProvince": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapDrivingRouteSearchRequest::set_plateProvince");
      
          // 参数
          // jsonable参数
          NSString * plateProvince = (NSString *) args[@"plateProvince"];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapDrivingRouteSearchRequest * ref = (AMapDrivingRouteSearchRequest *) HEAP[@(refId)];
      
          ref.plateProvince = plateProvince;
          methodResult(@"success");
      },
      
      @"AMapDrivingRouteSearchRequest::set_plateNumber": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapDrivingRouteSearchRequest::set_plateNumber");
      
          // 参数
          // jsonable参数
          NSString * plateNumber = (NSString *) args[@"plateNumber"];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapDrivingRouteSearchRequest * ref = (AMapDrivingRouteSearchRequest *) HEAP[@(refId)];
      
          ref.plateNumber = plateNumber;
          methodResult(@"success");
      },
      
      @"AMapDrivingRouteSearchRequest::set_ferry": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapDrivingRouteSearchRequest::set_ferry");
      
          // 参数
          // jsonable参数
          NSInteger ferry = [args[@"ferry"] integerValue];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapDrivingRouteSearchRequest * ref = (AMapDrivingRouteSearchRequest *) HEAP[@(refId)];
      
          ref.ferry = ferry;
          methodResult(@"success");
      },
      
      @"AMapDrivingRouteSearchRequest::set_cartype": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapDrivingRouteSearchRequest::set_cartype");
      
          // 参数
          // jsonable参数
          NSInteger cartype = [args[@"cartype"] integerValue];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapDrivingRouteSearchRequest * ref = (AMapDrivingRouteSearchRequest *) HEAP[@(refId)];
      
          ref.cartype = cartype;
          methodResult(@"success");
      },
      
      @"AMapWalkingRouteSearchRequest::set_multipath": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapWalkingRouteSearchRequest::set_multipath");
      
          // 参数
          // jsonable参数
          NSInteger multipath = [args[@"multipath"] integerValue];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapWalkingRouteSearchRequest * ref = (AMapWalkingRouteSearchRequest *) HEAP[@(refId)];
      
          ref.multipath = multipath;
          methodResult(@"success");
      },
      
      @"AMapTransitRouteSearchRequest::set_strategy": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapTransitRouteSearchRequest::set_strategy");
      
          // 参数
          // jsonable参数
          NSInteger strategy = [args[@"strategy"] integerValue];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapTransitRouteSearchRequest * ref = (AMapTransitRouteSearchRequest *) HEAP[@(refId)];
      
          ref.strategy = strategy;
          methodResult(@"success");
      },
      
      @"AMapTransitRouteSearchRequest::set_city": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapTransitRouteSearchRequest::set_city");
      
          // 参数
          // jsonable参数
          NSString * city = (NSString *) args[@"city"];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapTransitRouteSearchRequest * ref = (AMapTransitRouteSearchRequest *) HEAP[@(refId)];
      
          ref.city = city;
          methodResult(@"success");
      },
      
      @"AMapTransitRouteSearchRequest::set_destinationCity": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapTransitRouteSearchRequest::set_destinationCity");
      
          // 参数
          // jsonable参数
          NSString * destinationCity = (NSString *) args[@"destinationCity"];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapTransitRouteSearchRequest * ref = (AMapTransitRouteSearchRequest *) HEAP[@(refId)];
      
          ref.destinationCity = destinationCity;
          methodResult(@"success");
      },
      
      @"AMapTransitRouteSearchRequest::set_nightflag": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapTransitRouteSearchRequest::set_nightflag");
      
          // 参数
          // jsonable参数
          BOOL nightflag = [args[@"nightflag"] boolValue];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapTransitRouteSearchRequest * ref = (AMapTransitRouteSearchRequest *) HEAP[@(refId)];
      
          ref.nightflag = nightflag;
          methodResult(@"success");
      },
      
      @"AMapTransitRouteSearchRequest::set_requireExtension": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapTransitRouteSearchRequest::set_requireExtension");
      
          // 参数
          // jsonable参数
          BOOL requireExtension = [args[@"requireExtension"] boolValue];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapTransitRouteSearchRequest * ref = (AMapTransitRouteSearchRequest *) HEAP[@(refId)];
      
          ref.requireExtension = requireExtension;
          methodResult(@"success");
      },
      
      @"AMapRidingRouteSearchRequest::set_type": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapRidingRouteSearchRequest::set_type");
      
          // 参数
          // jsonable参数
          NSInteger type = [args[@"type"] integerValue];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapRidingRouteSearchRequest * ref = (AMapRidingRouteSearchRequest *) HEAP[@(refId)];
      
          ref.type = type;
          methodResult(@"success");
      },
      
      @"AMapRouteSearchResponse::set_count": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapRouteSearchResponse::set_count");
      
          // 参数
          // jsonable参数
          NSInteger count = [args[@"count"] integerValue];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapRouteSearchResponse * ref = (AMapRouteSearchResponse *) HEAP[@(refId)];
      
          ref.count = count;
          methodResult(@"success");
      },
      
      @"AMapRouteSearchResponse::set_route": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapRouteSearchResponse::set_route");
      
          // 参数
          // 引用参数
          AMapRoute * route = (AMapRoute *) HEAP[@([args[@"route"] integerValue])];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapRouteSearchResponse * ref = (AMapRouteSearchResponse *) HEAP[@(refId)];
      
          ref.route = route;
          methodResult(@"success");
      },
      
      @"AMapTruckRouteSearchRequest::set_strategy": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapTruckRouteSearchRequest::set_strategy");
      
          // 参数
          // jsonable参数
          NSInteger strategy = [args[@"strategy"] integerValue];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapTruckRouteSearchRequest * ref = (AMapTruckRouteSearchRequest *) HEAP[@(refId)];
      
          ref.strategy = strategy;
          methodResult(@"success");
      },
      
      @"AMapTruckRouteSearchRequest::set_originId": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapTruckRouteSearchRequest::set_originId");
      
          // 参数
          // jsonable参数
          NSString * originId = (NSString *) args[@"originId"];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapTruckRouteSearchRequest * ref = (AMapTruckRouteSearchRequest *) HEAP[@(refId)];
      
          ref.originId = originId;
          methodResult(@"success");
      },
      
      @"AMapTruckRouteSearchRequest::set_destinationId": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapTruckRouteSearchRequest::set_destinationId");
      
          // 参数
          // jsonable参数
          NSString * destinationId = (NSString *) args[@"destinationId"];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapTruckRouteSearchRequest * ref = (AMapTruckRouteSearchRequest *) HEAP[@(refId)];
      
          ref.destinationId = destinationId;
          methodResult(@"success");
      },
      
      @"AMapTruckRouteSearchRequest::set_origintype": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapTruckRouteSearchRequest::set_origintype");
      
          // 参数
          // jsonable参数
          NSString * origintype = (NSString *) args[@"origintype"];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapTruckRouteSearchRequest * ref = (AMapTruckRouteSearchRequest *) HEAP[@(refId)];
      
          ref.origintype = origintype;
          methodResult(@"success");
      },
      
      @"AMapTruckRouteSearchRequest::set_destinationtype": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapTruckRouteSearchRequest::set_destinationtype");
      
          // 参数
          // jsonable参数
          NSString * destinationtype = (NSString *) args[@"destinationtype"];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapTruckRouteSearchRequest * ref = (AMapTruckRouteSearchRequest *) HEAP[@(refId)];
      
          ref.destinationtype = destinationtype;
          methodResult(@"success");
      },
      
      @"AMapTruckRouteSearchRequest::set_plateProvince": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapTruckRouteSearchRequest::set_plateProvince");
      
          // 参数
          // jsonable参数
          NSString * plateProvince = (NSString *) args[@"plateProvince"];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapTruckRouteSearchRequest * ref = (AMapTruckRouteSearchRequest *) HEAP[@(refId)];
      
          ref.plateProvince = plateProvince;
          methodResult(@"success");
      },
      
      @"AMapTruckRouteSearchRequest::set_plateNumber": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapTruckRouteSearchRequest::set_plateNumber");
      
          // 参数
          // jsonable参数
          NSString * plateNumber = (NSString *) args[@"plateNumber"];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapTruckRouteSearchRequest * ref = (AMapTruckRouteSearchRequest *) HEAP[@(refId)];
      
          ref.plateNumber = plateNumber;
          methodResult(@"success");
      },
      
      @"AMapTruckRouteSearchRequest::set_size": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapTruckRouteSearchRequest::set_size");
      
          // 参数
          // 枚举参数
          AMapTruckSizeType size = (AMapTruckSizeType) [args[@"size"] integerValue];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapTruckRouteSearchRequest * ref = (AMapTruckRouteSearchRequest *) HEAP[@(refId)];
      
          ref.size = size;
          methodResult(@"success");
      },
      
      @"AMapTruckRouteSearchRequest::set_height": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapTruckRouteSearchRequest::set_height");
      
          // 参数
          // jsonable参数
          CGFloat height = [args[@"height"] floatValue];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapTruckRouteSearchRequest * ref = (AMapTruckRouteSearchRequest *) HEAP[@(refId)];
      
          ref.height = height;
          methodResult(@"success");
      },
      
      @"AMapTruckRouteSearchRequest::set_width": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapTruckRouteSearchRequest::set_width");
      
          // 参数
          // jsonable参数
          CGFloat width = [args[@"width"] floatValue];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapTruckRouteSearchRequest * ref = (AMapTruckRouteSearchRequest *) HEAP[@(refId)];
      
          ref.width = width;
          methodResult(@"success");
      },
      
      @"AMapTruckRouteSearchRequest::set_load": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapTruckRouteSearchRequest::set_load");
      
          // 参数
          // jsonable参数
          CGFloat load = [args[@"load"] floatValue];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapTruckRouteSearchRequest * ref = (AMapTruckRouteSearchRequest *) HEAP[@(refId)];
      
          ref.load = load;
          methodResult(@"success");
      },
      
      @"AMapTruckRouteSearchRequest::set_weight": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapTruckRouteSearchRequest::set_weight");
      
          // 参数
          // jsonable参数
          CGFloat weight = [args[@"weight"] floatValue];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapTruckRouteSearchRequest * ref = (AMapTruckRouteSearchRequest *) HEAP[@(refId)];
      
          ref.weight = weight;
          methodResult(@"success");
      },
      
      @"AMapTruckRouteSearchRequest::set_axis": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapTruckRouteSearchRequest::set_axis");
      
          // 参数
          // jsonable参数
          NSInteger axis = [args[@"axis"] integerValue];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapTruckRouteSearchRequest * ref = (AMapTruckRouteSearchRequest *) HEAP[@(refId)];
      
          ref.axis = axis;
          methodResult(@"success");
      },
      
      @"AMapDistanceSearchRequest::set_destination": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapDistanceSearchRequest::set_destination");
      
          // 参数
          // 引用参数
          AMapGeoPoint * destination = (AMapGeoPoint *) HEAP[@([args[@"destination"] integerValue])];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapDistanceSearchRequest * ref = (AMapDistanceSearchRequest *) HEAP[@(refId)];
      
          ref.destination = destination;
          methodResult(@"success");
      },
      
      @"AMapDistanceSearchRequest::set_type": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapDistanceSearchRequest::set_type");
      
          // 参数
          // jsonable参数
          NSInteger type = [args[@"type"] integerValue];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapDistanceSearchRequest * ref = (AMapDistanceSearchRequest *) HEAP[@(refId)];
      
          ref.type = type;
          methodResult(@"success");
      },
      
      @"AMapWeatherSearchRequest::set_city": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapWeatherSearchRequest::set_city");
      
          // 参数
          // jsonable参数
          NSString * city = (NSString *) args[@"city"];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapWeatherSearchRequest * ref = (AMapWeatherSearchRequest *) HEAP[@(refId)];
      
          ref.city = city;
          methodResult(@"success");
      },
      
      @"AMapWeatherSearchRequest::set_type": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapWeatherSearchRequest::set_type");
      
          // 参数
          // 枚举参数
          AMapWeatherType type = (AMapWeatherType) [args[@"type"] integerValue];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapWeatherSearchRequest * ref = (AMapWeatherSearchRequest *) HEAP[@(refId)];
      
          ref.type = type;
          methodResult(@"success");
      },
      
      @"AMapRoadTrafficSearchBaseRequest::set_level": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapRoadTrafficSearchBaseRequest::set_level");
      
          // 参数
          // jsonable参数
          NSInteger level = [args[@"level"] integerValue];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapRoadTrafficSearchBaseRequest * ref = (AMapRoadTrafficSearchBaseRequest *) HEAP[@(refId)];
      
          ref.level = level;
          methodResult(@"success");
      },
      
      @"AMapRoadTrafficSearchBaseRequest::set_requireExtension": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapRoadTrafficSearchBaseRequest::set_requireExtension");
      
          // 参数
          // jsonable参数
          BOOL requireExtension = [args[@"requireExtension"] boolValue];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapRoadTrafficSearchBaseRequest * ref = (AMapRoadTrafficSearchBaseRequest *) HEAP[@(refId)];
      
          ref.requireExtension = requireExtension;
          methodResult(@"success");
      },
      
      @"AMapRoadTrafficSearchRequest::set_roadName": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapRoadTrafficSearchRequest::set_roadName");
      
          // 参数
          // jsonable参数
          NSString * roadName = (NSString *) args[@"roadName"];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapRoadTrafficSearchRequest * ref = (AMapRoadTrafficSearchRequest *) HEAP[@(refId)];
      
          ref.roadName = roadName;
          methodResult(@"success");
      },
      
      @"AMapRoadTrafficSearchRequest::set_adcode": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapRoadTrafficSearchRequest::set_adcode");
      
          // 参数
          // jsonable参数
          NSString * adcode = (NSString *) args[@"adcode"];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapRoadTrafficSearchRequest * ref = (AMapRoadTrafficSearchRequest *) HEAP[@(refId)];
      
          ref.adcode = adcode;
          methodResult(@"success");
      },
      
      @"AMapRoadTrafficCircleSearchRequest::set_location": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapRoadTrafficCircleSearchRequest::set_location");
      
          // 参数
          // 引用参数
          AMapGeoPoint * location = (AMapGeoPoint *) HEAP[@([args[@"location"] integerValue])];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapRoadTrafficCircleSearchRequest * ref = (AMapRoadTrafficCircleSearchRequest *) HEAP[@(refId)];
      
          ref.location = location;
          methodResult(@"success");
      },
      
      @"AMapRoadTrafficCircleSearchRequest::set_radius": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapRoadTrafficCircleSearchRequest::set_radius");
      
          // 参数
          // jsonable参数
          NSInteger radius = [args[@"radius"] integerValue];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapRoadTrafficCircleSearchRequest * ref = (AMapRoadTrafficCircleSearchRequest *) HEAP[@(refId)];
      
          ref.radius = radius;
          methodResult(@"success");
      },
      
      @"AMapRoadTrafficSearchResponse::set_trafficInfo": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapRoadTrafficSearchResponse::set_trafficInfo");
      
          // 参数
          // 引用参数
          AMapTrafficInfo * trafficInfo = (AMapTrafficInfo *) HEAP[@([args[@"trafficInfo"] integerValue])];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapRoadTrafficSearchResponse * ref = (AMapRoadTrafficSearchResponse *) HEAP[@(refId)];
      
          ref.trafficInfo = trafficInfo;
          methodResult(@"success");
      },
      
      @"AMapNearbySearchRequest::set_center": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapNearbySearchRequest::set_center");
      
          // 参数
          // 引用参数
          AMapGeoPoint * center = (AMapGeoPoint *) HEAP[@([args[@"center"] integerValue])];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapNearbySearchRequest * ref = (AMapNearbySearchRequest *) HEAP[@(refId)];
      
          ref.center = center;
          methodResult(@"success");
      },
      
      @"AMapNearbySearchRequest::set_radius": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapNearbySearchRequest::set_radius");
      
          // 参数
          // jsonable参数
          NSInteger radius = [args[@"radius"] integerValue];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapNearbySearchRequest * ref = (AMapNearbySearchRequest *) HEAP[@(refId)];
      
          ref.radius = radius;
          methodResult(@"success");
      },
      
      @"AMapNearbySearchRequest::set_searchType": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapNearbySearchRequest::set_searchType");
      
          // 参数
          // 枚举参数
          AMapNearbySearchType searchType = (AMapNearbySearchType) [args[@"searchType"] integerValue];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapNearbySearchRequest * ref = (AMapNearbySearchRequest *) HEAP[@(refId)];
      
          ref.searchType = searchType;
          methodResult(@"success");
      },
      
      @"AMapNearbySearchRequest::set_timeRange": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapNearbySearchRequest::set_timeRange");
      
          // 参数
          // jsonable参数
          NSInteger timeRange = [args[@"timeRange"] integerValue];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapNearbySearchRequest * ref = (AMapNearbySearchRequest *) HEAP[@(refId)];
      
          ref.timeRange = timeRange;
          methodResult(@"success");
      },
      
      @"AMapNearbySearchRequest::set_limit": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapNearbySearchRequest::set_limit");
      
          // 参数
          // jsonable参数
          NSInteger limit = [args[@"limit"] integerValue];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapNearbySearchRequest * ref = (AMapNearbySearchRequest *) HEAP[@(refId)];
      
          ref.limit = limit;
          methodResult(@"success");
      },
      
      @"AMapNearbySearchResponse::set_count": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapNearbySearchResponse::set_count");
      
          // 参数
          // jsonable参数
          NSInteger count = [args[@"count"] integerValue];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapNearbySearchResponse * ref = (AMapNearbySearchResponse *) HEAP[@(refId)];
      
          ref.count = count;
          methodResult(@"success");
      },
      
      @"AMapCloudSearchBaseRequest::set_tableID": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapCloudSearchBaseRequest::set_tableID");
      
          // 参数
          // jsonable参数
          NSString * tableID = (NSString *) args[@"tableID"];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapCloudSearchBaseRequest * ref = (AMapCloudSearchBaseRequest *) HEAP[@(refId)];
      
          ref.tableID = tableID;
          methodResult(@"success");
      },
      
      @"AMapCloudSearchBaseRequest::set_sortFields": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapCloudSearchBaseRequest::set_sortFields");
      
          // 参数
          // jsonable参数
          NSString * sortFields = (NSString *) args[@"sortFields"];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapCloudSearchBaseRequest * ref = (AMapCloudSearchBaseRequest *) HEAP[@(refId)];
      
          ref.sortFields = sortFields;
          methodResult(@"success");
      },
      
      @"AMapCloudSearchBaseRequest::set_sortType": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapCloudSearchBaseRequest::set_sortType");
      
          // 参数
          // 枚举参数
          AMapCloudSortType sortType = (AMapCloudSortType) [args[@"sortType"] integerValue];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapCloudSearchBaseRequest * ref = (AMapCloudSearchBaseRequest *) HEAP[@(refId)];
      
          ref.sortType = sortType;
          methodResult(@"success");
      },
      
      @"AMapCloudSearchBaseRequest::set_offset": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapCloudSearchBaseRequest::set_offset");
      
          // 参数
          // jsonable参数
          NSInteger offset = [args[@"offset"] integerValue];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapCloudSearchBaseRequest * ref = (AMapCloudSearchBaseRequest *) HEAP[@(refId)];
      
          ref.offset = offset;
          methodResult(@"success");
      },
      
      @"AMapCloudSearchBaseRequest::set_page": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapCloudSearchBaseRequest::set_page");
      
          // 参数
          // jsonable参数
          NSInteger page = [args[@"page"] integerValue];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapCloudSearchBaseRequest * ref = (AMapCloudSearchBaseRequest *) HEAP[@(refId)];
      
          ref.page = page;
          methodResult(@"success");
      },
      
      @"AMapCloudPOIAroundSearchRequest::set_center": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapCloudPOIAroundSearchRequest::set_center");
      
          // 参数
          // 引用参数
          AMapGeoPoint * center = (AMapGeoPoint *) HEAP[@([args[@"center"] integerValue])];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapCloudPOIAroundSearchRequest * ref = (AMapCloudPOIAroundSearchRequest *) HEAP[@(refId)];
      
          ref.center = center;
          methodResult(@"success");
      },
      
      @"AMapCloudPOIAroundSearchRequest::set_radius": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapCloudPOIAroundSearchRequest::set_radius");
      
          // 参数
          // jsonable参数
          NSInteger radius = [args[@"radius"] integerValue];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapCloudPOIAroundSearchRequest * ref = (AMapCloudPOIAroundSearchRequest *) HEAP[@(refId)];
      
          ref.radius = radius;
          methodResult(@"success");
      },
      
      @"AMapCloudPOIAroundSearchRequest::set_keywords": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapCloudPOIAroundSearchRequest::set_keywords");
      
          // 参数
          // jsonable参数
          NSString * keywords = (NSString *) args[@"keywords"];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapCloudPOIAroundSearchRequest * ref = (AMapCloudPOIAroundSearchRequest *) HEAP[@(refId)];
      
          ref.keywords = keywords;
          methodResult(@"success");
      },
      
      @"AMapCloudPOIPolygonSearchRequest::set_polygon": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapCloudPOIPolygonSearchRequest::set_polygon");
      
          // 参数
          // 引用参数
          AMapGeoPolygon * polygon = (AMapGeoPolygon *) HEAP[@([args[@"polygon"] integerValue])];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapCloudPOIPolygonSearchRequest * ref = (AMapCloudPOIPolygonSearchRequest *) HEAP[@(refId)];
      
          ref.polygon = polygon;
          methodResult(@"success");
      },
      
      @"AMapCloudPOIPolygonSearchRequest::set_keywords": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapCloudPOIPolygonSearchRequest::set_keywords");
      
          // 参数
          // jsonable参数
          NSString * keywords = (NSString *) args[@"keywords"];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapCloudPOIPolygonSearchRequest * ref = (AMapCloudPOIPolygonSearchRequest *) HEAP[@(refId)];
      
          ref.keywords = keywords;
          methodResult(@"success");
      },
      
      @"AMapCloudPOIIDSearchRequest::set_uid": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapCloudPOIIDSearchRequest::set_uid");
      
          // 参数
          // jsonable参数
          NSInteger uid = [args[@"uid"] integerValue];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapCloudPOIIDSearchRequest * ref = (AMapCloudPOIIDSearchRequest *) HEAP[@(refId)];
      
          ref.uid = uid;
          methodResult(@"success");
      },
      
      @"AMapCloudPOILocalSearchRequest::set_keywords": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapCloudPOILocalSearchRequest::set_keywords");
      
          // 参数
          // jsonable参数
          NSString * keywords = (NSString *) args[@"keywords"];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapCloudPOILocalSearchRequest * ref = (AMapCloudPOILocalSearchRequest *) HEAP[@(refId)];
      
          ref.keywords = keywords;
          methodResult(@"success");
      },
      
      @"AMapCloudPOILocalSearchRequest::set_city": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapCloudPOILocalSearchRequest::set_city");
      
          // 参数
          // jsonable参数
          NSString * city = (NSString *) args[@"city"];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapCloudPOILocalSearchRequest * ref = (AMapCloudPOILocalSearchRequest *) HEAP[@(refId)];
      
          ref.city = city;
          methodResult(@"success");
      },
      
      @"AMapCloudPOISearchResponse::set_count": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapCloudPOISearchResponse::set_count");
      
          // 参数
          // jsonable参数
          NSInteger count = [args[@"count"] integerValue];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapCloudPOISearchResponse * ref = (AMapCloudPOISearchResponse *) HEAP[@(refId)];
      
          ref.count = count;
          methodResult(@"success");
      },
      
      @"AMapLocationShareSearchRequest::set_location": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapLocationShareSearchRequest::set_location");
      
          // 参数
          // 引用参数
          AMapGeoPoint * location = (AMapGeoPoint *) HEAP[@([args[@"location"] integerValue])];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapLocationShareSearchRequest * ref = (AMapLocationShareSearchRequest *) HEAP[@(refId)];
      
          ref.location = location;
          methodResult(@"success");
      },
      
      @"AMapLocationShareSearchRequest::set_name": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapLocationShareSearchRequest::set_name");
      
          // 参数
          // jsonable参数
          NSString * name = (NSString *) args[@"name"];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapLocationShareSearchRequest * ref = (AMapLocationShareSearchRequest *) HEAP[@(refId)];
      
          ref.name = name;
          methodResult(@"success");
      },
      
      @"AMapPOIShareSearchRequest::set_uid": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapPOIShareSearchRequest::set_uid");
      
          // 参数
          // jsonable参数
          NSString * uid = (NSString *) args[@"uid"];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapPOIShareSearchRequest * ref = (AMapPOIShareSearchRequest *) HEAP[@(refId)];
      
          ref.uid = uid;
          methodResult(@"success");
      },
      
      @"AMapPOIShareSearchRequest::set_location": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapPOIShareSearchRequest::set_location");
      
          // 参数
          // 引用参数
          AMapGeoPoint * location = (AMapGeoPoint *) HEAP[@([args[@"location"] integerValue])];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapPOIShareSearchRequest * ref = (AMapPOIShareSearchRequest *) HEAP[@(refId)];
      
          ref.location = location;
          methodResult(@"success");
      },
      
      @"AMapPOIShareSearchRequest::set_name": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapPOIShareSearchRequest::set_name");
      
          // 参数
          // jsonable参数
          NSString * name = (NSString *) args[@"name"];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapPOIShareSearchRequest * ref = (AMapPOIShareSearchRequest *) HEAP[@(refId)];
      
          ref.name = name;
          methodResult(@"success");
      },
      
      @"AMapPOIShareSearchRequest::set_address": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapPOIShareSearchRequest::set_address");
      
          // 参数
          // jsonable参数
          NSString * address = (NSString *) args[@"address"];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapPOIShareSearchRequest * ref = (AMapPOIShareSearchRequest *) HEAP[@(refId)];
      
          ref.address = address;
          methodResult(@"success");
      },
      
      @"AMapRouteShareSearchRequest::set_strategy": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapRouteShareSearchRequest::set_strategy");
      
          // 参数
          // jsonable参数
          NSInteger strategy = [args[@"strategy"] integerValue];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapRouteShareSearchRequest * ref = (AMapRouteShareSearchRequest *) HEAP[@(refId)];
      
          ref.strategy = strategy;
          methodResult(@"success");
      },
      
      @"AMapRouteShareSearchRequest::set_type": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapRouteShareSearchRequest::set_type");
      
          // 参数
          // jsonable参数
          NSInteger type = [args[@"type"] integerValue];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapRouteShareSearchRequest * ref = (AMapRouteShareSearchRequest *) HEAP[@(refId)];
      
          ref.type = type;
          methodResult(@"success");
      },
      
      @"AMapRouteShareSearchRequest::set_startCoordinate": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapRouteShareSearchRequest::set_startCoordinate");
      
          // 参数
          // 引用参数
          AMapGeoPoint * startCoordinate = (AMapGeoPoint *) HEAP[@([args[@"startCoordinate"] integerValue])];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapRouteShareSearchRequest * ref = (AMapRouteShareSearchRequest *) HEAP[@(refId)];
      
          ref.startCoordinate = startCoordinate;
          methodResult(@"success");
      },
      
      @"AMapRouteShareSearchRequest::set_destinationCoordinate": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapRouteShareSearchRequest::set_destinationCoordinate");
      
          // 参数
          // 引用参数
          AMapGeoPoint * destinationCoordinate = (AMapGeoPoint *) HEAP[@([args[@"destinationCoordinate"] integerValue])];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapRouteShareSearchRequest * ref = (AMapRouteShareSearchRequest *) HEAP[@(refId)];
      
          ref.destinationCoordinate = destinationCoordinate;
          methodResult(@"success");
      },
      
      @"AMapRouteShareSearchRequest::set_startName": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapRouteShareSearchRequest::set_startName");
      
          // 参数
          // jsonable参数
          NSString * startName = (NSString *) args[@"startName"];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapRouteShareSearchRequest * ref = (AMapRouteShareSearchRequest *) HEAP[@(refId)];
      
          ref.startName = startName;
          methodResult(@"success");
      },
      
      @"AMapRouteShareSearchRequest::set_destinationName": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapRouteShareSearchRequest::set_destinationName");
      
          // 参数
          // jsonable参数
          NSString * destinationName = (NSString *) args[@"destinationName"];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapRouteShareSearchRequest * ref = (AMapRouteShareSearchRequest *) HEAP[@(refId)];
      
          ref.destinationName = destinationName;
          methodResult(@"success");
      },
      
      @"AMapNavigationShareSearchRequest::set_strategy": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapNavigationShareSearchRequest::set_strategy");
      
          // 参数
          // jsonable参数
          NSInteger strategy = [args[@"strategy"] integerValue];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapNavigationShareSearchRequest * ref = (AMapNavigationShareSearchRequest *) HEAP[@(refId)];
      
          ref.strategy = strategy;
          methodResult(@"success");
      },
      
      @"AMapNavigationShareSearchRequest::set_startCoordinate": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapNavigationShareSearchRequest::set_startCoordinate");
      
          // 参数
          // 引用参数
          AMapGeoPoint * startCoordinate = (AMapGeoPoint *) HEAP[@([args[@"startCoordinate"] integerValue])];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapNavigationShareSearchRequest * ref = (AMapNavigationShareSearchRequest *) HEAP[@(refId)];
      
          ref.startCoordinate = startCoordinate;
          methodResult(@"success");
      },
      
      @"AMapNavigationShareSearchRequest::set_destinationCoordinate": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapNavigationShareSearchRequest::set_destinationCoordinate");
      
          // 参数
          // 引用参数
          AMapGeoPoint * destinationCoordinate = (AMapGeoPoint *) HEAP[@([args[@"destinationCoordinate"] integerValue])];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapNavigationShareSearchRequest * ref = (AMapNavigationShareSearchRequest *) HEAP[@(refId)];
      
          ref.destinationCoordinate = destinationCoordinate;
          methodResult(@"success");
      },
      
      @"AMapShareSearchResponse::set_shareURL": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapShareSearchResponse::set_shareURL");
      
          // 参数
          // jsonable参数
          NSString * shareURL = (NSString *) args[@"shareURL"];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapShareSearchResponse * ref = (AMapShareSearchResponse *) HEAP[@(refId)];
      
          ref.shareURL = shareURL;
          methodResult(@"success");
      },
      
      @"AMapFutureRouteSearchRequest::set_beginTime": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapFutureRouteSearchRequest::set_beginTime");
      
          // 参数
          // jsonable参数
          NSString * beginTime = (NSString *) args[@"beginTime"];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapFutureRouteSearchRequest * ref = (AMapFutureRouteSearchRequest *) HEAP[@(refId)];
      
          ref.beginTime = beginTime;
          methodResult(@"success");
      },
      
      @"AMapFutureRouteSearchRequest::set_interval": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapFutureRouteSearchRequest::set_interval");
      
          // 参数
          // jsonable参数
          NSInteger interval = [args[@"interval"] integerValue];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapFutureRouteSearchRequest * ref = (AMapFutureRouteSearchRequest *) HEAP[@(refId)];
      
          ref.interval = interval;
          methodResult(@"success");
      },
      
      @"AMapFutureRouteSearchRequest::set_timeCount": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapFutureRouteSearchRequest::set_timeCount");
      
          // 参数
          // jsonable参数
          NSInteger timeCount = [args[@"timeCount"] integerValue];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapFutureRouteSearchRequest * ref = (AMapFutureRouteSearchRequest *) HEAP[@(refId)];
      
          ref.timeCount = timeCount;
          methodResult(@"success");
      },
      
      @"AMapFutureRouteSearchRequest::set_strategy": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapFutureRouteSearchRequest::set_strategy");
      
          // 参数
          // jsonable参数
          NSInteger strategy = [args[@"strategy"] integerValue];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapFutureRouteSearchRequest * ref = (AMapFutureRouteSearchRequest *) HEAP[@(refId)];
      
          ref.strategy = strategy;
          methodResult(@"success");
      },
      
      @"AMapFutureRouteSearchRequest::set_originId": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapFutureRouteSearchRequest::set_originId");
      
          // 参数
          // jsonable参数
          NSString * originId = (NSString *) args[@"originId"];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapFutureRouteSearchRequest * ref = (AMapFutureRouteSearchRequest *) HEAP[@(refId)];
      
          ref.originId = originId;
          methodResult(@"success");
      },
      
      @"AMapFutureRouteSearchRequest::set_destinationId": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapFutureRouteSearchRequest::set_destinationId");
      
          // 参数
          // jsonable参数
          NSString * destinationId = (NSString *) args[@"destinationId"];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapFutureRouteSearchRequest * ref = (AMapFutureRouteSearchRequest *) HEAP[@(refId)];
      
          ref.destinationId = destinationId;
          methodResult(@"success");
      },
      
      @"AMapFutureRouteSearchRequest::set_origintype": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapFutureRouteSearchRequest::set_origintype");
      
          // 参数
          // jsonable参数
          NSString * origintype = (NSString *) args[@"origintype"];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapFutureRouteSearchRequest * ref = (AMapFutureRouteSearchRequest *) HEAP[@(refId)];
      
          ref.origintype = origintype;
          methodResult(@"success");
      },
      
      @"AMapFutureRouteSearchRequest::set_destinationtype": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapFutureRouteSearchRequest::set_destinationtype");
      
          // 参数
          // jsonable参数
          NSString * destinationtype = (NSString *) args[@"destinationtype"];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapFutureRouteSearchRequest * ref = (AMapFutureRouteSearchRequest *) HEAP[@(refId)];
      
          ref.destinationtype = destinationtype;
          methodResult(@"success");
      },
      
      @"AMapFutureRouteSearchRequest::set_parentId": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapFutureRouteSearchRequest::set_parentId");
      
          // 参数
          // jsonable参数
          NSString * parentId = (NSString *) args[@"parentId"];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapFutureRouteSearchRequest * ref = (AMapFutureRouteSearchRequest *) HEAP[@(refId)];
      
          ref.parentId = parentId;
          methodResult(@"success");
      },
      
      @"AMapFutureRouteSearchRequest::set_plateProvince": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapFutureRouteSearchRequest::set_plateProvince");
      
          // 参数
          // jsonable参数
          NSString * plateProvince = (NSString *) args[@"plateProvince"];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapFutureRouteSearchRequest * ref = (AMapFutureRouteSearchRequest *) HEAP[@(refId)];
      
          ref.plateProvince = plateProvince;
          methodResult(@"success");
      },
      
      @"AMapFutureRouteSearchRequest::set_plateNumber": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapFutureRouteSearchRequest::set_plateNumber");
      
          // 参数
          // jsonable参数
          NSString * plateNumber = (NSString *) args[@"plateNumber"];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapFutureRouteSearchRequest * ref = (AMapFutureRouteSearchRequest *) HEAP[@(refId)];
      
          ref.plateNumber = plateNumber;
          methodResult(@"success");
      },
      
      @"AMapFutureRouteSearchRequest::set_cartype": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapFutureRouteSearchRequest::set_cartype");
      
          // 参数
          // jsonable参数
          NSInteger cartype = [args[@"cartype"] integerValue];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapFutureRouteSearchRequest * ref = (AMapFutureRouteSearchRequest *) HEAP[@(refId)];
      
          ref.cartype = cartype;
          methodResult(@"success");
      },
      
      @"AMapGeoPoint::set_latitude": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapGeoPoint::set_latitude");
      
          // 参数
          // jsonable参数
          CGFloat latitude = [args[@"latitude"] floatValue];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapGeoPoint * ref = (AMapGeoPoint *) HEAP[@(refId)];
      
          ref.latitude = latitude;
          methodResult(@"success");
      },
      
      @"AMapGeoPoint::set_longitude": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapGeoPoint::set_longitude");
      
          // 参数
          // jsonable参数
          CGFloat longitude = [args[@"longitude"] floatValue];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapGeoPoint * ref = (AMapGeoPoint *) HEAP[@(refId)];
      
          ref.longitude = longitude;
          methodResult(@"success");
      },
      
      @"AMapCity::set_city": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapCity::set_city");
      
          // 参数
          // jsonable参数
          NSString * city = (NSString *) args[@"city"];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapCity * ref = (AMapCity *) HEAP[@(refId)];
      
          ref.city = city;
          methodResult(@"success");
      },
      
      @"AMapCity::set_citycode": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapCity::set_citycode");
      
          // 参数
          // jsonable参数
          NSString * citycode = (NSString *) args[@"citycode"];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapCity * ref = (AMapCity *) HEAP[@(refId)];
      
          ref.citycode = citycode;
          methodResult(@"success");
      },
      
      @"AMapCity::set_adcode": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapCity::set_adcode");
      
          // 参数
          // jsonable参数
          NSString * adcode = (NSString *) args[@"adcode"];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapCity * ref = (AMapCity *) HEAP[@(refId)];
      
          ref.adcode = adcode;
          methodResult(@"success");
      },
      
      @"AMapCity::set_num": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapCity::set_num");
      
          // 参数
          // jsonable参数
          NSInteger num = [args[@"num"] integerValue];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapCity * ref = (AMapCity *) HEAP[@(refId)];
      
          ref.num = num;
          methodResult(@"success");
      },
      
      @"AMapTip::set_uid": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapTip::set_uid");
      
          // 参数
          // jsonable参数
          NSString * uid = (NSString *) args[@"uid"];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapTip * ref = (AMapTip *) HEAP[@(refId)];
      
          ref.uid = uid;
          methodResult(@"success");
      },
      
      @"AMapTip::set_name": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapTip::set_name");
      
          // 参数
          // jsonable参数
          NSString * name = (NSString *) args[@"name"];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapTip * ref = (AMapTip *) HEAP[@(refId)];
      
          ref.name = name;
          methodResult(@"success");
      },
      
      @"AMapTip::set_adcode": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapTip::set_adcode");
      
          // 参数
          // jsonable参数
          NSString * adcode = (NSString *) args[@"adcode"];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapTip * ref = (AMapTip *) HEAP[@(refId)];
      
          ref.adcode = adcode;
          methodResult(@"success");
      },
      
      @"AMapTip::set_district": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapTip::set_district");
      
          // 参数
          // jsonable参数
          NSString * district = (NSString *) args[@"district"];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapTip * ref = (AMapTip *) HEAP[@(refId)];
      
          ref.district = district;
          methodResult(@"success");
      },
      
      @"AMapTip::set_address": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapTip::set_address");
      
          // 参数
          // jsonable参数
          NSString * address = (NSString *) args[@"address"];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapTip * ref = (AMapTip *) HEAP[@(refId)];
      
          ref.address = address;
          methodResult(@"success");
      },
      
      @"AMapTip::set_location": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapTip::set_location");
      
          // 参数
          // 引用参数
          AMapGeoPoint * location = (AMapGeoPoint *) HEAP[@([args[@"location"] integerValue])];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapTip * ref = (AMapTip *) HEAP[@(refId)];
      
          ref.location = location;
          methodResult(@"success");
      },
      
      @"AMapTip::set_typecode": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapTip::set_typecode");
      
          // 参数
          // jsonable参数
          NSString * typecode = (NSString *) args[@"typecode"];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapTip * ref = (AMapTip *) HEAP[@(refId)];
      
          ref.typecode = typecode;
          methodResult(@"success");
      },
      
      @"AMapImage::set_title": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapImage::set_title");
      
          // 参数
          // jsonable参数
          NSString * title = (NSString *) args[@"title"];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapImage * ref = (AMapImage *) HEAP[@(refId)];
      
          ref.title = title;
          methodResult(@"success");
      },
      
      @"AMapImage::set_url": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapImage::set_url");
      
          // 参数
          // jsonable参数
          NSString * url = (NSString *) args[@"url"];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapImage * ref = (AMapImage *) HEAP[@(refId)];
      
          ref.url = url;
          methodResult(@"success");
      },
      
      @"AMapPOIExtension::set_rating": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapPOIExtension::set_rating");
      
          // 参数
          // jsonable参数
          CGFloat rating = [args[@"rating"] floatValue];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapPOIExtension * ref = (AMapPOIExtension *) HEAP[@(refId)];
      
          ref.rating = rating;
          methodResult(@"success");
      },
      
      @"AMapPOIExtension::set_cost": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapPOIExtension::set_cost");
      
          // 参数
          // jsonable参数
          CGFloat cost = [args[@"cost"] floatValue];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapPOIExtension * ref = (AMapPOIExtension *) HEAP[@(refId)];
      
          ref.cost = cost;
          methodResult(@"success");
      },
      
      @"AMapPOIExtension::set_openTime": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapPOIExtension::set_openTime");
      
          // 参数
          // jsonable参数
          NSString * openTime = (NSString *) args[@"openTime"];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapPOIExtension * ref = (AMapPOIExtension *) HEAP[@(refId)];
      
          ref.openTime = openTime;
          methodResult(@"success");
      },
      
      @"AMapIndoorData::set_floor": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapIndoorData::set_floor");
      
          // 参数
          // jsonable参数
          NSInteger floor = [args[@"floor"] integerValue];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapIndoorData * ref = (AMapIndoorData *) HEAP[@(refId)];
      
          ref.floor = floor;
          methodResult(@"success");
      },
      
      @"AMapIndoorData::set_floorName": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapIndoorData::set_floorName");
      
          // 参数
          // jsonable参数
          NSString * floorName = (NSString *) args[@"floorName"];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapIndoorData * ref = (AMapIndoorData *) HEAP[@(refId)];
      
          ref.floorName = floorName;
          methodResult(@"success");
      },
      
      @"AMapIndoorData::set_pid": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapIndoorData::set_pid");
      
          // 参数
          // jsonable参数
          NSString * pid = (NSString *) args[@"pid"];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapIndoorData * ref = (AMapIndoorData *) HEAP[@(refId)];
      
          ref.pid = pid;
          methodResult(@"success");
      },
      
      @"AMapSubPOI::set_uid": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapSubPOI::set_uid");
      
          // 参数
          // jsonable参数
          NSString * uid = (NSString *) args[@"uid"];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapSubPOI * ref = (AMapSubPOI *) HEAP[@(refId)];
      
          ref.uid = uid;
          methodResult(@"success");
      },
      
      @"AMapSubPOI::set_name": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapSubPOI::set_name");
      
          // 参数
          // jsonable参数
          NSString * name = (NSString *) args[@"name"];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapSubPOI * ref = (AMapSubPOI *) HEAP[@(refId)];
      
          ref.name = name;
          methodResult(@"success");
      },
      
      @"AMapSubPOI::set_sname": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapSubPOI::set_sname");
      
          // 参数
          // jsonable参数
          NSString * sname = (NSString *) args[@"sname"];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapSubPOI * ref = (AMapSubPOI *) HEAP[@(refId)];
      
          ref.sname = sname;
          methodResult(@"success");
      },
      
      @"AMapSubPOI::set_location": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapSubPOI::set_location");
      
          // 参数
          // 引用参数
          AMapGeoPoint * location = (AMapGeoPoint *) HEAP[@([args[@"location"] integerValue])];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapSubPOI * ref = (AMapSubPOI *) HEAP[@(refId)];
      
          ref.location = location;
          methodResult(@"success");
      },
      
      @"AMapSubPOI::set_address": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapSubPOI::set_address");
      
          // 参数
          // jsonable参数
          NSString * address = (NSString *) args[@"address"];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapSubPOI * ref = (AMapSubPOI *) HEAP[@(refId)];
      
          ref.address = address;
          methodResult(@"success");
      },
      
      @"AMapSubPOI::set_distance": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapSubPOI::set_distance");
      
          // 参数
          // jsonable参数
          NSInteger distance = [args[@"distance"] integerValue];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapSubPOI * ref = (AMapSubPOI *) HEAP[@(refId)];
      
          ref.distance = distance;
          methodResult(@"success");
      },
      
      @"AMapSubPOI::set_subtype": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapSubPOI::set_subtype");
      
          // 参数
          // jsonable参数
          NSString * subtype = (NSString *) args[@"subtype"];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapSubPOI * ref = (AMapSubPOI *) HEAP[@(refId)];
      
          ref.subtype = subtype;
          methodResult(@"success");
      },
      
      @"AMapRoutePOI::set_uid": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapRoutePOI::set_uid");
      
          // 参数
          // jsonable参数
          NSString * uid = (NSString *) args[@"uid"];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapRoutePOI * ref = (AMapRoutePOI *) HEAP[@(refId)];
      
          ref.uid = uid;
          methodResult(@"success");
      },
      
      @"AMapRoutePOI::set_name": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapRoutePOI::set_name");
      
          // 参数
          // jsonable参数
          NSString * name = (NSString *) args[@"name"];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapRoutePOI * ref = (AMapRoutePOI *) HEAP[@(refId)];
      
          ref.name = name;
          methodResult(@"success");
      },
      
      @"AMapRoutePOI::set_location": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapRoutePOI::set_location");
      
          // 参数
          // 引用参数
          AMapGeoPoint * location = (AMapGeoPoint *) HEAP[@([args[@"location"] integerValue])];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapRoutePOI * ref = (AMapRoutePOI *) HEAP[@(refId)];
      
          ref.location = location;
          methodResult(@"success");
      },
      
      @"AMapRoutePOI::set_distance": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapRoutePOI::set_distance");
      
          // 参数
          // jsonable参数
          NSInteger distance = [args[@"distance"] integerValue];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapRoutePOI * ref = (AMapRoutePOI *) HEAP[@(refId)];
      
          ref.distance = distance;
          methodResult(@"success");
      },
      
      @"AMapRoutePOI::set_duration": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapRoutePOI::set_duration");
      
          // 参数
          // jsonable参数
          NSInteger duration = [args[@"duration"] integerValue];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapRoutePOI * ref = (AMapRoutePOI *) HEAP[@(refId)];
      
          ref.duration = duration;
          methodResult(@"success");
      },
      
      @"AMapPOI::set_uid": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapPOI::set_uid");
      
          // 参数
          // jsonable参数
          NSString * uid = (NSString *) args[@"uid"];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapPOI * ref = (AMapPOI *) HEAP[@(refId)];
      
          ref.uid = uid;
          methodResult(@"success");
      },
      
      @"AMapPOI::set_name": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapPOI::set_name");
      
          // 参数
          // jsonable参数
          NSString * name = (NSString *) args[@"name"];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapPOI * ref = (AMapPOI *) HEAP[@(refId)];
      
          ref.name = name;
          methodResult(@"success");
      },
      
      @"AMapPOI::set_type": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapPOI::set_type");
      
          // 参数
          // jsonable参数
          NSString * type = (NSString *) args[@"type"];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapPOI * ref = (AMapPOI *) HEAP[@(refId)];
      
          ref.type = type;
          methodResult(@"success");
      },
      
      @"AMapPOI::set_typecode": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapPOI::set_typecode");
      
          // 参数
          // jsonable参数
          NSString * typecode = (NSString *) args[@"typecode"];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapPOI * ref = (AMapPOI *) HEAP[@(refId)];
      
          ref.typecode = typecode;
          methodResult(@"success");
      },
      
      @"AMapPOI::set_location": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapPOI::set_location");
      
          // 参数
          // 引用参数
          AMapGeoPoint * location = (AMapGeoPoint *) HEAP[@([args[@"location"] integerValue])];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapPOI * ref = (AMapPOI *) HEAP[@(refId)];
      
          ref.location = location;
          methodResult(@"success");
      },
      
      @"AMapPOI::set_address": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapPOI::set_address");
      
          // 参数
          // jsonable参数
          NSString * address = (NSString *) args[@"address"];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapPOI * ref = (AMapPOI *) HEAP[@(refId)];
      
          ref.address = address;
          methodResult(@"success");
      },
      
      @"AMapPOI::set_tel": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapPOI::set_tel");
      
          // 参数
          // jsonable参数
          NSString * tel = (NSString *) args[@"tel"];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapPOI * ref = (AMapPOI *) HEAP[@(refId)];
      
          ref.tel = tel;
          methodResult(@"success");
      },
      
      @"AMapPOI::set_distance": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapPOI::set_distance");
      
          // 参数
          // jsonable参数
          NSInteger distance = [args[@"distance"] integerValue];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapPOI * ref = (AMapPOI *) HEAP[@(refId)];
      
          ref.distance = distance;
          methodResult(@"success");
      },
      
      @"AMapPOI::set_parkingType": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapPOI::set_parkingType");
      
          // 参数
          // jsonable参数
          NSString * parkingType = (NSString *) args[@"parkingType"];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapPOI * ref = (AMapPOI *) HEAP[@(refId)];
      
          ref.parkingType = parkingType;
          methodResult(@"success");
      },
      
      @"AMapPOI::set_shopID": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapPOI::set_shopID");
      
          // 参数
          // jsonable参数
          NSString * shopID = (NSString *) args[@"shopID"];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapPOI * ref = (AMapPOI *) HEAP[@(refId)];
      
          ref.shopID = shopID;
          methodResult(@"success");
      },
      
      @"AMapPOI::set_postcode": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapPOI::set_postcode");
      
          // 参数
          // jsonable参数
          NSString * postcode = (NSString *) args[@"postcode"];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapPOI * ref = (AMapPOI *) HEAP[@(refId)];
      
          ref.postcode = postcode;
          methodResult(@"success");
      },
      
      @"AMapPOI::set_website": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapPOI::set_website");
      
          // 参数
          // jsonable参数
          NSString * website = (NSString *) args[@"website"];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapPOI * ref = (AMapPOI *) HEAP[@(refId)];
      
          ref.website = website;
          methodResult(@"success");
      },
      
      @"AMapPOI::set_email": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapPOI::set_email");
      
          // 参数
          // jsonable参数
          NSString * email = (NSString *) args[@"email"];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapPOI * ref = (AMapPOI *) HEAP[@(refId)];
      
          ref.email = email;
          methodResult(@"success");
      },
      
      @"AMapPOI::set_province": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapPOI::set_province");
      
          // 参数
          // jsonable参数
          NSString * province = (NSString *) args[@"province"];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapPOI * ref = (AMapPOI *) HEAP[@(refId)];
      
          ref.province = province;
          methodResult(@"success");
      },
      
      @"AMapPOI::set_pcode": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapPOI::set_pcode");
      
          // 参数
          // jsonable参数
          NSString * pcode = (NSString *) args[@"pcode"];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapPOI * ref = (AMapPOI *) HEAP[@(refId)];
      
          ref.pcode = pcode;
          methodResult(@"success");
      },
      
      @"AMapPOI::set_city": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapPOI::set_city");
      
          // 参数
          // jsonable参数
          NSString * city = (NSString *) args[@"city"];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapPOI * ref = (AMapPOI *) HEAP[@(refId)];
      
          ref.city = city;
          methodResult(@"success");
      },
      
      @"AMapPOI::set_citycode": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapPOI::set_citycode");
      
          // 参数
          // jsonable参数
          NSString * citycode = (NSString *) args[@"citycode"];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapPOI * ref = (AMapPOI *) HEAP[@(refId)];
      
          ref.citycode = citycode;
          methodResult(@"success");
      },
      
      @"AMapPOI::set_district": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapPOI::set_district");
      
          // 参数
          // jsonable参数
          NSString * district = (NSString *) args[@"district"];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapPOI * ref = (AMapPOI *) HEAP[@(refId)];
      
          ref.district = district;
          methodResult(@"success");
      },
      
      @"AMapPOI::set_adcode": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapPOI::set_adcode");
      
          // 参数
          // jsonable参数
          NSString * adcode = (NSString *) args[@"adcode"];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapPOI * ref = (AMapPOI *) HEAP[@(refId)];
      
          ref.adcode = adcode;
          methodResult(@"success");
      },
      
      @"AMapPOI::set_gridcode": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapPOI::set_gridcode");
      
          // 参数
          // jsonable参数
          NSString * gridcode = (NSString *) args[@"gridcode"];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapPOI * ref = (AMapPOI *) HEAP[@(refId)];
      
          ref.gridcode = gridcode;
          methodResult(@"success");
      },
      
      @"AMapPOI::set_enterLocation": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapPOI::set_enterLocation");
      
          // 参数
          // 引用参数
          AMapGeoPoint * enterLocation = (AMapGeoPoint *) HEAP[@([args[@"enterLocation"] integerValue])];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapPOI * ref = (AMapPOI *) HEAP[@(refId)];
      
          ref.enterLocation = enterLocation;
          methodResult(@"success");
      },
      
      @"AMapPOI::set_exitLocation": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapPOI::set_exitLocation");
      
          // 参数
          // 引用参数
          AMapGeoPoint * exitLocation = (AMapGeoPoint *) HEAP[@([args[@"exitLocation"] integerValue])];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapPOI * ref = (AMapPOI *) HEAP[@(refId)];
      
          ref.exitLocation = exitLocation;
          methodResult(@"success");
      },
      
      @"AMapPOI::set_direction": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapPOI::set_direction");
      
          // 参数
          // jsonable参数
          NSString * direction = (NSString *) args[@"direction"];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapPOI * ref = (AMapPOI *) HEAP[@(refId)];
      
          ref.direction = direction;
          methodResult(@"success");
      },
      
      @"AMapPOI::set_hasIndoorMap": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapPOI::set_hasIndoorMap");
      
          // 参数
          // jsonable参数
          BOOL hasIndoorMap = [args[@"hasIndoorMap"] boolValue];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapPOI * ref = (AMapPOI *) HEAP[@(refId)];
      
          ref.hasIndoorMap = hasIndoorMap;
          methodResult(@"success");
      },
      
      @"AMapPOI::set_businessArea": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapPOI::set_businessArea");
      
          // 参数
          // jsonable参数
          NSString * businessArea = (NSString *) args[@"businessArea"];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapPOI * ref = (AMapPOI *) HEAP[@(refId)];
      
          ref.businessArea = businessArea;
          methodResult(@"success");
      },
      
      @"AMapPOI::set_indoorData": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapPOI::set_indoorData");
      
          // 参数
          // 引用参数
          AMapIndoorData * indoorData = (AMapIndoorData *) HEAP[@([args[@"indoorData"] integerValue])];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapPOI * ref = (AMapPOI *) HEAP[@(refId)];
      
          ref.indoorData = indoorData;
          methodResult(@"success");
      },
      
      @"AMapPOI::set_extensionInfo": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapPOI::set_extensionInfo");
      
          // 参数
          // 引用参数
          AMapPOIExtension * extensionInfo = (AMapPOIExtension *) HEAP[@([args[@"extensionInfo"] integerValue])];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapPOI * ref = (AMapPOI *) HEAP[@(refId)];
      
          ref.extensionInfo = extensionInfo;
          methodResult(@"success");
      },
      
      @"AMapAOI::set_uid": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapAOI::set_uid");
      
          // 参数
          // jsonable参数
          NSString * uid = (NSString *) args[@"uid"];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapAOI * ref = (AMapAOI *) HEAP[@(refId)];
      
          ref.uid = uid;
          methodResult(@"success");
      },
      
      @"AMapAOI::set_name": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapAOI::set_name");
      
          // 参数
          // jsonable参数
          NSString * name = (NSString *) args[@"name"];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapAOI * ref = (AMapAOI *) HEAP[@(refId)];
      
          ref.name = name;
          methodResult(@"success");
      },
      
      @"AMapAOI::set_adcode": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapAOI::set_adcode");
      
          // 参数
          // jsonable参数
          NSString * adcode = (NSString *) args[@"adcode"];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapAOI * ref = (AMapAOI *) HEAP[@(refId)];
      
          ref.adcode = adcode;
          methodResult(@"success");
      },
      
      @"AMapAOI::set_location": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapAOI::set_location");
      
          // 参数
          // 引用参数
          AMapGeoPoint * location = (AMapGeoPoint *) HEAP[@([args[@"location"] integerValue])];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapAOI * ref = (AMapAOI *) HEAP[@(refId)];
      
          ref.location = location;
          methodResult(@"success");
      },
      
      @"AMapAOI::set_area": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapAOI::set_area");
      
          // 参数
          // jsonable参数
          CGFloat area = [args[@"area"] floatValue];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapAOI * ref = (AMapAOI *) HEAP[@(refId)];
      
          ref.area = area;
          methodResult(@"success");
      },
      
      @"AMapRoad::set_uid": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapRoad::set_uid");
      
          // 参数
          // jsonable参数
          NSString * uid = (NSString *) args[@"uid"];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapRoad * ref = (AMapRoad *) HEAP[@(refId)];
      
          ref.uid = uid;
          methodResult(@"success");
      },
      
      @"AMapRoad::set_name": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapRoad::set_name");
      
          // 参数
          // jsonable参数
          NSString * name = (NSString *) args[@"name"];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapRoad * ref = (AMapRoad *) HEAP[@(refId)];
      
          ref.name = name;
          methodResult(@"success");
      },
      
      @"AMapRoad::set_distance": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapRoad::set_distance");
      
          // 参数
          // jsonable参数
          NSInteger distance = [args[@"distance"] integerValue];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapRoad * ref = (AMapRoad *) HEAP[@(refId)];
      
          ref.distance = distance;
          methodResult(@"success");
      },
      
      @"AMapRoad::set_direction": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapRoad::set_direction");
      
          // 参数
          // jsonable参数
          NSString * direction = (NSString *) args[@"direction"];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapRoad * ref = (AMapRoad *) HEAP[@(refId)];
      
          ref.direction = direction;
          methodResult(@"success");
      },
      
      @"AMapRoad::set_location": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapRoad::set_location");
      
          // 参数
          // 引用参数
          AMapGeoPoint * location = (AMapGeoPoint *) HEAP[@([args[@"location"] integerValue])];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapRoad * ref = (AMapRoad *) HEAP[@(refId)];
      
          ref.location = location;
          methodResult(@"success");
      },
      
      @"AMapRoadInter::set_distance": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapRoadInter::set_distance");
      
          // 参数
          // jsonable参数
          NSInteger distance = [args[@"distance"] integerValue];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapRoadInter * ref = (AMapRoadInter *) HEAP[@(refId)];
      
          ref.distance = distance;
          methodResult(@"success");
      },
      
      @"AMapRoadInter::set_direction": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapRoadInter::set_direction");
      
          // 参数
          // jsonable参数
          NSString * direction = (NSString *) args[@"direction"];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapRoadInter * ref = (AMapRoadInter *) HEAP[@(refId)];
      
          ref.direction = direction;
          methodResult(@"success");
      },
      
      @"AMapRoadInter::set_location": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapRoadInter::set_location");
      
          // 参数
          // 引用参数
          AMapGeoPoint * location = (AMapGeoPoint *) HEAP[@([args[@"location"] integerValue])];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapRoadInter * ref = (AMapRoadInter *) HEAP[@(refId)];
      
          ref.location = location;
          methodResult(@"success");
      },
      
      @"AMapRoadInter::set_firstId": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapRoadInter::set_firstId");
      
          // 参数
          // jsonable参数
          NSString * firstId = (NSString *) args[@"firstId"];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapRoadInter * ref = (AMapRoadInter *) HEAP[@(refId)];
      
          ref.firstId = firstId;
          methodResult(@"success");
      },
      
      @"AMapRoadInter::set_firstName": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapRoadInter::set_firstName");
      
          // 参数
          // jsonable参数
          NSString * firstName = (NSString *) args[@"firstName"];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapRoadInter * ref = (AMapRoadInter *) HEAP[@(refId)];
      
          ref.firstName = firstName;
          methodResult(@"success");
      },
      
      @"AMapRoadInter::set_secondId": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapRoadInter::set_secondId");
      
          // 参数
          // jsonable参数
          NSString * secondId = (NSString *) args[@"secondId"];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapRoadInter * ref = (AMapRoadInter *) HEAP[@(refId)];
      
          ref.secondId = secondId;
          methodResult(@"success");
      },
      
      @"AMapRoadInter::set_secondName": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapRoadInter::set_secondName");
      
          // 参数
          // jsonable参数
          NSString * secondName = (NSString *) args[@"secondName"];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapRoadInter * ref = (AMapRoadInter *) HEAP[@(refId)];
      
          ref.secondName = secondName;
          methodResult(@"success");
      },
      
      @"AMapStreetNumber::set_street": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapStreetNumber::set_street");
      
          // 参数
          // jsonable参数
          NSString * street = (NSString *) args[@"street"];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapStreetNumber * ref = (AMapStreetNumber *) HEAP[@(refId)];
      
          ref.street = street;
          methodResult(@"success");
      },
      
      @"AMapStreetNumber::set_number": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapStreetNumber::set_number");
      
          // 参数
          // jsonable参数
          NSString * number = (NSString *) args[@"number"];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapStreetNumber * ref = (AMapStreetNumber *) HEAP[@(refId)];
      
          ref.number = number;
          methodResult(@"success");
      },
      
      @"AMapStreetNumber::set_location": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapStreetNumber::set_location");
      
          // 参数
          // 引用参数
          AMapGeoPoint * location = (AMapGeoPoint *) HEAP[@([args[@"location"] integerValue])];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapStreetNumber * ref = (AMapStreetNumber *) HEAP[@(refId)];
      
          ref.location = location;
          methodResult(@"success");
      },
      
      @"AMapStreetNumber::set_distance": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapStreetNumber::set_distance");
      
          // 参数
          // jsonable参数
          NSInteger distance = [args[@"distance"] integerValue];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapStreetNumber * ref = (AMapStreetNumber *) HEAP[@(refId)];
      
          ref.distance = distance;
          methodResult(@"success");
      },
      
      @"AMapStreetNumber::set_direction": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapStreetNumber::set_direction");
      
          // 参数
          // jsonable参数
          NSString * direction = (NSString *) args[@"direction"];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapStreetNumber * ref = (AMapStreetNumber *) HEAP[@(refId)];
      
          ref.direction = direction;
          methodResult(@"success");
      },
      
      @"AMapBusinessArea::set_name": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapBusinessArea::set_name");
      
          // 参数
          // jsonable参数
          NSString * name = (NSString *) args[@"name"];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapBusinessArea * ref = (AMapBusinessArea *) HEAP[@(refId)];
      
          ref.name = name;
          methodResult(@"success");
      },
      
      @"AMapBusinessArea::set_location": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapBusinessArea::set_location");
      
          // 参数
          // 引用参数
          AMapGeoPoint * location = (AMapGeoPoint *) HEAP[@([args[@"location"] integerValue])];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapBusinessArea * ref = (AMapBusinessArea *) HEAP[@(refId)];
      
          ref.location = location;
          methodResult(@"success");
      },
      
      @"AMapAddressComponent::set_country": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapAddressComponent::set_country");
      
          // 参数
          // jsonable参数
          NSString * country = (NSString *) args[@"country"];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapAddressComponent * ref = (AMapAddressComponent *) HEAP[@(refId)];
      
          ref.country = country;
          methodResult(@"success");
      },
      
      @"AMapAddressComponent::set_province": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapAddressComponent::set_province");
      
          // 参数
          // jsonable参数
          NSString * province = (NSString *) args[@"province"];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapAddressComponent * ref = (AMapAddressComponent *) HEAP[@(refId)];
      
          ref.province = province;
          methodResult(@"success");
      },
      
      @"AMapAddressComponent::set_city": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapAddressComponent::set_city");
      
          // 参数
          // jsonable参数
          NSString * city = (NSString *) args[@"city"];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapAddressComponent * ref = (AMapAddressComponent *) HEAP[@(refId)];
      
          ref.city = city;
          methodResult(@"success");
      },
      
      @"AMapAddressComponent::set_citycode": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapAddressComponent::set_citycode");
      
          // 参数
          // jsonable参数
          NSString * citycode = (NSString *) args[@"citycode"];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapAddressComponent * ref = (AMapAddressComponent *) HEAP[@(refId)];
      
          ref.citycode = citycode;
          methodResult(@"success");
      },
      
      @"AMapAddressComponent::set_district": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapAddressComponent::set_district");
      
          // 参数
          // jsonable参数
          NSString * district = (NSString *) args[@"district"];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapAddressComponent * ref = (AMapAddressComponent *) HEAP[@(refId)];
      
          ref.district = district;
          methodResult(@"success");
      },
      
      @"AMapAddressComponent::set_adcode": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapAddressComponent::set_adcode");
      
          // 参数
          // jsonable参数
          NSString * adcode = (NSString *) args[@"adcode"];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapAddressComponent * ref = (AMapAddressComponent *) HEAP[@(refId)];
      
          ref.adcode = adcode;
          methodResult(@"success");
      },
      
      @"AMapAddressComponent::set_township": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapAddressComponent::set_township");
      
          // 参数
          // jsonable参数
          NSString * township = (NSString *) args[@"township"];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapAddressComponent * ref = (AMapAddressComponent *) HEAP[@(refId)];
      
          ref.township = township;
          methodResult(@"success");
      },
      
      @"AMapAddressComponent::set_towncode": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapAddressComponent::set_towncode");
      
          // 参数
          // jsonable参数
          NSString * towncode = (NSString *) args[@"towncode"];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapAddressComponent * ref = (AMapAddressComponent *) HEAP[@(refId)];
      
          ref.towncode = towncode;
          methodResult(@"success");
      },
      
      @"AMapAddressComponent::set_neighborhood": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapAddressComponent::set_neighborhood");
      
          // 参数
          // jsonable参数
          NSString * neighborhood = (NSString *) args[@"neighborhood"];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapAddressComponent * ref = (AMapAddressComponent *) HEAP[@(refId)];
      
          ref.neighborhood = neighborhood;
          methodResult(@"success");
      },
      
      @"AMapAddressComponent::set_building": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapAddressComponent::set_building");
      
          // 参数
          // jsonable参数
          NSString * building = (NSString *) args[@"building"];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapAddressComponent * ref = (AMapAddressComponent *) HEAP[@(refId)];
      
          ref.building = building;
          methodResult(@"success");
      },
      
      @"AMapAddressComponent::set_streetNumber": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapAddressComponent::set_streetNumber");
      
          // 参数
          // 引用参数
          AMapStreetNumber * streetNumber = (AMapStreetNumber *) HEAP[@([args[@"streetNumber"] integerValue])];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapAddressComponent * ref = (AMapAddressComponent *) HEAP[@(refId)];
      
          ref.streetNumber = streetNumber;
          methodResult(@"success");
      },
      
      @"AMapReGeocode::set_formattedAddress": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapReGeocode::set_formattedAddress");
      
          // 参数
          // jsonable参数
          NSString * formattedAddress = (NSString *) args[@"formattedAddress"];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapReGeocode * ref = (AMapReGeocode *) HEAP[@(refId)];
      
          ref.formattedAddress = formattedAddress;
          methodResult(@"success");
      },
      
      @"AMapReGeocode::set_addressComponent": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapReGeocode::set_addressComponent");
      
          // 参数
          // 引用参数
          AMapAddressComponent * addressComponent = (AMapAddressComponent *) HEAP[@([args[@"addressComponent"] integerValue])];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapReGeocode * ref = (AMapReGeocode *) HEAP[@(refId)];
      
          ref.addressComponent = addressComponent;
          methodResult(@"success");
      },
      
      @"AMapGeocode::set_formattedAddress": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapGeocode::set_formattedAddress");
      
          // 参数
          // jsonable参数
          NSString * formattedAddress = (NSString *) args[@"formattedAddress"];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapGeocode * ref = (AMapGeocode *) HEAP[@(refId)];
      
          ref.formattedAddress = formattedAddress;
          methodResult(@"success");
      },
      
      @"AMapGeocode::set_province": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapGeocode::set_province");
      
          // 参数
          // jsonable参数
          NSString * province = (NSString *) args[@"province"];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapGeocode * ref = (AMapGeocode *) HEAP[@(refId)];
      
          ref.province = province;
          methodResult(@"success");
      },
      
      @"AMapGeocode::set_city": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapGeocode::set_city");
      
          // 参数
          // jsonable参数
          NSString * city = (NSString *) args[@"city"];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapGeocode * ref = (AMapGeocode *) HEAP[@(refId)];
      
          ref.city = city;
          methodResult(@"success");
      },
      
      @"AMapGeocode::set_citycode": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapGeocode::set_citycode");
      
          // 参数
          // jsonable参数
          NSString * citycode = (NSString *) args[@"citycode"];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapGeocode * ref = (AMapGeocode *) HEAP[@(refId)];
      
          ref.citycode = citycode;
          methodResult(@"success");
      },
      
      @"AMapGeocode::set_district": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapGeocode::set_district");
      
          // 参数
          // jsonable参数
          NSString * district = (NSString *) args[@"district"];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapGeocode * ref = (AMapGeocode *) HEAP[@(refId)];
      
          ref.district = district;
          methodResult(@"success");
      },
      
      @"AMapGeocode::set_adcode": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapGeocode::set_adcode");
      
          // 参数
          // jsonable参数
          NSString * adcode = (NSString *) args[@"adcode"];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapGeocode * ref = (AMapGeocode *) HEAP[@(refId)];
      
          ref.adcode = adcode;
          methodResult(@"success");
      },
      
      @"AMapGeocode::set_township": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapGeocode::set_township");
      
          // 参数
          // jsonable参数
          NSString * township = (NSString *) args[@"township"];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapGeocode * ref = (AMapGeocode *) HEAP[@(refId)];
      
          ref.township = township;
          methodResult(@"success");
      },
      
      @"AMapGeocode::set_neighborhood": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapGeocode::set_neighborhood");
      
          // 参数
          // jsonable参数
          NSString * neighborhood = (NSString *) args[@"neighborhood"];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapGeocode * ref = (AMapGeocode *) HEAP[@(refId)];
      
          ref.neighborhood = neighborhood;
          methodResult(@"success");
      },
      
      @"AMapGeocode::set_building": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapGeocode::set_building");
      
          // 参数
          // jsonable参数
          NSString * building = (NSString *) args[@"building"];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapGeocode * ref = (AMapGeocode *) HEAP[@(refId)];
      
          ref.building = building;
          methodResult(@"success");
      },
      
      @"AMapGeocode::set_location": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapGeocode::set_location");
      
          // 参数
          // 引用参数
          AMapGeoPoint * location = (AMapGeoPoint *) HEAP[@([args[@"location"] integerValue])];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapGeocode * ref = (AMapGeocode *) HEAP[@(refId)];
      
          ref.location = location;
          methodResult(@"success");
      },
      
      @"AMapGeocode::set_level": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapGeocode::set_level");
      
          // 参数
          // jsonable参数
          NSString * level = (NSString *) args[@"level"];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapGeocode * ref = (AMapGeocode *) HEAP[@(refId)];
      
          ref.level = level;
          methodResult(@"success");
      },
      
      @"AMapBusStop::set_uid": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapBusStop::set_uid");
      
          // 参数
          // jsonable参数
          NSString * uid = (NSString *) args[@"uid"];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapBusStop * ref = (AMapBusStop *) HEAP[@(refId)];
      
          ref.uid = uid;
          methodResult(@"success");
      },
      
      @"AMapBusStop::set_adcode": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapBusStop::set_adcode");
      
          // 参数
          // jsonable参数
          NSString * adcode = (NSString *) args[@"adcode"];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapBusStop * ref = (AMapBusStop *) HEAP[@(refId)];
      
          ref.adcode = adcode;
          methodResult(@"success");
      },
      
      @"AMapBusStop::set_name": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapBusStop::set_name");
      
          // 参数
          // jsonable参数
          NSString * name = (NSString *) args[@"name"];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapBusStop * ref = (AMapBusStop *) HEAP[@(refId)];
      
          ref.name = name;
          methodResult(@"success");
      },
      
      @"AMapBusStop::set_citycode": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapBusStop::set_citycode");
      
          // 参数
          // jsonable参数
          NSString * citycode = (NSString *) args[@"citycode"];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapBusStop * ref = (AMapBusStop *) HEAP[@(refId)];
      
          ref.citycode = citycode;
          methodResult(@"success");
      },
      
      @"AMapBusStop::set_location": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapBusStop::set_location");
      
          // 参数
          // 引用参数
          AMapGeoPoint * location = (AMapGeoPoint *) HEAP[@([args[@"location"] integerValue])];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapBusStop * ref = (AMapBusStop *) HEAP[@(refId)];
      
          ref.location = location;
          methodResult(@"success");
      },
      
      @"AMapBusStop::set_sequence": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapBusStop::set_sequence");
      
          // 参数
          // jsonable参数
          NSString * sequence = (NSString *) args[@"sequence"];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapBusStop * ref = (AMapBusStop *) HEAP[@(refId)];
      
          ref.sequence = sequence;
          methodResult(@"success");
      },
      
      @"AMapBusLine::set_uid": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapBusLine::set_uid");
      
          // 参数
          // jsonable参数
          NSString * uid = (NSString *) args[@"uid"];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapBusLine * ref = (AMapBusLine *) HEAP[@(refId)];
      
          ref.uid = uid;
          methodResult(@"success");
      },
      
      @"AMapBusLine::set_type": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapBusLine::set_type");
      
          // 参数
          // jsonable参数
          NSString * type = (NSString *) args[@"type"];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapBusLine * ref = (AMapBusLine *) HEAP[@(refId)];
      
          ref.type = type;
          methodResult(@"success");
      },
      
      @"AMapBusLine::set_name": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapBusLine::set_name");
      
          // 参数
          // jsonable参数
          NSString * name = (NSString *) args[@"name"];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapBusLine * ref = (AMapBusLine *) HEAP[@(refId)];
      
          ref.name = name;
          methodResult(@"success");
      },
      
      @"AMapBusLine::set_polyline": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapBusLine::set_polyline");
      
          // 参数
          // jsonable参数
          NSString * polyline = (NSString *) args[@"polyline"];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapBusLine * ref = (AMapBusLine *) HEAP[@(refId)];
      
          ref.polyline = polyline;
          methodResult(@"success");
      },
      
      @"AMapBusLine::set_citycode": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapBusLine::set_citycode");
      
          // 参数
          // jsonable参数
          NSString * citycode = (NSString *) args[@"citycode"];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapBusLine * ref = (AMapBusLine *) HEAP[@(refId)];
      
          ref.citycode = citycode;
          methodResult(@"success");
      },
      
      @"AMapBusLine::set_startStop": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapBusLine::set_startStop");
      
          // 参数
          // jsonable参数
          NSString * startStop = (NSString *) args[@"startStop"];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapBusLine * ref = (AMapBusLine *) HEAP[@(refId)];
      
          ref.startStop = startStop;
          methodResult(@"success");
      },
      
      @"AMapBusLine::set_endStop": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapBusLine::set_endStop");
      
          // 参数
          // jsonable参数
          NSString * endStop = (NSString *) args[@"endStop"];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapBusLine * ref = (AMapBusLine *) HEAP[@(refId)];
      
          ref.endStop = endStop;
          methodResult(@"success");
      },
      
      @"AMapBusLine::set_location": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapBusLine::set_location");
      
          // 参数
          // 引用参数
          AMapGeoPoint * location = (AMapGeoPoint *) HEAP[@([args[@"location"] integerValue])];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapBusLine * ref = (AMapBusLine *) HEAP[@(refId)];
      
          ref.location = location;
          methodResult(@"success");
      },
      
      @"AMapBusLine::set_startTime": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapBusLine::set_startTime");
      
          // 参数
          // jsonable参数
          NSString * startTime = (NSString *) args[@"startTime"];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapBusLine * ref = (AMapBusLine *) HEAP[@(refId)];
      
          ref.startTime = startTime;
          methodResult(@"success");
      },
      
      @"AMapBusLine::set_endTime": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapBusLine::set_endTime");
      
          // 参数
          // jsonable参数
          NSString * endTime = (NSString *) args[@"endTime"];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapBusLine * ref = (AMapBusLine *) HEAP[@(refId)];
      
          ref.endTime = endTime;
          methodResult(@"success");
      },
      
      @"AMapBusLine::set_company": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapBusLine::set_company");
      
          // 参数
          // jsonable参数
          NSString * company = (NSString *) args[@"company"];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapBusLine * ref = (AMapBusLine *) HEAP[@(refId)];
      
          ref.company = company;
          methodResult(@"success");
      },
      
      @"AMapBusLine::set_distance": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapBusLine::set_distance");
      
          // 参数
          // jsonable参数
          CGFloat distance = [args[@"distance"] floatValue];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapBusLine * ref = (AMapBusLine *) HEAP[@(refId)];
      
          ref.distance = distance;
          methodResult(@"success");
      },
      
      @"AMapBusLine::set_basicPrice": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapBusLine::set_basicPrice");
      
          // 参数
          // jsonable参数
          CGFloat basicPrice = [args[@"basicPrice"] floatValue];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapBusLine * ref = (AMapBusLine *) HEAP[@(refId)];
      
          ref.basicPrice = basicPrice;
          methodResult(@"success");
      },
      
      @"AMapBusLine::set_totalPrice": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapBusLine::set_totalPrice");
      
          // 参数
          // jsonable参数
          CGFloat totalPrice = [args[@"totalPrice"] floatValue];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapBusLine * ref = (AMapBusLine *) HEAP[@(refId)];
      
          ref.totalPrice = totalPrice;
          methodResult(@"success");
      },
      
      @"AMapBusLine::set_bounds": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapBusLine::set_bounds");
      
          // 参数
          // 引用参数
          AMapGeoPolygon * bounds = (AMapGeoPolygon *) HEAP[@([args[@"bounds"] integerValue])];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapBusLine * ref = (AMapBusLine *) HEAP[@(refId)];
      
          ref.bounds = bounds;
          methodResult(@"success");
      },
      
      @"AMapBusLine::set_departureStop": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapBusLine::set_departureStop");
      
          // 参数
          // 引用参数
          AMapBusStop * departureStop = (AMapBusStop *) HEAP[@([args[@"departureStop"] integerValue])];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapBusLine * ref = (AMapBusLine *) HEAP[@(refId)];
      
          ref.departureStop = departureStop;
          methodResult(@"success");
      },
      
      @"AMapBusLine::set_arrivalStop": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapBusLine::set_arrivalStop");
      
          // 参数
          // 引用参数
          AMapBusStop * arrivalStop = (AMapBusStop *) HEAP[@([args[@"arrivalStop"] integerValue])];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapBusLine * ref = (AMapBusLine *) HEAP[@(refId)];
      
          ref.arrivalStop = arrivalStop;
          methodResult(@"success");
      },
      
      @"AMapBusLine::set_duration": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapBusLine::set_duration");
      
          // 参数
          // jsonable参数
          NSInteger duration = [args[@"duration"] integerValue];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapBusLine * ref = (AMapBusLine *) HEAP[@(refId)];
      
          ref.duration = duration;
          methodResult(@"success");
      },
      
      @"AMapDistrict::set_adcode": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapDistrict::set_adcode");
      
          // 参数
          // jsonable参数
          NSString * adcode = (NSString *) args[@"adcode"];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapDistrict * ref = (AMapDistrict *) HEAP[@(refId)];
      
          ref.adcode = adcode;
          methodResult(@"success");
      },
      
      @"AMapDistrict::set_citycode": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapDistrict::set_citycode");
      
          // 参数
          // jsonable参数
          NSString * citycode = (NSString *) args[@"citycode"];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapDistrict * ref = (AMapDistrict *) HEAP[@(refId)];
      
          ref.citycode = citycode;
          methodResult(@"success");
      },
      
      @"AMapDistrict::set_name": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapDistrict::set_name");
      
          // 参数
          // jsonable参数
          NSString * name = (NSString *) args[@"name"];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapDistrict * ref = (AMapDistrict *) HEAP[@(refId)];
      
          ref.name = name;
          methodResult(@"success");
      },
      
      @"AMapDistrict::set_level": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapDistrict::set_level");
      
          // 参数
          // jsonable参数
          NSString * level = (NSString *) args[@"level"];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapDistrict * ref = (AMapDistrict *) HEAP[@(refId)];
      
          ref.level = level;
          methodResult(@"success");
      },
      
      @"AMapDistrict::set_center": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapDistrict::set_center");
      
          // 参数
          // 引用参数
          AMapGeoPoint * center = (AMapGeoPoint *) HEAP[@([args[@"center"] integerValue])];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapDistrict * ref = (AMapDistrict *) HEAP[@(refId)];
      
          ref.center = center;
          methodResult(@"success");
      },
      
      @"AMapTMC::set_distance": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapTMC::set_distance");
      
          // 参数
          // jsonable参数
          NSInteger distance = [args[@"distance"] integerValue];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapTMC * ref = (AMapTMC *) HEAP[@(refId)];
      
          ref.distance = distance;
          methodResult(@"success");
      },
      
      @"AMapTMC::set_status": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapTMC::set_status");
      
          // 参数
          // jsonable参数
          NSString * status = (NSString *) args[@"status"];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapTMC * ref = (AMapTMC *) HEAP[@(refId)];
      
          ref.status = status;
          methodResult(@"success");
      },
      
      @"AMapTMC::set_polyline": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapTMC::set_polyline");
      
          // 参数
          // jsonable参数
          NSString * polyline = (NSString *) args[@"polyline"];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapTMC * ref = (AMapTMC *) HEAP[@(refId)];
      
          ref.polyline = polyline;
          methodResult(@"success");
      },
      
      @"AMapStep::set_instruction": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapStep::set_instruction");
      
          // 参数
          // jsonable参数
          NSString * instruction = (NSString *) args[@"instruction"];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapStep * ref = (AMapStep *) HEAP[@(refId)];
      
          ref.instruction = instruction;
          methodResult(@"success");
      },
      
      @"AMapStep::set_orientation": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapStep::set_orientation");
      
          // 参数
          // jsonable参数
          NSString * orientation = (NSString *) args[@"orientation"];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapStep * ref = (AMapStep *) HEAP[@(refId)];
      
          ref.orientation = orientation;
          methodResult(@"success");
      },
      
      @"AMapStep::set_road": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapStep::set_road");
      
          // 参数
          // jsonable参数
          NSString * road = (NSString *) args[@"road"];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapStep * ref = (AMapStep *) HEAP[@(refId)];
      
          ref.road = road;
          methodResult(@"success");
      },
      
      @"AMapStep::set_distance": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapStep::set_distance");
      
          // 参数
          // jsonable参数
          NSInteger distance = [args[@"distance"] integerValue];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapStep * ref = (AMapStep *) HEAP[@(refId)];
      
          ref.distance = distance;
          methodResult(@"success");
      },
      
      @"AMapStep::set_duration": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapStep::set_duration");
      
          // 参数
          // jsonable参数
          NSInteger duration = [args[@"duration"] integerValue];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapStep * ref = (AMapStep *) HEAP[@(refId)];
      
          ref.duration = duration;
          methodResult(@"success");
      },
      
      @"AMapStep::set_polyline": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapStep::set_polyline");
      
          // 参数
          // jsonable参数
          NSString * polyline = (NSString *) args[@"polyline"];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapStep * ref = (AMapStep *) HEAP[@(refId)];
      
          ref.polyline = polyline;
          methodResult(@"success");
      },
      
      @"AMapStep::set_action": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapStep::set_action");
      
          // 参数
          // jsonable参数
          NSString * action = (NSString *) args[@"action"];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapStep * ref = (AMapStep *) HEAP[@(refId)];
      
          ref.action = action;
          methodResult(@"success");
      },
      
      @"AMapStep::set_assistantAction": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapStep::set_assistantAction");
      
          // 参数
          // jsonable参数
          NSString * assistantAction = (NSString *) args[@"assistantAction"];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapStep * ref = (AMapStep *) HEAP[@(refId)];
      
          ref.assistantAction = assistantAction;
          methodResult(@"success");
      },
      
      @"AMapStep::set_tolls": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapStep::set_tolls");
      
          // 参数
          // jsonable参数
          CGFloat tolls = [args[@"tolls"] floatValue];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapStep * ref = (AMapStep *) HEAP[@(refId)];
      
          ref.tolls = tolls;
          methodResult(@"success");
      },
      
      @"AMapStep::set_tollDistance": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapStep::set_tollDistance");
      
          // 参数
          // jsonable参数
          NSInteger tollDistance = [args[@"tollDistance"] integerValue];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapStep * ref = (AMapStep *) HEAP[@(refId)];
      
          ref.tollDistance = tollDistance;
          methodResult(@"success");
      },
      
      @"AMapStep::set_tollRoad": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapStep::set_tollRoad");
      
          // 参数
          // jsonable参数
          NSString * tollRoad = (NSString *) args[@"tollRoad"];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapStep * ref = (AMapStep *) HEAP[@(refId)];
      
          ref.tollRoad = tollRoad;
          methodResult(@"success");
      },
      
      @"AMapPath::set_distance": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapPath::set_distance");
      
          // 参数
          // jsonable参数
          NSInteger distance = [args[@"distance"] integerValue];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapPath * ref = (AMapPath *) HEAP[@(refId)];
      
          ref.distance = distance;
          methodResult(@"success");
      },
      
      @"AMapPath::set_duration": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapPath::set_duration");
      
          // 参数
          // jsonable参数
          NSInteger duration = [args[@"duration"] integerValue];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapPath * ref = (AMapPath *) HEAP[@(refId)];
      
          ref.duration = duration;
          methodResult(@"success");
      },
      
      @"AMapPath::set_strategy": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapPath::set_strategy");
      
          // 参数
          // jsonable参数
          NSString * strategy = (NSString *) args[@"strategy"];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapPath * ref = (AMapPath *) HEAP[@(refId)];
      
          ref.strategy = strategy;
          methodResult(@"success");
      },
      
      @"AMapPath::set_tolls": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapPath::set_tolls");
      
          // 参数
          // jsonable参数
          CGFloat tolls = [args[@"tolls"] floatValue];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapPath * ref = (AMapPath *) HEAP[@(refId)];
      
          ref.tolls = tolls;
          methodResult(@"success");
      },
      
      @"AMapPath::set_tollDistance": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapPath::set_tollDistance");
      
          // 参数
          // jsonable参数
          NSInteger tollDistance = [args[@"tollDistance"] integerValue];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapPath * ref = (AMapPath *) HEAP[@(refId)];
      
          ref.tollDistance = tollDistance;
          methodResult(@"success");
      },
      
      @"AMapPath::set_totalTrafficLights": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapPath::set_totalTrafficLights");
      
          // 参数
          // jsonable参数
          NSInteger totalTrafficLights = [args[@"totalTrafficLights"] integerValue];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapPath * ref = (AMapPath *) HEAP[@(refId)];
      
          ref.totalTrafficLights = totalTrafficLights;
          methodResult(@"success");
      },
      
      @"AMapPath::set_restriction": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapPath::set_restriction");
      
          // 参数
          // jsonable参数
          NSInteger restriction = [args[@"restriction"] integerValue];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapPath * ref = (AMapPath *) HEAP[@(refId)];
      
          ref.restriction = restriction;
          methodResult(@"success");
      },
      
      @"AMapFutureTimeInfoElement::set_duration": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapFutureTimeInfoElement::set_duration");
      
          // 参数
          // jsonable参数
          NSInteger duration = [args[@"duration"] integerValue];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapFutureTimeInfoElement * ref = (AMapFutureTimeInfoElement *) HEAP[@(refId)];
      
          ref.duration = duration;
          methodResult(@"success");
      },
      
      @"AMapFutureTimeInfoElement::set_pathindex": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapFutureTimeInfoElement::set_pathindex");
      
          // 参数
          // jsonable参数
          NSInteger pathindex = [args[@"pathindex"] integerValue];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapFutureTimeInfoElement * ref = (AMapFutureTimeInfoElement *) HEAP[@(refId)];
      
          ref.pathindex = pathindex;
          methodResult(@"success");
      },
      
      @"AMapFutureTimeInfoElement::set_restriction": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapFutureTimeInfoElement::set_restriction");
      
          // 参数
          // jsonable参数
          NSInteger restriction = [args[@"restriction"] integerValue];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapFutureTimeInfoElement * ref = (AMapFutureTimeInfoElement *) HEAP[@(refId)];
      
          ref.restriction = restriction;
          methodResult(@"success");
      },
      
      @"AMapFutureTimeInfo::set_startTime": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapFutureTimeInfo::set_startTime");
      
          // 参数
          // jsonable参数
          NSString * startTime = (NSString *) args[@"startTime"];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapFutureTimeInfo * ref = (AMapFutureTimeInfo *) HEAP[@(refId)];
      
          ref.startTime = startTime;
          methodResult(@"success");
      },
      
      @"AMapWalking::set_origin": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapWalking::set_origin");
      
          // 参数
          // 引用参数
          AMapGeoPoint * origin = (AMapGeoPoint *) HEAP[@([args[@"origin"] integerValue])];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapWalking * ref = (AMapWalking *) HEAP[@(refId)];
      
          ref.origin = origin;
          methodResult(@"success");
      },
      
      @"AMapWalking::set_destination": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapWalking::set_destination");
      
          // 参数
          // 引用参数
          AMapGeoPoint * destination = (AMapGeoPoint *) HEAP[@([args[@"destination"] integerValue])];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapWalking * ref = (AMapWalking *) HEAP[@(refId)];
      
          ref.destination = destination;
          methodResult(@"success");
      },
      
      @"AMapWalking::set_distance": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapWalking::set_distance");
      
          // 参数
          // jsonable参数
          NSInteger distance = [args[@"distance"] integerValue];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapWalking * ref = (AMapWalking *) HEAP[@(refId)];
      
          ref.distance = distance;
          methodResult(@"success");
      },
      
      @"AMapWalking::set_duration": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapWalking::set_duration");
      
          // 参数
          // jsonable参数
          NSInteger duration = [args[@"duration"] integerValue];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapWalking * ref = (AMapWalking *) HEAP[@(refId)];
      
          ref.duration = duration;
          methodResult(@"success");
      },
      
      @"AMapTaxi::set_origin": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapTaxi::set_origin");
      
          // 参数
          // 引用参数
          AMapGeoPoint * origin = (AMapGeoPoint *) HEAP[@([args[@"origin"] integerValue])];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapTaxi * ref = (AMapTaxi *) HEAP[@(refId)];
      
          ref.origin = origin;
          methodResult(@"success");
      },
      
      @"AMapTaxi::set_destination": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapTaxi::set_destination");
      
          // 参数
          // 引用参数
          AMapGeoPoint * destination = (AMapGeoPoint *) HEAP[@([args[@"destination"] integerValue])];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapTaxi * ref = (AMapTaxi *) HEAP[@(refId)];
      
          ref.destination = destination;
          methodResult(@"success");
      },
      
      @"AMapTaxi::set_distance": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapTaxi::set_distance");
      
          // 参数
          // jsonable参数
          NSInteger distance = [args[@"distance"] integerValue];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapTaxi * ref = (AMapTaxi *) HEAP[@(refId)];
      
          ref.distance = distance;
          methodResult(@"success");
      },
      
      @"AMapTaxi::set_duration": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapTaxi::set_duration");
      
          // 参数
          // jsonable参数
          NSInteger duration = [args[@"duration"] integerValue];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapTaxi * ref = (AMapTaxi *) HEAP[@(refId)];
      
          ref.duration = duration;
          methodResult(@"success");
      },
      
      @"AMapTaxi::set_sname": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapTaxi::set_sname");
      
          // 参数
          // jsonable参数
          NSString * sname = (NSString *) args[@"sname"];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapTaxi * ref = (AMapTaxi *) HEAP[@(refId)];
      
          ref.sname = sname;
          methodResult(@"success");
      },
      
      @"AMapTaxi::set_tname": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapTaxi::set_tname");
      
          // 参数
          // jsonable参数
          NSString * tname = (NSString *) args[@"tname"];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapTaxi * ref = (AMapTaxi *) HEAP[@(refId)];
      
          ref.tname = tname;
          methodResult(@"success");
      },
      
      @"AMapRailwayStation::set_uid": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapRailwayStation::set_uid");
      
          // 参数
          // jsonable参数
          NSString * uid = (NSString *) args[@"uid"];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapRailwayStation * ref = (AMapRailwayStation *) HEAP[@(refId)];
      
          ref.uid = uid;
          methodResult(@"success");
      },
      
      @"AMapRailwayStation::set_name": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapRailwayStation::set_name");
      
          // 参数
          // jsonable参数
          NSString * name = (NSString *) args[@"name"];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapRailwayStation * ref = (AMapRailwayStation *) HEAP[@(refId)];
      
          ref.name = name;
          methodResult(@"success");
      },
      
      @"AMapRailwayStation::set_location": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapRailwayStation::set_location");
      
          // 参数
          // 引用参数
          AMapGeoPoint * location = (AMapGeoPoint *) HEAP[@([args[@"location"] integerValue])];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapRailwayStation * ref = (AMapRailwayStation *) HEAP[@(refId)];
      
          ref.location = location;
          methodResult(@"success");
      },
      
      @"AMapRailwayStation::set_adcode": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapRailwayStation::set_adcode");
      
          // 参数
          // jsonable参数
          NSString * adcode = (NSString *) args[@"adcode"];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapRailwayStation * ref = (AMapRailwayStation *) HEAP[@(refId)];
      
          ref.adcode = adcode;
          methodResult(@"success");
      },
      
      @"AMapRailwayStation::set_time": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapRailwayStation::set_time");
      
          // 参数
          // jsonable参数
          NSString * time = (NSString *) args[@"time"];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapRailwayStation * ref = (AMapRailwayStation *) HEAP[@(refId)];
      
          ref.time = time;
          methodResult(@"success");
      },
      
      @"AMapRailwayStation::set_wait": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapRailwayStation::set_wait");
      
          // 参数
          // jsonable参数
          NSInteger wait = [args[@"wait"] integerValue];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapRailwayStation * ref = (AMapRailwayStation *) HEAP[@(refId)];
      
          ref.wait = wait;
          methodResult(@"success");
      },
      
      @"AMapRailwayStation::set_isStart": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapRailwayStation::set_isStart");
      
          // 参数
          // jsonable参数
          BOOL isStart = [args[@"isStart"] boolValue];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapRailwayStation * ref = (AMapRailwayStation *) HEAP[@(refId)];
      
          ref.isStart = isStart;
          methodResult(@"success");
      },
      
      @"AMapRailwayStation::set_isEnd": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapRailwayStation::set_isEnd");
      
          // 参数
          // jsonable参数
          BOOL isEnd = [args[@"isEnd"] boolValue];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapRailwayStation * ref = (AMapRailwayStation *) HEAP[@(refId)];
      
          ref.isEnd = isEnd;
          methodResult(@"success");
      },
      
      @"AMapRailwaySpace::set_code": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapRailwaySpace::set_code");
      
          // 参数
          // jsonable参数
          NSString * code = (NSString *) args[@"code"];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapRailwaySpace * ref = (AMapRailwaySpace *) HEAP[@(refId)];
      
          ref.code = code;
          methodResult(@"success");
      },
      
      @"AMapRailwaySpace::set_cost": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapRailwaySpace::set_cost");
      
          // 参数
          // jsonable参数
          CGFloat cost = [args[@"cost"] floatValue];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapRailwaySpace * ref = (AMapRailwaySpace *) HEAP[@(refId)];
      
          ref.cost = cost;
          methodResult(@"success");
      },
      
      @"AMapRailway::set_uid": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapRailway::set_uid");
      
          // 参数
          // jsonable参数
          NSString * uid = (NSString *) args[@"uid"];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapRailway * ref = (AMapRailway *) HEAP[@(refId)];
      
          ref.uid = uid;
          methodResult(@"success");
      },
      
      @"AMapRailway::set_name": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapRailway::set_name");
      
          // 参数
          // jsonable参数
          NSString * name = (NSString *) args[@"name"];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapRailway * ref = (AMapRailway *) HEAP[@(refId)];
      
          ref.name = name;
          methodResult(@"success");
      },
      
      @"AMapRailway::set_trip": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapRailway::set_trip");
      
          // 参数
          // jsonable参数
          NSString * trip = (NSString *) args[@"trip"];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapRailway * ref = (AMapRailway *) HEAP[@(refId)];
      
          ref.trip = trip;
          methodResult(@"success");
      },
      
      @"AMapRailway::set_type": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapRailway::set_type");
      
          // 参数
          // jsonable参数
          NSString * type = (NSString *) args[@"type"];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapRailway * ref = (AMapRailway *) HEAP[@(refId)];
      
          ref.type = type;
          methodResult(@"success");
      },
      
      @"AMapRailway::set_distance": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapRailway::set_distance");
      
          // 参数
          // jsonable参数
          NSInteger distance = [args[@"distance"] integerValue];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapRailway * ref = (AMapRailway *) HEAP[@(refId)];
      
          ref.distance = distance;
          methodResult(@"success");
      },
      
      @"AMapRailway::set_time": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapRailway::set_time");
      
          // 参数
          // jsonable参数
          NSInteger time = [args[@"time"] integerValue];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapRailway * ref = (AMapRailway *) HEAP[@(refId)];
      
          ref.time = time;
          methodResult(@"success");
      },
      
      @"AMapRailway::set_departureStation": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapRailway::set_departureStation");
      
          // 参数
          // 引用参数
          AMapRailwayStation * departureStation = (AMapRailwayStation *) HEAP[@([args[@"departureStation"] integerValue])];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapRailway * ref = (AMapRailway *) HEAP[@(refId)];
      
          ref.departureStation = departureStation;
          methodResult(@"success");
      },
      
      @"AMapRailway::set_arrivalStation": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapRailway::set_arrivalStation");
      
          // 参数
          // 引用参数
          AMapRailwayStation * arrivalStation = (AMapRailwayStation *) HEAP[@([args[@"arrivalStation"] integerValue])];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapRailway * ref = (AMapRailway *) HEAP[@(refId)];
      
          ref.arrivalStation = arrivalStation;
          methodResult(@"success");
      },
      
      @"AMapSegment::set_walking": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapSegment::set_walking");
      
          // 参数
          // 引用参数
          AMapWalking * walking = (AMapWalking *) HEAP[@([args[@"walking"] integerValue])];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapSegment * ref = (AMapSegment *) HEAP[@(refId)];
      
          ref.walking = walking;
          methodResult(@"success");
      },
      
      @"AMapSegment::set_taxi": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapSegment::set_taxi");
      
          // 参数
          // 引用参数
          AMapTaxi * taxi = (AMapTaxi *) HEAP[@([args[@"taxi"] integerValue])];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapSegment * ref = (AMapSegment *) HEAP[@(refId)];
      
          ref.taxi = taxi;
          methodResult(@"success");
      },
      
      @"AMapSegment::set_railway": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapSegment::set_railway");
      
          // 参数
          // 引用参数
          AMapRailway * railway = (AMapRailway *) HEAP[@([args[@"railway"] integerValue])];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapSegment * ref = (AMapSegment *) HEAP[@(refId)];
      
          ref.railway = railway;
          methodResult(@"success");
      },
      
      @"AMapSegment::set_enterName": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapSegment::set_enterName");
      
          // 参数
          // jsonable参数
          NSString * enterName = (NSString *) args[@"enterName"];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapSegment * ref = (AMapSegment *) HEAP[@(refId)];
      
          ref.enterName = enterName;
          methodResult(@"success");
      },
      
      @"AMapSegment::set_enterLocation": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapSegment::set_enterLocation");
      
          // 参数
          // 引用参数
          AMapGeoPoint * enterLocation = (AMapGeoPoint *) HEAP[@([args[@"enterLocation"] integerValue])];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapSegment * ref = (AMapSegment *) HEAP[@(refId)];
      
          ref.enterLocation = enterLocation;
          methodResult(@"success");
      },
      
      @"AMapSegment::set_exitName": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapSegment::set_exitName");
      
          // 参数
          // jsonable参数
          NSString * exitName = (NSString *) args[@"exitName"];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapSegment * ref = (AMapSegment *) HEAP[@(refId)];
      
          ref.exitName = exitName;
          methodResult(@"success");
      },
      
      @"AMapSegment::set_exitLocation": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapSegment::set_exitLocation");
      
          // 参数
          // 引用参数
          AMapGeoPoint * exitLocation = (AMapGeoPoint *) HEAP[@([args[@"exitLocation"] integerValue])];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapSegment * ref = (AMapSegment *) HEAP[@(refId)];
      
          ref.exitLocation = exitLocation;
          methodResult(@"success");
      },
      
      @"AMapTransit::set_cost": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapTransit::set_cost");
      
          // 参数
          // jsonable参数
          CGFloat cost = [args[@"cost"] floatValue];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapTransit * ref = (AMapTransit *) HEAP[@(refId)];
      
          ref.cost = cost;
          methodResult(@"success");
      },
      
      @"AMapTransit::set_duration": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapTransit::set_duration");
      
          // 参数
          // jsonable参数
          NSInteger duration = [args[@"duration"] integerValue];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapTransit * ref = (AMapTransit *) HEAP[@(refId)];
      
          ref.duration = duration;
          methodResult(@"success");
      },
      
      @"AMapTransit::set_nightflag": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapTransit::set_nightflag");
      
          // 参数
          // jsonable参数
          BOOL nightflag = [args[@"nightflag"] boolValue];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapTransit * ref = (AMapTransit *) HEAP[@(refId)];
      
          ref.nightflag = nightflag;
          methodResult(@"success");
      },
      
      @"AMapTransit::set_walkingDistance": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapTransit::set_walkingDistance");
      
          // 参数
          // jsonable参数
          NSInteger walkingDistance = [args[@"walkingDistance"] integerValue];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapTransit * ref = (AMapTransit *) HEAP[@(refId)];
      
          ref.walkingDistance = walkingDistance;
          methodResult(@"success");
      },
      
      @"AMapTransit::set_distance": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapTransit::set_distance");
      
          // 参数
          // jsonable参数
          NSInteger distance = [args[@"distance"] integerValue];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapTransit * ref = (AMapTransit *) HEAP[@(refId)];
      
          ref.distance = distance;
          methodResult(@"success");
      },
      
      @"AMapRoute::set_origin": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapRoute::set_origin");
      
          // 参数
          // 引用参数
          AMapGeoPoint * origin = (AMapGeoPoint *) HEAP[@([args[@"origin"] integerValue])];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapRoute * ref = (AMapRoute *) HEAP[@(refId)];
      
          ref.origin = origin;
          methodResult(@"success");
      },
      
      @"AMapRoute::set_destination": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapRoute::set_destination");
      
          // 参数
          // 引用参数
          AMapGeoPoint * destination = (AMapGeoPoint *) HEAP[@([args[@"destination"] integerValue])];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapRoute * ref = (AMapRoute *) HEAP[@(refId)];
      
          ref.destination = destination;
          methodResult(@"success");
      },
      
      @"AMapRoute::set_taxiCost": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapRoute::set_taxiCost");
      
          // 参数
          // jsonable参数
          CGFloat taxiCost = [args[@"taxiCost"] floatValue];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapRoute * ref = (AMapRoute *) HEAP[@(refId)];
      
          ref.taxiCost = taxiCost;
          methodResult(@"success");
      },
      
      @"AMapDistanceResult::set_originID": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapDistanceResult::set_originID");
      
          // 参数
          // jsonable参数
          NSInteger originID = [args[@"originID"] integerValue];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapDistanceResult * ref = (AMapDistanceResult *) HEAP[@(refId)];
      
          ref.originID = originID;
          methodResult(@"success");
      },
      
      @"AMapDistanceResult::set_destID": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapDistanceResult::set_destID");
      
          // 参数
          // jsonable参数
          NSInteger destID = [args[@"destID"] integerValue];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapDistanceResult * ref = (AMapDistanceResult *) HEAP[@(refId)];
      
          ref.destID = destID;
          methodResult(@"success");
      },
      
      @"AMapDistanceResult::set_distance": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapDistanceResult::set_distance");
      
          // 参数
          // jsonable参数
          NSInteger distance = [args[@"distance"] integerValue];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapDistanceResult * ref = (AMapDistanceResult *) HEAP[@(refId)];
      
          ref.distance = distance;
          methodResult(@"success");
      },
      
      @"AMapDistanceResult::set_duration": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapDistanceResult::set_duration");
      
          // 参数
          // jsonable参数
          NSInteger duration = [args[@"duration"] integerValue];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapDistanceResult * ref = (AMapDistanceResult *) HEAP[@(refId)];
      
          ref.duration = duration;
          methodResult(@"success");
      },
      
      @"AMapDistanceResult::set_info": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapDistanceResult::set_info");
      
          // 参数
          // jsonable参数
          NSString * info = (NSString *) args[@"info"];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapDistanceResult * ref = (AMapDistanceResult *) HEAP[@(refId)];
      
          ref.info = info;
          methodResult(@"success");
      },
      
      @"AMapDistanceResult::set_code": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapDistanceResult::set_code");
      
          // 参数
          // jsonable参数
          NSInteger code = [args[@"code"] integerValue];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapDistanceResult * ref = (AMapDistanceResult *) HEAP[@(refId)];
      
          ref.code = code;
          methodResult(@"success");
      },
      
      @"AMapLocalWeatherLive::set_adcode": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapLocalWeatherLive::set_adcode");
      
          // 参数
          // jsonable参数
          NSString * adcode = (NSString *) args[@"adcode"];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapLocalWeatherLive * ref = (AMapLocalWeatherLive *) HEAP[@(refId)];
      
          ref.adcode = adcode;
          methodResult(@"success");
      },
      
      @"AMapLocalWeatherLive::set_province": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapLocalWeatherLive::set_province");
      
          // 参数
          // jsonable参数
          NSString * province = (NSString *) args[@"province"];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapLocalWeatherLive * ref = (AMapLocalWeatherLive *) HEAP[@(refId)];
      
          ref.province = province;
          methodResult(@"success");
      },
      
      @"AMapLocalWeatherLive::set_city": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapLocalWeatherLive::set_city");
      
          // 参数
          // jsonable参数
          NSString * city = (NSString *) args[@"city"];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapLocalWeatherLive * ref = (AMapLocalWeatherLive *) HEAP[@(refId)];
      
          ref.city = city;
          methodResult(@"success");
      },
      
      @"AMapLocalWeatherLive::set_weather": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapLocalWeatherLive::set_weather");
      
          // 参数
          // jsonable参数
          NSString * weather = (NSString *) args[@"weather"];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapLocalWeatherLive * ref = (AMapLocalWeatherLive *) HEAP[@(refId)];
      
          ref.weather = weather;
          methodResult(@"success");
      },
      
      @"AMapLocalWeatherLive::set_temperature": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapLocalWeatherLive::set_temperature");
      
          // 参数
          // jsonable参数
          NSString * temperature = (NSString *) args[@"temperature"];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapLocalWeatherLive * ref = (AMapLocalWeatherLive *) HEAP[@(refId)];
      
          ref.temperature = temperature;
          methodResult(@"success");
      },
      
      @"AMapLocalWeatherLive::set_windDirection": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapLocalWeatherLive::set_windDirection");
      
          // 参数
          // jsonable参数
          NSString * windDirection = (NSString *) args[@"windDirection"];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapLocalWeatherLive * ref = (AMapLocalWeatherLive *) HEAP[@(refId)];
      
          ref.windDirection = windDirection;
          methodResult(@"success");
      },
      
      @"AMapLocalWeatherLive::set_windPower": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapLocalWeatherLive::set_windPower");
      
          // 参数
          // jsonable参数
          NSString * windPower = (NSString *) args[@"windPower"];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapLocalWeatherLive * ref = (AMapLocalWeatherLive *) HEAP[@(refId)];
      
          ref.windPower = windPower;
          methodResult(@"success");
      },
      
      @"AMapLocalWeatherLive::set_humidity": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapLocalWeatherLive::set_humidity");
      
          // 参数
          // jsonable参数
          NSString * humidity = (NSString *) args[@"humidity"];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapLocalWeatherLive * ref = (AMapLocalWeatherLive *) HEAP[@(refId)];
      
          ref.humidity = humidity;
          methodResult(@"success");
      },
      
      @"AMapLocalWeatherLive::set_reportTime": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapLocalWeatherLive::set_reportTime");
      
          // 参数
          // jsonable参数
          NSString * reportTime = (NSString *) args[@"reportTime"];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapLocalWeatherLive * ref = (AMapLocalWeatherLive *) HEAP[@(refId)];
      
          ref.reportTime = reportTime;
          methodResult(@"success");
      },
      
      @"AMapLocalDayWeatherForecast::set_date": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapLocalDayWeatherForecast::set_date");
      
          // 参数
          // jsonable参数
          NSString * date = (NSString *) args[@"date"];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapLocalDayWeatherForecast * ref = (AMapLocalDayWeatherForecast *) HEAP[@(refId)];
      
          ref.date = date;
          methodResult(@"success");
      },
      
      @"AMapLocalDayWeatherForecast::set_week": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapLocalDayWeatherForecast::set_week");
      
          // 参数
          // jsonable参数
          NSString * week = (NSString *) args[@"week"];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapLocalDayWeatherForecast * ref = (AMapLocalDayWeatherForecast *) HEAP[@(refId)];
      
          ref.week = week;
          methodResult(@"success");
      },
      
      @"AMapLocalDayWeatherForecast::set_dayWeather": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapLocalDayWeatherForecast::set_dayWeather");
      
          // 参数
          // jsonable参数
          NSString * dayWeather = (NSString *) args[@"dayWeather"];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapLocalDayWeatherForecast * ref = (AMapLocalDayWeatherForecast *) HEAP[@(refId)];
      
          ref.dayWeather = dayWeather;
          methodResult(@"success");
      },
      
      @"AMapLocalDayWeatherForecast::set_nightWeather": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapLocalDayWeatherForecast::set_nightWeather");
      
          // 参数
          // jsonable参数
          NSString * nightWeather = (NSString *) args[@"nightWeather"];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapLocalDayWeatherForecast * ref = (AMapLocalDayWeatherForecast *) HEAP[@(refId)];
      
          ref.nightWeather = nightWeather;
          methodResult(@"success");
      },
      
      @"AMapLocalDayWeatherForecast::set_dayTemp": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapLocalDayWeatherForecast::set_dayTemp");
      
          // 参数
          // jsonable参数
          NSString * dayTemp = (NSString *) args[@"dayTemp"];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapLocalDayWeatherForecast * ref = (AMapLocalDayWeatherForecast *) HEAP[@(refId)];
      
          ref.dayTemp = dayTemp;
          methodResult(@"success");
      },
      
      @"AMapLocalDayWeatherForecast::set_nightTemp": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapLocalDayWeatherForecast::set_nightTemp");
      
          // 参数
          // jsonable参数
          NSString * nightTemp = (NSString *) args[@"nightTemp"];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapLocalDayWeatherForecast * ref = (AMapLocalDayWeatherForecast *) HEAP[@(refId)];
      
          ref.nightTemp = nightTemp;
          methodResult(@"success");
      },
      
      @"AMapLocalDayWeatherForecast::set_dayWind": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapLocalDayWeatherForecast::set_dayWind");
      
          // 参数
          // jsonable参数
          NSString * dayWind = (NSString *) args[@"dayWind"];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapLocalDayWeatherForecast * ref = (AMapLocalDayWeatherForecast *) HEAP[@(refId)];
      
          ref.dayWind = dayWind;
          methodResult(@"success");
      },
      
      @"AMapLocalDayWeatherForecast::set_nightWind": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapLocalDayWeatherForecast::set_nightWind");
      
          // 参数
          // jsonable参数
          NSString * nightWind = (NSString *) args[@"nightWind"];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapLocalDayWeatherForecast * ref = (AMapLocalDayWeatherForecast *) HEAP[@(refId)];
      
          ref.nightWind = nightWind;
          methodResult(@"success");
      },
      
      @"AMapLocalDayWeatherForecast::set_dayPower": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapLocalDayWeatherForecast::set_dayPower");
      
          // 参数
          // jsonable参数
          NSString * dayPower = (NSString *) args[@"dayPower"];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapLocalDayWeatherForecast * ref = (AMapLocalDayWeatherForecast *) HEAP[@(refId)];
      
          ref.dayPower = dayPower;
          methodResult(@"success");
      },
      
      @"AMapLocalDayWeatherForecast::set_nightPower": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapLocalDayWeatherForecast::set_nightPower");
      
          // 参数
          // jsonable参数
          NSString * nightPower = (NSString *) args[@"nightPower"];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapLocalDayWeatherForecast * ref = (AMapLocalDayWeatherForecast *) HEAP[@(refId)];
      
          ref.nightPower = nightPower;
          methodResult(@"success");
      },
      
      @"AMapLocalWeatherForecast::set_adcode": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapLocalWeatherForecast::set_adcode");
      
          // 参数
          // jsonable参数
          NSString * adcode = (NSString *) args[@"adcode"];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapLocalWeatherForecast * ref = (AMapLocalWeatherForecast *) HEAP[@(refId)];
      
          ref.adcode = adcode;
          methodResult(@"success");
      },
      
      @"AMapLocalWeatherForecast::set_province": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapLocalWeatherForecast::set_province");
      
          // 参数
          // jsonable参数
          NSString * province = (NSString *) args[@"province"];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapLocalWeatherForecast * ref = (AMapLocalWeatherForecast *) HEAP[@(refId)];
      
          ref.province = province;
          methodResult(@"success");
      },
      
      @"AMapLocalWeatherForecast::set_city": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapLocalWeatherForecast::set_city");
      
          // 参数
          // jsonable参数
          NSString * city = (NSString *) args[@"city"];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapLocalWeatherForecast * ref = (AMapLocalWeatherForecast *) HEAP[@(refId)];
      
          ref.city = city;
          methodResult(@"success");
      },
      
      @"AMapLocalWeatherForecast::set_reportTime": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapLocalWeatherForecast::set_reportTime");
      
          // 参数
          // jsonable参数
          NSString * reportTime = (NSString *) args[@"reportTime"];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapLocalWeatherForecast * ref = (AMapLocalWeatherForecast *) HEAP[@(refId)];
      
          ref.reportTime = reportTime;
          methodResult(@"success");
      },
      
      @"AMapNearbyUserInfo::set_userID": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapNearbyUserInfo::set_userID");
      
          // 参数
          // jsonable参数
          NSString * userID = (NSString *) args[@"userID"];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapNearbyUserInfo * ref = (AMapNearbyUserInfo *) HEAP[@(refId)];
      
          ref.userID = userID;
          methodResult(@"success");
      },
      
      @"AMapNearbyUserInfo::set_location": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapNearbyUserInfo::set_location");
      
          // 参数
          // 引用参数
          AMapGeoPoint * location = (AMapGeoPoint *) HEAP[@([args[@"location"] integerValue])];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapNearbyUserInfo * ref = (AMapNearbyUserInfo *) HEAP[@(refId)];
      
          ref.location = location;
          methodResult(@"success");
      },
      
      @"AMapNearbyUserInfo::set_distance": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapNearbyUserInfo::set_distance");
      
          // 参数
          // jsonable参数
          CGFloat distance = [args[@"distance"] floatValue];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapNearbyUserInfo * ref = (AMapNearbyUserInfo *) HEAP[@(refId)];
      
          ref.distance = distance;
          methodResult(@"success");
      },
      
      @"AMapTrafficEvaluation::set_evaluationDescription": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapTrafficEvaluation::set_evaluationDescription");
      
          // 参数
          // jsonable参数
          NSString * evaluationDescription = (NSString *) args[@"evaluationDescription"];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapTrafficEvaluation * ref = (AMapTrafficEvaluation *) HEAP[@(refId)];
      
          ref.evaluationDescription = evaluationDescription;
          methodResult(@"success");
      },
      
      @"AMapTrafficEvaluation::set_status": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapTrafficEvaluation::set_status");
      
          // 参数
          // jsonable参数
          NSInteger status = [args[@"status"] integerValue];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapTrafficEvaluation * ref = (AMapTrafficEvaluation *) HEAP[@(refId)];
      
          ref.status = status;
          methodResult(@"success");
      },
      
      @"AMapTrafficEvaluation::set_expedite": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapTrafficEvaluation::set_expedite");
      
          // 参数
          // jsonable参数
          NSString * expedite = (NSString *) args[@"expedite"];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapTrafficEvaluation * ref = (AMapTrafficEvaluation *) HEAP[@(refId)];
      
          ref.expedite = expedite;
          methodResult(@"success");
      },
      
      @"AMapTrafficEvaluation::set_congested": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapTrafficEvaluation::set_congested");
      
          // 参数
          // jsonable参数
          NSString * congested = (NSString *) args[@"congested"];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapTrafficEvaluation * ref = (AMapTrafficEvaluation *) HEAP[@(refId)];
      
          ref.congested = congested;
          methodResult(@"success");
      },
      
      @"AMapTrafficEvaluation::set_blocked": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapTrafficEvaluation::set_blocked");
      
          // 参数
          // jsonable参数
          NSString * blocked = (NSString *) args[@"blocked"];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapTrafficEvaluation * ref = (AMapTrafficEvaluation *) HEAP[@(refId)];
      
          ref.blocked = blocked;
          methodResult(@"success");
      },
      
      @"AMapTrafficEvaluation::set_unknown": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapTrafficEvaluation::set_unknown");
      
          // 参数
          // jsonable参数
          NSString * unknown = (NSString *) args[@"unknown"];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapTrafficEvaluation * ref = (AMapTrafficEvaluation *) HEAP[@(refId)];
      
          ref.unknown = unknown;
          methodResult(@"success");
      },
      
      @"AMapTrafficRoad::set_name": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapTrafficRoad::set_name");
      
          // 参数
          // jsonable参数
          NSString * name = (NSString *) args[@"name"];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapTrafficRoad * ref = (AMapTrafficRoad *) HEAP[@(refId)];
      
          ref.name = name;
          methodResult(@"success");
      },
      
      @"AMapTrafficRoad::set_status": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapTrafficRoad::set_status");
      
          // 参数
          // jsonable参数
          NSInteger status = [args[@"status"] integerValue];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapTrafficRoad * ref = (AMapTrafficRoad *) HEAP[@(refId)];
      
          ref.status = status;
          methodResult(@"success");
      },
      
      @"AMapTrafficRoad::set_direction": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapTrafficRoad::set_direction");
      
          // 参数
          // jsonable参数
          NSString * direction = (NSString *) args[@"direction"];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapTrafficRoad * ref = (AMapTrafficRoad *) HEAP[@(refId)];
      
          ref.direction = direction;
          methodResult(@"success");
      },
      
      @"AMapTrafficRoad::set_angle": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapTrafficRoad::set_angle");
      
          // 参数
          // jsonable参数
          float angle = [args[@"angle"] floatValue];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapTrafficRoad * ref = (AMapTrafficRoad *) HEAP[@(refId)];
      
          ref.angle = angle;
          methodResult(@"success");
      },
      
      @"AMapTrafficRoad::set_speed": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapTrafficRoad::set_speed");
      
          // 参数
          // jsonable参数
          float speed = [args[@"speed"] floatValue];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapTrafficRoad * ref = (AMapTrafficRoad *) HEAP[@(refId)];
      
          ref.speed = speed;
          methodResult(@"success");
      },
      
      @"AMapTrafficRoad::set_polyline": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapTrafficRoad::set_polyline");
      
          // 参数
          // jsonable参数
          NSString * polyline = (NSString *) args[@"polyline"];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapTrafficRoad * ref = (AMapTrafficRoad *) HEAP[@(refId)];
      
          ref.polyline = polyline;
          methodResult(@"success");
      },
      
      @"AMapTrafficInfo::set_statusDescription": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapTrafficInfo::set_statusDescription");
      
          // 参数
          // jsonable参数
          NSString * statusDescription = (NSString *) args[@"statusDescription"];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapTrafficInfo * ref = (AMapTrafficInfo *) HEAP[@(refId)];
      
          ref.statusDescription = statusDescription;
          methodResult(@"success");
      },
      
      @"AMapTrafficInfo::set_evaluation": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapTrafficInfo::set_evaluation");
      
          // 参数
          // 引用参数
          AMapTrafficEvaluation * evaluation = (AMapTrafficEvaluation *) HEAP[@([args[@"evaluation"] integerValue])];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapTrafficInfo * ref = (AMapTrafficInfo *) HEAP[@(refId)];
      
          ref.evaluation = evaluation;
          methodResult(@"success");
      },
      
      @"AMapCloudImage::set_uid": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapCloudImage::set_uid");
      
          // 参数
          // jsonable参数
          NSString * uid = (NSString *) args[@"uid"];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapCloudImage * ref = (AMapCloudImage *) HEAP[@(refId)];
      
          ref.uid = uid;
          methodResult(@"success");
      },
      
      @"AMapCloudImage::set_preurl": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapCloudImage::set_preurl");
      
          // 参数
          // jsonable参数
          NSString * preurl = (NSString *) args[@"preurl"];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapCloudImage * ref = (AMapCloudImage *) HEAP[@(refId)];
      
          ref.preurl = preurl;
          methodResult(@"success");
      },
      
      @"AMapCloudImage::set_url": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapCloudImage::set_url");
      
          // 参数
          // jsonable参数
          NSString * url = (NSString *) args[@"url"];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapCloudImage * ref = (AMapCloudImage *) HEAP[@(refId)];
      
          ref.url = url;
          methodResult(@"success");
      },
      
      @"AMapCloudPOI::set_uid": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapCloudPOI::set_uid");
      
          // 参数
          // jsonable参数
          NSInteger uid = [args[@"uid"] integerValue];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapCloudPOI * ref = (AMapCloudPOI *) HEAP[@(refId)];
      
          ref.uid = uid;
          methodResult(@"success");
      },
      
      @"AMapCloudPOI::set_name": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapCloudPOI::set_name");
      
          // 参数
          // jsonable参数
          NSString * name = (NSString *) args[@"name"];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapCloudPOI * ref = (AMapCloudPOI *) HEAP[@(refId)];
      
          ref.name = name;
          methodResult(@"success");
      },
      
      @"AMapCloudPOI::set_location": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapCloudPOI::set_location");
      
          // 参数
          // 引用参数
          AMapGeoPoint * location = (AMapGeoPoint *) HEAP[@([args[@"location"] integerValue])];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapCloudPOI * ref = (AMapCloudPOI *) HEAP[@(refId)];
      
          ref.location = location;
          methodResult(@"success");
      },
      
      @"AMapCloudPOI::set_address": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapCloudPOI::set_address");
      
          // 参数
          // jsonable参数
          NSString * address = (NSString *) args[@"address"];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapCloudPOI * ref = (AMapCloudPOI *) HEAP[@(refId)];
      
          ref.address = address;
          methodResult(@"success");
      },
      
      @"AMapCloudPOI::set_createTime": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapCloudPOI::set_createTime");
      
          // 参数
          // jsonable参数
          NSString * createTime = (NSString *) args[@"createTime"];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapCloudPOI * ref = (AMapCloudPOI *) HEAP[@(refId)];
      
          ref.createTime = createTime;
          methodResult(@"success");
      },
      
      @"AMapCloudPOI::set_updateTime": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapCloudPOI::set_updateTime");
      
          // 参数
          // jsonable参数
          NSString * updateTime = (NSString *) args[@"updateTime"];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapCloudPOI * ref = (AMapCloudPOI *) HEAP[@(refId)];
      
          ref.updateTime = updateTime;
          methodResult(@"success");
      },
      
      @"AMapCloudPOI::set_distance": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapCloudPOI::set_distance");
      
          // 参数
          // jsonable参数
          NSInteger distance = [args[@"distance"] integerValue];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapCloudPOI * ref = (AMapCloudPOI *) HEAP[@(refId)];
      
          ref.distance = distance;
          methodResult(@"success");
      },
      
      @"AMapNearbyUploadInfo::set_userID": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapNearbyUploadInfo::set_userID");
      
          // 参数
          // jsonable参数
          NSString * userID = (NSString *) args[@"userID"];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapNearbyUploadInfo * ref = (AMapNearbyUploadInfo *) HEAP[@(refId)];
      
          ref.userID = userID;
          methodResult(@"success");
      },
      
      @"AMapNearbyUploadInfo::set_coordinateType": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapNearbyUploadInfo::set_coordinateType");
      
          // 参数
          // 枚举参数
          AMapSearchCoordinateType coordinateType = (AMapSearchCoordinateType) [args[@"coordinateType"] integerValue];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapNearbyUploadInfo * ref = (AMapNearbyUploadInfo *) HEAP[@(refId)];
      
          ref.coordinateType = coordinateType;
          methodResult(@"success");
      },
      
      @"AMapNearbyUploadInfo::set_coordinate": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapNearbyUploadInfo::set_coordinate");
      
          // 参数
          // 结构体参数
          NSValue* coordinateValue = (NSValue*) HEAP[@([args[@"coordinate"] integerValue])];
          CLLocationCoordinate2D coordinate;
          [coordinateValue getValue:&coordinate];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapNearbyUploadInfo * ref = (AMapNearbyUploadInfo *) HEAP[@(refId)];
      
          ref.coordinate = coordinate;
          methodResult(@"success");
      },
      
      @"AMapSearchAPI::set_delegate": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapSearchAPI::set_delegate");
      
          // 参数
      
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapSearchAPI * ref = (AMapSearchAPI *) HEAP[@(refId)];
      
          ref.delegate = self;
          methodResult(@"success");
      },
      
      @"AMapSearchAPI::set_timeout": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapSearchAPI::set_timeout");
      
          // 参数
          // jsonable参数
          NSInteger timeout = [args[@"timeout"] integerValue];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapSearchAPI * ref = (AMapSearchAPI *) HEAP[@(refId)];
      
          ref.timeout = timeout;
          methodResult(@"success");
      },
      
      @"AMapSearchAPI::set_language": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapSearchAPI::set_language");
      
          // 参数
          // 枚举参数
          AMapSearchLanguage language = (AMapSearchLanguage) [args[@"language"] integerValue];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapSearchAPI * ref = (AMapSearchAPI *) HEAP[@(refId)];
      
          ref.language = language;
          methodResult(@"success");
      },
      
      @"RefClass::isKindOfAMapURLSearch": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          id ref = HEAP[@(refId)];
      
          BOOL isTargetType = [ref isKindOfClass:[AMapURLSearch class]];
          methodResult(@(isTargetType));
      },
      
      @"RefClass::isKindOfAMapNaviConfig": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          id ref = HEAP[@(refId)];
      
          BOOL isTargetType = [ref isKindOfClass:[AMapNaviConfig class]];
          methodResult(@(isTargetType));
      },
      
      @"RefClass::isKindOfAMapRouteConfig": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          id ref = HEAP[@(refId)];
      
          BOOL isTargetType = [ref isKindOfClass:[AMapRouteConfig class]];
          methodResult(@(isTargetType));
      },
      
      @"RefClass::isKindOfAMapPOIConfig": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          id ref = HEAP[@(refId)];
      
          BOOL isTargetType = [ref isKindOfClass:[AMapPOIConfig class]];
          methodResult(@(isTargetType));
      },
      
      @"RefClass::isKindOfAMapServices": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          id ref = HEAP[@(refId)];
      
          BOOL isTargetType = [ref isKindOfClass:[AMapServices class]];
          methodResult(@(isTargetType));
      },
      
      @"RefClass::isKindOfAMapPOISearchBaseRequest": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          id ref = HEAP[@(refId)];
      
          BOOL isTargetType = [ref isKindOfClass:[AMapPOISearchBaseRequest class]];
          methodResult(@(isTargetType));
      },
      
      @"RefClass::isKindOfAMapPOIIDSearchRequest": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          id ref = HEAP[@(refId)];
      
          BOOL isTargetType = [ref isKindOfClass:[AMapPOIIDSearchRequest class]];
          methodResult(@(isTargetType));
      },
      
      @"RefClass::isKindOfAMapPOIKeywordsSearchRequest": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          id ref = HEAP[@(refId)];
      
          BOOL isTargetType = [ref isKindOfClass:[AMapPOIKeywordsSearchRequest class]];
          methodResult(@(isTargetType));
      },
      
      @"RefClass::isKindOfAMapPOIAroundSearchRequest": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          id ref = HEAP[@(refId)];
      
          BOOL isTargetType = [ref isKindOfClass:[AMapPOIAroundSearchRequest class]];
          methodResult(@(isTargetType));
      },
      
      @"RefClass::isKindOfAMapPOIPolygonSearchRequest": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          id ref = HEAP[@(refId)];
      
          BOOL isTargetType = [ref isKindOfClass:[AMapPOIPolygonSearchRequest class]];
          methodResult(@(isTargetType));
      },
      
      @"RefClass::isKindOfAMapPOISearchResponse": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          id ref = HEAP[@(refId)];
      
          BOOL isTargetType = [ref isKindOfClass:[AMapPOISearchResponse class]];
          methodResult(@(isTargetType));
      },
      
      @"RefClass::isKindOfAMapRoutePOISearchRequest": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          id ref = HEAP[@(refId)];
      
          BOOL isTargetType = [ref isKindOfClass:[AMapRoutePOISearchRequest class]];
          methodResult(@(isTargetType));
      },
      
      @"RefClass::isKindOfAMapRoutePOISearchResponse": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          id ref = HEAP[@(refId)];
      
          BOOL isTargetType = [ref isKindOfClass:[AMapRoutePOISearchResponse class]];
          methodResult(@(isTargetType));
      },
      
      @"RefClass::isKindOfAMapInputTipsSearchRequest": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          id ref = HEAP[@(refId)];
      
          BOOL isTargetType = [ref isKindOfClass:[AMapInputTipsSearchRequest class]];
          methodResult(@(isTargetType));
      },
      
      @"RefClass::isKindOfAMapInputTipsSearchResponse": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          id ref = HEAP[@(refId)];
      
          BOOL isTargetType = [ref isKindOfClass:[AMapInputTipsSearchResponse class]];
          methodResult(@(isTargetType));
      },
      
      @"RefClass::isKindOfAMapGeocodeSearchRequest": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          id ref = HEAP[@(refId)];
      
          BOOL isTargetType = [ref isKindOfClass:[AMapGeocodeSearchRequest class]];
          methodResult(@(isTargetType));
      },
      
      @"RefClass::isKindOfAMapGeocodeSearchResponse": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          id ref = HEAP[@(refId)];
      
          BOOL isTargetType = [ref isKindOfClass:[AMapGeocodeSearchResponse class]];
          methodResult(@(isTargetType));
      },
      
      @"RefClass::isKindOfAMapReGeocodeSearchRequest": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          id ref = HEAP[@(refId)];
      
          BOOL isTargetType = [ref isKindOfClass:[AMapReGeocodeSearchRequest class]];
          methodResult(@(isTargetType));
      },
      
      @"RefClass::isKindOfAMapReGeocodeSearchResponse": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          id ref = HEAP[@(refId)];
      
          BOOL isTargetType = [ref isKindOfClass:[AMapReGeocodeSearchResponse class]];
          methodResult(@(isTargetType));
      },
      
      @"RefClass::isKindOfAMapBusStopSearchRequest": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          id ref = HEAP[@(refId)];
      
          BOOL isTargetType = [ref isKindOfClass:[AMapBusStopSearchRequest class]];
          methodResult(@(isTargetType));
      },
      
      @"RefClass::isKindOfAMapBusStopSearchResponse": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          id ref = HEAP[@(refId)];
      
          BOOL isTargetType = [ref isKindOfClass:[AMapBusStopSearchResponse class]];
          methodResult(@(isTargetType));
      },
      
      @"RefClass::isKindOfAMapBusLineBaseSearchRequest": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          id ref = HEAP[@(refId)];
      
          BOOL isTargetType = [ref isKindOfClass:[AMapBusLineBaseSearchRequest class]];
          methodResult(@(isTargetType));
      },
      
      @"RefClass::isKindOfAMapBusLineNameSearchRequest": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          id ref = HEAP[@(refId)];
      
          BOOL isTargetType = [ref isKindOfClass:[AMapBusLineNameSearchRequest class]];
          methodResult(@(isTargetType));
      },
      
      @"RefClass::isKindOfAMapBusLineIDSearchRequest": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          id ref = HEAP[@(refId)];
      
          BOOL isTargetType = [ref isKindOfClass:[AMapBusLineIDSearchRequest class]];
          methodResult(@(isTargetType));
      },
      
      @"RefClass::isKindOfAMapBusLineSearchResponse": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          id ref = HEAP[@(refId)];
      
          BOOL isTargetType = [ref isKindOfClass:[AMapBusLineSearchResponse class]];
          methodResult(@(isTargetType));
      },
      
      @"RefClass::isKindOfAMapDistrictSearchRequest": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          id ref = HEAP[@(refId)];
      
          BOOL isTargetType = [ref isKindOfClass:[AMapDistrictSearchRequest class]];
          methodResult(@(isTargetType));
      },
      
      @"RefClass::isKindOfAMapDistrictSearchResponse": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          id ref = HEAP[@(refId)];
      
          BOOL isTargetType = [ref isKindOfClass:[AMapDistrictSearchResponse class]];
          methodResult(@(isTargetType));
      },
      
      @"RefClass::isKindOfAMapRouteSearchBaseRequest": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          id ref = HEAP[@(refId)];
      
          BOOL isTargetType = [ref isKindOfClass:[AMapRouteSearchBaseRequest class]];
          methodResult(@(isTargetType));
      },
      
      @"RefClass::isKindOfAMapDrivingRouteSearchRequest": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          id ref = HEAP[@(refId)];
      
          BOOL isTargetType = [ref isKindOfClass:[AMapDrivingRouteSearchRequest class]];
          methodResult(@(isTargetType));
      },
      
      @"RefClass::isKindOfAMapWalkingRouteSearchRequest": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          id ref = HEAP[@(refId)];
      
          BOOL isTargetType = [ref isKindOfClass:[AMapWalkingRouteSearchRequest class]];
          methodResult(@(isTargetType));
      },
      
      @"RefClass::isKindOfAMapTransitRouteSearchRequest": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          id ref = HEAP[@(refId)];
      
          BOOL isTargetType = [ref isKindOfClass:[AMapTransitRouteSearchRequest class]];
          methodResult(@(isTargetType));
      },
      
      @"RefClass::isKindOfAMapRidingRouteSearchRequest": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          id ref = HEAP[@(refId)];
      
          BOOL isTargetType = [ref isKindOfClass:[AMapRidingRouteSearchRequest class]];
          methodResult(@(isTargetType));
      },
      
      @"RefClass::isKindOfAMapRouteSearchResponse": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          id ref = HEAP[@(refId)];
      
          BOOL isTargetType = [ref isKindOfClass:[AMapRouteSearchResponse class]];
          methodResult(@(isTargetType));
      },
      
      @"RefClass::isKindOfAMapRidingRouteSearchResponse": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          id ref = HEAP[@(refId)];
      
          BOOL isTargetType = [ref isKindOfClass:[AMapRidingRouteSearchResponse class]];
          methodResult(@(isTargetType));
      },
      
      @"RefClass::isKindOfAMapTruckRouteSearchRequest": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          id ref = HEAP[@(refId)];
      
          BOOL isTargetType = [ref isKindOfClass:[AMapTruckRouteSearchRequest class]];
          methodResult(@(isTargetType));
      },
      
      @"RefClass::isKindOfAMapDistanceSearchRequest": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          id ref = HEAP[@(refId)];
      
          BOOL isTargetType = [ref isKindOfClass:[AMapDistanceSearchRequest class]];
          methodResult(@(isTargetType));
      },
      
      @"RefClass::isKindOfAMapDistanceSearchResponse": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          id ref = HEAP[@(refId)];
      
          BOOL isTargetType = [ref isKindOfClass:[AMapDistanceSearchResponse class]];
          methodResult(@(isTargetType));
      },
      
      @"RefClass::isKindOfAMapWeatherSearchRequest": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          id ref = HEAP[@(refId)];
      
          BOOL isTargetType = [ref isKindOfClass:[AMapWeatherSearchRequest class]];
          methodResult(@(isTargetType));
      },
      
      @"RefClass::isKindOfAMapWeatherSearchResponse": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          id ref = HEAP[@(refId)];
      
          BOOL isTargetType = [ref isKindOfClass:[AMapWeatherSearchResponse class]];
          methodResult(@(isTargetType));
      },
      
      @"RefClass::isKindOfAMapRoadTrafficSearchBaseRequest": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          id ref = HEAP[@(refId)];
      
          BOOL isTargetType = [ref isKindOfClass:[AMapRoadTrafficSearchBaseRequest class]];
          methodResult(@(isTargetType));
      },
      
      @"RefClass::isKindOfAMapRoadTrafficSearchRequest": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          id ref = HEAP[@(refId)];
      
          BOOL isTargetType = [ref isKindOfClass:[AMapRoadTrafficSearchRequest class]];
          methodResult(@(isTargetType));
      },
      
      @"RefClass::isKindOfAMapRoadTrafficCircleSearchRequest": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          id ref = HEAP[@(refId)];
      
          BOOL isTargetType = [ref isKindOfClass:[AMapRoadTrafficCircleSearchRequest class]];
          methodResult(@(isTargetType));
      },
      
      @"RefClass::isKindOfAMapRoadTrafficSearchResponse": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          id ref = HEAP[@(refId)];
      
          BOOL isTargetType = [ref isKindOfClass:[AMapRoadTrafficSearchResponse class]];
          methodResult(@(isTargetType));
      },
      
      @"RefClass::isKindOfAMapNearbySearchRequest": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          id ref = HEAP[@(refId)];
      
          BOOL isTargetType = [ref isKindOfClass:[AMapNearbySearchRequest class]];
          methodResult(@(isTargetType));
      },
      
      @"RefClass::isKindOfAMapNearbySearchResponse": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          id ref = HEAP[@(refId)];
      
          BOOL isTargetType = [ref isKindOfClass:[AMapNearbySearchResponse class]];
          methodResult(@(isTargetType));
      },
      
      @"RefClass::isKindOfAMapCloudSearchBaseRequest": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          id ref = HEAP[@(refId)];
      
          BOOL isTargetType = [ref isKindOfClass:[AMapCloudSearchBaseRequest class]];
          methodResult(@(isTargetType));
      },
      
      @"RefClass::isKindOfAMapCloudPOIAroundSearchRequest": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          id ref = HEAP[@(refId)];
      
          BOOL isTargetType = [ref isKindOfClass:[AMapCloudPOIAroundSearchRequest class]];
          methodResult(@(isTargetType));
      },
      
      @"RefClass::isKindOfAMapCloudPOIPolygonSearchRequest": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          id ref = HEAP[@(refId)];
      
          BOOL isTargetType = [ref isKindOfClass:[AMapCloudPOIPolygonSearchRequest class]];
          methodResult(@(isTargetType));
      },
      
      @"RefClass::isKindOfAMapCloudPOIIDSearchRequest": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          id ref = HEAP[@(refId)];
      
          BOOL isTargetType = [ref isKindOfClass:[AMapCloudPOIIDSearchRequest class]];
          methodResult(@(isTargetType));
      },
      
      @"RefClass::isKindOfAMapCloudPOILocalSearchRequest": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          id ref = HEAP[@(refId)];
      
          BOOL isTargetType = [ref isKindOfClass:[AMapCloudPOILocalSearchRequest class]];
          methodResult(@(isTargetType));
      },
      
      @"RefClass::isKindOfAMapCloudPOISearchResponse": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          id ref = HEAP[@(refId)];
      
          BOOL isTargetType = [ref isKindOfClass:[AMapCloudPOISearchResponse class]];
          methodResult(@(isTargetType));
      },
      
      @"RefClass::isKindOfAMapShareSearchBaseRequest": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          id ref = HEAP[@(refId)];
      
          BOOL isTargetType = [ref isKindOfClass:[AMapShareSearchBaseRequest class]];
          methodResult(@(isTargetType));
      },
      
      @"RefClass::isKindOfAMapLocationShareSearchRequest": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          id ref = HEAP[@(refId)];
      
          BOOL isTargetType = [ref isKindOfClass:[AMapLocationShareSearchRequest class]];
          methodResult(@(isTargetType));
      },
      
      @"RefClass::isKindOfAMapPOIShareSearchRequest": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          id ref = HEAP[@(refId)];
      
          BOOL isTargetType = [ref isKindOfClass:[AMapPOIShareSearchRequest class]];
          methodResult(@(isTargetType));
      },
      
      @"RefClass::isKindOfAMapRouteShareSearchRequest": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          id ref = HEAP[@(refId)];
      
          BOOL isTargetType = [ref isKindOfClass:[AMapRouteShareSearchRequest class]];
          methodResult(@(isTargetType));
      },
      
      @"RefClass::isKindOfAMapNavigationShareSearchRequest": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          id ref = HEAP[@(refId)];
      
          BOOL isTargetType = [ref isKindOfClass:[AMapNavigationShareSearchRequest class]];
          methodResult(@(isTargetType));
      },
      
      @"RefClass::isKindOfAMapShareSearchResponse": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          id ref = HEAP[@(refId)];
      
          BOOL isTargetType = [ref isKindOfClass:[AMapShareSearchResponse class]];
          methodResult(@(isTargetType));
      },
      
      @"RefClass::isKindOfAMapFutureRouteSearchRequest": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          id ref = HEAP[@(refId)];
      
          BOOL isTargetType = [ref isKindOfClass:[AMapFutureRouteSearchRequest class]];
          methodResult(@(isTargetType));
      },
      
      @"RefClass::isKindOfAMapFutureRouteSearchResponse": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          id ref = HEAP[@(refId)];
      
          BOOL isTargetType = [ref isKindOfClass:[AMapFutureRouteSearchResponse class]];
          methodResult(@(isTargetType));
      },
      
      @"RefClass::isKindOfAMapSearchObject": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          id ref = HEAP[@(refId)];
      
          BOOL isTargetType = [ref isKindOfClass:[AMapSearchObject class]];
          methodResult(@(isTargetType));
      },
      
      @"RefClass::isKindOfAMapGeoPoint": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          id ref = HEAP[@(refId)];
      
          BOOL isTargetType = [ref isKindOfClass:[AMapGeoPoint class]];
          methodResult(@(isTargetType));
      },
      
      @"RefClass::isKindOfAMapGeoPolygon": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          id ref = HEAP[@(refId)];
      
          BOOL isTargetType = [ref isKindOfClass:[AMapGeoPolygon class]];
          methodResult(@(isTargetType));
      },
      
      @"RefClass::isKindOfAMapCity": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          id ref = HEAP[@(refId)];
      
          BOOL isTargetType = [ref isKindOfClass:[AMapCity class]];
          methodResult(@(isTargetType));
      },
      
      @"RefClass::isKindOfAMapSuggestion": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          id ref = HEAP[@(refId)];
      
          BOOL isTargetType = [ref isKindOfClass:[AMapSuggestion class]];
          methodResult(@(isTargetType));
      },
      
      @"RefClass::isKindOfAMapTip": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          id ref = HEAP[@(refId)];
      
          BOOL isTargetType = [ref isKindOfClass:[AMapTip class]];
          methodResult(@(isTargetType));
      },
      
      @"RefClass::isKindOfAMapImage": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          id ref = HEAP[@(refId)];
      
          BOOL isTargetType = [ref isKindOfClass:[AMapImage class]];
          methodResult(@(isTargetType));
      },
      
      @"RefClass::isKindOfAMapPOIExtension": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          id ref = HEAP[@(refId)];
      
          BOOL isTargetType = [ref isKindOfClass:[AMapPOIExtension class]];
          methodResult(@(isTargetType));
      },
      
      @"RefClass::isKindOfAMapIndoorData": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          id ref = HEAP[@(refId)];
      
          BOOL isTargetType = [ref isKindOfClass:[AMapIndoorData class]];
          methodResult(@(isTargetType));
      },
      
      @"RefClass::isKindOfAMapSubPOI": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          id ref = HEAP[@(refId)];
      
          BOOL isTargetType = [ref isKindOfClass:[AMapSubPOI class]];
          methodResult(@(isTargetType));
      },
      
      @"RefClass::isKindOfAMapRoutePOI": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          id ref = HEAP[@(refId)];
      
          BOOL isTargetType = [ref isKindOfClass:[AMapRoutePOI class]];
          methodResult(@(isTargetType));
      },
      
      @"RefClass::isKindOfAMapPOI": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          id ref = HEAP[@(refId)];
      
          BOOL isTargetType = [ref isKindOfClass:[AMapPOI class]];
          methodResult(@(isTargetType));
      },
      
      @"RefClass::isKindOfAMapAOI": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          id ref = HEAP[@(refId)];
      
          BOOL isTargetType = [ref isKindOfClass:[AMapAOI class]];
          methodResult(@(isTargetType));
      },
      
      @"RefClass::isKindOfAMapRoad": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          id ref = HEAP[@(refId)];
      
          BOOL isTargetType = [ref isKindOfClass:[AMapRoad class]];
          methodResult(@(isTargetType));
      },
      
      @"RefClass::isKindOfAMapRoadInter": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          id ref = HEAP[@(refId)];
      
          BOOL isTargetType = [ref isKindOfClass:[AMapRoadInter class]];
          methodResult(@(isTargetType));
      },
      
      @"RefClass::isKindOfAMapStreetNumber": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          id ref = HEAP[@(refId)];
      
          BOOL isTargetType = [ref isKindOfClass:[AMapStreetNumber class]];
          methodResult(@(isTargetType));
      },
      
      @"RefClass::isKindOfAMapBusinessArea": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          id ref = HEAP[@(refId)];
      
          BOOL isTargetType = [ref isKindOfClass:[AMapBusinessArea class]];
          methodResult(@(isTargetType));
      },
      
      @"RefClass::isKindOfAMapAddressComponent": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          id ref = HEAP[@(refId)];
      
          BOOL isTargetType = [ref isKindOfClass:[AMapAddressComponent class]];
          methodResult(@(isTargetType));
      },
      
      @"RefClass::isKindOfAMapReGeocode": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          id ref = HEAP[@(refId)];
      
          BOOL isTargetType = [ref isKindOfClass:[AMapReGeocode class]];
          methodResult(@(isTargetType));
      },
      
      @"RefClass::isKindOfAMapGeocode": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          id ref = HEAP[@(refId)];
      
          BOOL isTargetType = [ref isKindOfClass:[AMapGeocode class]];
          methodResult(@(isTargetType));
      },
      
      @"RefClass::isKindOfAMapBusStop": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          id ref = HEAP[@(refId)];
      
          BOOL isTargetType = [ref isKindOfClass:[AMapBusStop class]];
          methodResult(@(isTargetType));
      },
      
      @"RefClass::isKindOfAMapBusLine": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          id ref = HEAP[@(refId)];
      
          BOOL isTargetType = [ref isKindOfClass:[AMapBusLine class]];
          methodResult(@(isTargetType));
      },
      
      @"RefClass::isKindOfAMapDistrict": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          id ref = HEAP[@(refId)];
      
          BOOL isTargetType = [ref isKindOfClass:[AMapDistrict class]];
          methodResult(@(isTargetType));
      },
      
      @"RefClass::isKindOfAMapTMC": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          id ref = HEAP[@(refId)];
      
          BOOL isTargetType = [ref isKindOfClass:[AMapTMC class]];
          methodResult(@(isTargetType));
      },
      
      @"RefClass::isKindOfAMapStep": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          id ref = HEAP[@(refId)];
      
          BOOL isTargetType = [ref isKindOfClass:[AMapStep class]];
          methodResult(@(isTargetType));
      },
      
      @"RefClass::isKindOfAMapPath": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          id ref = HEAP[@(refId)];
      
          BOOL isTargetType = [ref isKindOfClass:[AMapPath class]];
          methodResult(@(isTargetType));
      },
      
      @"RefClass::isKindOfAMapFutureTimeInfoElement": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          id ref = HEAP[@(refId)];
      
          BOOL isTargetType = [ref isKindOfClass:[AMapFutureTimeInfoElement class]];
          methodResult(@(isTargetType));
      },
      
      @"RefClass::isKindOfAMapFutureTimeInfo": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          id ref = HEAP[@(refId)];
      
          BOOL isTargetType = [ref isKindOfClass:[AMapFutureTimeInfo class]];
          methodResult(@(isTargetType));
      },
      
      @"RefClass::isKindOfAMapWalking": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          id ref = HEAP[@(refId)];
      
          BOOL isTargetType = [ref isKindOfClass:[AMapWalking class]];
          methodResult(@(isTargetType));
      },
      
      @"RefClass::isKindOfAMapTaxi": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          id ref = HEAP[@(refId)];
      
          BOOL isTargetType = [ref isKindOfClass:[AMapTaxi class]];
          methodResult(@(isTargetType));
      },
      
      @"RefClass::isKindOfAMapRailwayStation": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          id ref = HEAP[@(refId)];
      
          BOOL isTargetType = [ref isKindOfClass:[AMapRailwayStation class]];
          methodResult(@(isTargetType));
      },
      
      @"RefClass::isKindOfAMapRailwaySpace": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          id ref = HEAP[@(refId)];
      
          BOOL isTargetType = [ref isKindOfClass:[AMapRailwaySpace class]];
          methodResult(@(isTargetType));
      },
      
      @"RefClass::isKindOfAMapRailway": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          id ref = HEAP[@(refId)];
      
          BOOL isTargetType = [ref isKindOfClass:[AMapRailway class]];
          methodResult(@(isTargetType));
      },
      
      @"RefClass::isKindOfAMapSegment": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          id ref = HEAP[@(refId)];
      
          BOOL isTargetType = [ref isKindOfClass:[AMapSegment class]];
          methodResult(@(isTargetType));
      },
      
      @"RefClass::isKindOfAMapTransit": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          id ref = HEAP[@(refId)];
      
          BOOL isTargetType = [ref isKindOfClass:[AMapTransit class]];
          methodResult(@(isTargetType));
      },
      
      @"RefClass::isKindOfAMapRoute": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          id ref = HEAP[@(refId)];
      
          BOOL isTargetType = [ref isKindOfClass:[AMapRoute class]];
          methodResult(@(isTargetType));
      },
      
      @"RefClass::isKindOfAMapDistanceResult": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          id ref = HEAP[@(refId)];
      
          BOOL isTargetType = [ref isKindOfClass:[AMapDistanceResult class]];
          methodResult(@(isTargetType));
      },
      
      @"RefClass::isKindOfAMapLocalWeatherLive": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          id ref = HEAP[@(refId)];
      
          BOOL isTargetType = [ref isKindOfClass:[AMapLocalWeatherLive class]];
          methodResult(@(isTargetType));
      },
      
      @"RefClass::isKindOfAMapLocalDayWeatherForecast": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          id ref = HEAP[@(refId)];
      
          BOOL isTargetType = [ref isKindOfClass:[AMapLocalDayWeatherForecast class]];
          methodResult(@(isTargetType));
      },
      
      @"RefClass::isKindOfAMapLocalWeatherForecast": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          id ref = HEAP[@(refId)];
      
          BOOL isTargetType = [ref isKindOfClass:[AMapLocalWeatherForecast class]];
          methodResult(@(isTargetType));
      },
      
      @"RefClass::isKindOfAMapNearbyUserInfo": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          id ref = HEAP[@(refId)];
      
          BOOL isTargetType = [ref isKindOfClass:[AMapNearbyUserInfo class]];
          methodResult(@(isTargetType));
      },
      
      @"RefClass::isKindOfAMapTrafficEvaluation": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          id ref = HEAP[@(refId)];
      
          BOOL isTargetType = [ref isKindOfClass:[AMapTrafficEvaluation class]];
          methodResult(@(isTargetType));
      },
      
      @"RefClass::isKindOfAMapTrafficRoad": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          id ref = HEAP[@(refId)];
      
          BOOL isTargetType = [ref isKindOfClass:[AMapTrafficRoad class]];
          methodResult(@(isTargetType));
      },
      
      @"RefClass::isKindOfAMapTrafficInfo": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          id ref = HEAP[@(refId)];
      
          BOOL isTargetType = [ref isKindOfClass:[AMapTrafficInfo class]];
          methodResult(@(isTargetType));
      },
      
      @"RefClass::isKindOfAMapCloudImage": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          id ref = HEAP[@(refId)];
      
          BOOL isTargetType = [ref isKindOfClass:[AMapCloudImage class]];
          methodResult(@(isTargetType));
      },
      
      @"RefClass::isKindOfAMapCloudPOI": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          id ref = HEAP[@(refId)];
      
          BOOL isTargetType = [ref isKindOfClass:[AMapCloudPOI class]];
          methodResult(@(isTargetType));
      },
      
      @"RefClass::isKindOfAMapNearbyUploadInfo": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          id ref = HEAP[@(refId)];
      
          BOOL isTargetType = [ref isKindOfClass:[AMapNearbyUploadInfo class]];
          methodResult(@(isTargetType));
      },
      
      @"RefClass::isKindOfAMapNearbySearchManager": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          id ref = HEAP[@(refId)];
      
          BOOL isTargetType = [ref isKindOfClass:[AMapNearbySearchManager class]];
          methodResult(@(isTargetType));
      },
      
      @"RefClass::isKindOfAMapSearchAPI": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          id ref = HEAP[@(refId)];
      
          BOOL isTargetType = [ref isKindOfClass:[AMapSearchAPI class]];
          methodResult(@(isTargetType));
      },
      
      @"RefClass::asAMapURLSearch": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          id ref = HEAP[@(refId)];
      
          // 转型
          ref = (AMapURLSearch *) ref;
          // 放回HEAP
          HEAP[@(refId)] = ref;
      
          methodResult(@(refId));
      },
      
      @"RefClass::asAMapNaviConfig": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          id ref = HEAP[@(refId)];
      
          // 转型
          ref = (AMapNaviConfig *) ref;
          // 放回HEAP
          HEAP[@(refId)] = ref;
      
          methodResult(@(refId));
      },
      
      @"RefClass::asAMapRouteConfig": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          id ref = HEAP[@(refId)];
      
          // 转型
          ref = (AMapRouteConfig *) ref;
          // 放回HEAP
          HEAP[@(refId)] = ref;
      
          methodResult(@(refId));
      },
      
      @"RefClass::asAMapPOIConfig": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          id ref = HEAP[@(refId)];
      
          // 转型
          ref = (AMapPOIConfig *) ref;
          // 放回HEAP
          HEAP[@(refId)] = ref;
      
          methodResult(@(refId));
      },
      
      @"RefClass::asAMapServices": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          id ref = HEAP[@(refId)];
      
          // 转型
          ref = (AMapServices *) ref;
          // 放回HEAP
          HEAP[@(refId)] = ref;
      
          methodResult(@(refId));
      },
      
      @"RefClass::asAMapPOISearchBaseRequest": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          id ref = HEAP[@(refId)];
      
          // 转型
          ref = (AMapPOISearchBaseRequest *) ref;
          // 放回HEAP
          HEAP[@(refId)] = ref;
      
          methodResult(@(refId));
      },
      
      @"RefClass::asAMapPOIIDSearchRequest": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          id ref = HEAP[@(refId)];
      
          // 转型
          ref = (AMapPOIIDSearchRequest *) ref;
          // 放回HEAP
          HEAP[@(refId)] = ref;
      
          methodResult(@(refId));
      },
      
      @"RefClass::asAMapPOIKeywordsSearchRequest": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          id ref = HEAP[@(refId)];
      
          // 转型
          ref = (AMapPOIKeywordsSearchRequest *) ref;
          // 放回HEAP
          HEAP[@(refId)] = ref;
      
          methodResult(@(refId));
      },
      
      @"RefClass::asAMapPOIAroundSearchRequest": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          id ref = HEAP[@(refId)];
      
          // 转型
          ref = (AMapPOIAroundSearchRequest *) ref;
          // 放回HEAP
          HEAP[@(refId)] = ref;
      
          methodResult(@(refId));
      },
      
      @"RefClass::asAMapPOIPolygonSearchRequest": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          id ref = HEAP[@(refId)];
      
          // 转型
          ref = (AMapPOIPolygonSearchRequest *) ref;
          // 放回HEAP
          HEAP[@(refId)] = ref;
      
          methodResult(@(refId));
      },
      
      @"RefClass::asAMapPOISearchResponse": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          id ref = HEAP[@(refId)];
      
          // 转型
          ref = (AMapPOISearchResponse *) ref;
          // 放回HEAP
          HEAP[@(refId)] = ref;
      
          methodResult(@(refId));
      },
      
      @"RefClass::asAMapRoutePOISearchRequest": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          id ref = HEAP[@(refId)];
      
          // 转型
          ref = (AMapRoutePOISearchRequest *) ref;
          // 放回HEAP
          HEAP[@(refId)] = ref;
      
          methodResult(@(refId));
      },
      
      @"RefClass::asAMapRoutePOISearchResponse": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          id ref = HEAP[@(refId)];
      
          // 转型
          ref = (AMapRoutePOISearchResponse *) ref;
          // 放回HEAP
          HEAP[@(refId)] = ref;
      
          methodResult(@(refId));
      },
      
      @"RefClass::asAMapInputTipsSearchRequest": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          id ref = HEAP[@(refId)];
      
          // 转型
          ref = (AMapInputTipsSearchRequest *) ref;
          // 放回HEAP
          HEAP[@(refId)] = ref;
      
          methodResult(@(refId));
      },
      
      @"RefClass::asAMapInputTipsSearchResponse": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          id ref = HEAP[@(refId)];
      
          // 转型
          ref = (AMapInputTipsSearchResponse *) ref;
          // 放回HEAP
          HEAP[@(refId)] = ref;
      
          methodResult(@(refId));
      },
      
      @"RefClass::asAMapGeocodeSearchRequest": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          id ref = HEAP[@(refId)];
      
          // 转型
          ref = (AMapGeocodeSearchRequest *) ref;
          // 放回HEAP
          HEAP[@(refId)] = ref;
      
          methodResult(@(refId));
      },
      
      @"RefClass::asAMapGeocodeSearchResponse": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          id ref = HEAP[@(refId)];
      
          // 转型
          ref = (AMapGeocodeSearchResponse *) ref;
          // 放回HEAP
          HEAP[@(refId)] = ref;
      
          methodResult(@(refId));
      },
      
      @"RefClass::asAMapReGeocodeSearchRequest": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          id ref = HEAP[@(refId)];
      
          // 转型
          ref = (AMapReGeocodeSearchRequest *) ref;
          // 放回HEAP
          HEAP[@(refId)] = ref;
      
          methodResult(@(refId));
      },
      
      @"RefClass::asAMapReGeocodeSearchResponse": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          id ref = HEAP[@(refId)];
      
          // 转型
          ref = (AMapReGeocodeSearchResponse *) ref;
          // 放回HEAP
          HEAP[@(refId)] = ref;
      
          methodResult(@(refId));
      },
      
      @"RefClass::asAMapBusStopSearchRequest": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          id ref = HEAP[@(refId)];
      
          // 转型
          ref = (AMapBusStopSearchRequest *) ref;
          // 放回HEAP
          HEAP[@(refId)] = ref;
      
          methodResult(@(refId));
      },
      
      @"RefClass::asAMapBusStopSearchResponse": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          id ref = HEAP[@(refId)];
      
          // 转型
          ref = (AMapBusStopSearchResponse *) ref;
          // 放回HEAP
          HEAP[@(refId)] = ref;
      
          methodResult(@(refId));
      },
      
      @"RefClass::asAMapBusLineBaseSearchRequest": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          id ref = HEAP[@(refId)];
      
          // 转型
          ref = (AMapBusLineBaseSearchRequest *) ref;
          // 放回HEAP
          HEAP[@(refId)] = ref;
      
          methodResult(@(refId));
      },
      
      @"RefClass::asAMapBusLineNameSearchRequest": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          id ref = HEAP[@(refId)];
      
          // 转型
          ref = (AMapBusLineNameSearchRequest *) ref;
          // 放回HEAP
          HEAP[@(refId)] = ref;
      
          methodResult(@(refId));
      },
      
      @"RefClass::asAMapBusLineIDSearchRequest": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          id ref = HEAP[@(refId)];
      
          // 转型
          ref = (AMapBusLineIDSearchRequest *) ref;
          // 放回HEAP
          HEAP[@(refId)] = ref;
      
          methodResult(@(refId));
      },
      
      @"RefClass::asAMapBusLineSearchResponse": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          id ref = HEAP[@(refId)];
      
          // 转型
          ref = (AMapBusLineSearchResponse *) ref;
          // 放回HEAP
          HEAP[@(refId)] = ref;
      
          methodResult(@(refId));
      },
      
      @"RefClass::asAMapDistrictSearchRequest": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          id ref = HEAP[@(refId)];
      
          // 转型
          ref = (AMapDistrictSearchRequest *) ref;
          // 放回HEAP
          HEAP[@(refId)] = ref;
      
          methodResult(@(refId));
      },
      
      @"RefClass::asAMapDistrictSearchResponse": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          id ref = HEAP[@(refId)];
      
          // 转型
          ref = (AMapDistrictSearchResponse *) ref;
          // 放回HEAP
          HEAP[@(refId)] = ref;
      
          methodResult(@(refId));
      },
      
      @"RefClass::asAMapRouteSearchBaseRequest": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          id ref = HEAP[@(refId)];
      
          // 转型
          ref = (AMapRouteSearchBaseRequest *) ref;
          // 放回HEAP
          HEAP[@(refId)] = ref;
      
          methodResult(@(refId));
      },
      
      @"RefClass::asAMapDrivingRouteSearchRequest": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          id ref = HEAP[@(refId)];
      
          // 转型
          ref = (AMapDrivingRouteSearchRequest *) ref;
          // 放回HEAP
          HEAP[@(refId)] = ref;
      
          methodResult(@(refId));
      },
      
      @"RefClass::asAMapWalkingRouteSearchRequest": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          id ref = HEAP[@(refId)];
      
          // 转型
          ref = (AMapWalkingRouteSearchRequest *) ref;
          // 放回HEAP
          HEAP[@(refId)] = ref;
      
          methodResult(@(refId));
      },
      
      @"RefClass::asAMapTransitRouteSearchRequest": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          id ref = HEAP[@(refId)];
      
          // 转型
          ref = (AMapTransitRouteSearchRequest *) ref;
          // 放回HEAP
          HEAP[@(refId)] = ref;
      
          methodResult(@(refId));
      },
      
      @"RefClass::asAMapRidingRouteSearchRequest": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          id ref = HEAP[@(refId)];
      
          // 转型
          ref = (AMapRidingRouteSearchRequest *) ref;
          // 放回HEAP
          HEAP[@(refId)] = ref;
      
          methodResult(@(refId));
      },
      
      @"RefClass::asAMapRouteSearchResponse": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          id ref = HEAP[@(refId)];
      
          // 转型
          ref = (AMapRouteSearchResponse *) ref;
          // 放回HEAP
          HEAP[@(refId)] = ref;
      
          methodResult(@(refId));
      },
      
      @"RefClass::asAMapRidingRouteSearchResponse": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          id ref = HEAP[@(refId)];
      
          // 转型
          ref = (AMapRidingRouteSearchResponse *) ref;
          // 放回HEAP
          HEAP[@(refId)] = ref;
      
          methodResult(@(refId));
      },
      
      @"RefClass::asAMapTruckRouteSearchRequest": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          id ref = HEAP[@(refId)];
      
          // 转型
          ref = (AMapTruckRouteSearchRequest *) ref;
          // 放回HEAP
          HEAP[@(refId)] = ref;
      
          methodResult(@(refId));
      },
      
      @"RefClass::asAMapDistanceSearchRequest": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          id ref = HEAP[@(refId)];
      
          // 转型
          ref = (AMapDistanceSearchRequest *) ref;
          // 放回HEAP
          HEAP[@(refId)] = ref;
      
          methodResult(@(refId));
      },
      
      @"RefClass::asAMapDistanceSearchResponse": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          id ref = HEAP[@(refId)];
      
          // 转型
          ref = (AMapDistanceSearchResponse *) ref;
          // 放回HEAP
          HEAP[@(refId)] = ref;
      
          methodResult(@(refId));
      },
      
      @"RefClass::asAMapWeatherSearchRequest": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          id ref = HEAP[@(refId)];
      
          // 转型
          ref = (AMapWeatherSearchRequest *) ref;
          // 放回HEAP
          HEAP[@(refId)] = ref;
      
          methodResult(@(refId));
      },
      
      @"RefClass::asAMapWeatherSearchResponse": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          id ref = HEAP[@(refId)];
      
          // 转型
          ref = (AMapWeatherSearchResponse *) ref;
          // 放回HEAP
          HEAP[@(refId)] = ref;
      
          methodResult(@(refId));
      },
      
      @"RefClass::asAMapRoadTrafficSearchBaseRequest": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          id ref = HEAP[@(refId)];
      
          // 转型
          ref = (AMapRoadTrafficSearchBaseRequest *) ref;
          // 放回HEAP
          HEAP[@(refId)] = ref;
      
          methodResult(@(refId));
      },
      
      @"RefClass::asAMapRoadTrafficSearchRequest": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          id ref = HEAP[@(refId)];
      
          // 转型
          ref = (AMapRoadTrafficSearchRequest *) ref;
          // 放回HEAP
          HEAP[@(refId)] = ref;
      
          methodResult(@(refId));
      },
      
      @"RefClass::asAMapRoadTrafficCircleSearchRequest": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          id ref = HEAP[@(refId)];
      
          // 转型
          ref = (AMapRoadTrafficCircleSearchRequest *) ref;
          // 放回HEAP
          HEAP[@(refId)] = ref;
      
          methodResult(@(refId));
      },
      
      @"RefClass::asAMapRoadTrafficSearchResponse": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          id ref = HEAP[@(refId)];
      
          // 转型
          ref = (AMapRoadTrafficSearchResponse *) ref;
          // 放回HEAP
          HEAP[@(refId)] = ref;
      
          methodResult(@(refId));
      },
      
      @"RefClass::asAMapNearbySearchRequest": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          id ref = HEAP[@(refId)];
      
          // 转型
          ref = (AMapNearbySearchRequest *) ref;
          // 放回HEAP
          HEAP[@(refId)] = ref;
      
          methodResult(@(refId));
      },
      
      @"RefClass::asAMapNearbySearchResponse": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          id ref = HEAP[@(refId)];
      
          // 转型
          ref = (AMapNearbySearchResponse *) ref;
          // 放回HEAP
          HEAP[@(refId)] = ref;
      
          methodResult(@(refId));
      },
      
      @"RefClass::asAMapCloudSearchBaseRequest": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          id ref = HEAP[@(refId)];
      
          // 转型
          ref = (AMapCloudSearchBaseRequest *) ref;
          // 放回HEAP
          HEAP[@(refId)] = ref;
      
          methodResult(@(refId));
      },
      
      @"RefClass::asAMapCloudPOIAroundSearchRequest": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          id ref = HEAP[@(refId)];
      
          // 转型
          ref = (AMapCloudPOIAroundSearchRequest *) ref;
          // 放回HEAP
          HEAP[@(refId)] = ref;
      
          methodResult(@(refId));
      },
      
      @"RefClass::asAMapCloudPOIPolygonSearchRequest": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          id ref = HEAP[@(refId)];
      
          // 转型
          ref = (AMapCloudPOIPolygonSearchRequest *) ref;
          // 放回HEAP
          HEAP[@(refId)] = ref;
      
          methodResult(@(refId));
      },
      
      @"RefClass::asAMapCloudPOIIDSearchRequest": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          id ref = HEAP[@(refId)];
      
          // 转型
          ref = (AMapCloudPOIIDSearchRequest *) ref;
          // 放回HEAP
          HEAP[@(refId)] = ref;
      
          methodResult(@(refId));
      },
      
      @"RefClass::asAMapCloudPOILocalSearchRequest": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          id ref = HEAP[@(refId)];
      
          // 转型
          ref = (AMapCloudPOILocalSearchRequest *) ref;
          // 放回HEAP
          HEAP[@(refId)] = ref;
      
          methodResult(@(refId));
      },
      
      @"RefClass::asAMapCloudPOISearchResponse": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          id ref = HEAP[@(refId)];
      
          // 转型
          ref = (AMapCloudPOISearchResponse *) ref;
          // 放回HEAP
          HEAP[@(refId)] = ref;
      
          methodResult(@(refId));
      },
      
      @"RefClass::asAMapShareSearchBaseRequest": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          id ref = HEAP[@(refId)];
      
          // 转型
          ref = (AMapShareSearchBaseRequest *) ref;
          // 放回HEAP
          HEAP[@(refId)] = ref;
      
          methodResult(@(refId));
      },
      
      @"RefClass::asAMapLocationShareSearchRequest": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          id ref = HEAP[@(refId)];
      
          // 转型
          ref = (AMapLocationShareSearchRequest *) ref;
          // 放回HEAP
          HEAP[@(refId)] = ref;
      
          methodResult(@(refId));
      },
      
      @"RefClass::asAMapPOIShareSearchRequest": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          id ref = HEAP[@(refId)];
      
          // 转型
          ref = (AMapPOIShareSearchRequest *) ref;
          // 放回HEAP
          HEAP[@(refId)] = ref;
      
          methodResult(@(refId));
      },
      
      @"RefClass::asAMapRouteShareSearchRequest": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          id ref = HEAP[@(refId)];
      
          // 转型
          ref = (AMapRouteShareSearchRequest *) ref;
          // 放回HEAP
          HEAP[@(refId)] = ref;
      
          methodResult(@(refId));
      },
      
      @"RefClass::asAMapNavigationShareSearchRequest": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          id ref = HEAP[@(refId)];
      
          // 转型
          ref = (AMapNavigationShareSearchRequest *) ref;
          // 放回HEAP
          HEAP[@(refId)] = ref;
      
          methodResult(@(refId));
      },
      
      @"RefClass::asAMapShareSearchResponse": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          id ref = HEAP[@(refId)];
      
          // 转型
          ref = (AMapShareSearchResponse *) ref;
          // 放回HEAP
          HEAP[@(refId)] = ref;
      
          methodResult(@(refId));
      },
      
      @"RefClass::asAMapFutureRouteSearchRequest": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          id ref = HEAP[@(refId)];
      
          // 转型
          ref = (AMapFutureRouteSearchRequest *) ref;
          // 放回HEAP
          HEAP[@(refId)] = ref;
      
          methodResult(@(refId));
      },
      
      @"RefClass::asAMapFutureRouteSearchResponse": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          id ref = HEAP[@(refId)];
      
          // 转型
          ref = (AMapFutureRouteSearchResponse *) ref;
          // 放回HEAP
          HEAP[@(refId)] = ref;
      
          methodResult(@(refId));
      },
      
      @"RefClass::asAMapSearchObject": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          id ref = HEAP[@(refId)];
      
          // 转型
          ref = (AMapSearchObject *) ref;
          // 放回HEAP
          HEAP[@(refId)] = ref;
      
          methodResult(@(refId));
      },
      
      @"RefClass::asAMapGeoPoint": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          id ref = HEAP[@(refId)];
      
          // 转型
          ref = (AMapGeoPoint *) ref;
          // 放回HEAP
          HEAP[@(refId)] = ref;
      
          methodResult(@(refId));
      },
      
      @"RefClass::asAMapGeoPolygon": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          id ref = HEAP[@(refId)];
      
          // 转型
          ref = (AMapGeoPolygon *) ref;
          // 放回HEAP
          HEAP[@(refId)] = ref;
      
          methodResult(@(refId));
      },
      
      @"RefClass::asAMapCity": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          id ref = HEAP[@(refId)];
      
          // 转型
          ref = (AMapCity *) ref;
          // 放回HEAP
          HEAP[@(refId)] = ref;
      
          methodResult(@(refId));
      },
      
      @"RefClass::asAMapSuggestion": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          id ref = HEAP[@(refId)];
      
          // 转型
          ref = (AMapSuggestion *) ref;
          // 放回HEAP
          HEAP[@(refId)] = ref;
      
          methodResult(@(refId));
      },
      
      @"RefClass::asAMapTip": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          id ref = HEAP[@(refId)];
      
          // 转型
          ref = (AMapTip *) ref;
          // 放回HEAP
          HEAP[@(refId)] = ref;
      
          methodResult(@(refId));
      },
      
      @"RefClass::asAMapImage": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          id ref = HEAP[@(refId)];
      
          // 转型
          ref = (AMapImage *) ref;
          // 放回HEAP
          HEAP[@(refId)] = ref;
      
          methodResult(@(refId));
      },
      
      @"RefClass::asAMapPOIExtension": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          id ref = HEAP[@(refId)];
      
          // 转型
          ref = (AMapPOIExtension *) ref;
          // 放回HEAP
          HEAP[@(refId)] = ref;
      
          methodResult(@(refId));
      },
      
      @"RefClass::asAMapIndoorData": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          id ref = HEAP[@(refId)];
      
          // 转型
          ref = (AMapIndoorData *) ref;
          // 放回HEAP
          HEAP[@(refId)] = ref;
      
          methodResult(@(refId));
      },
      
      @"RefClass::asAMapSubPOI": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          id ref = HEAP[@(refId)];
      
          // 转型
          ref = (AMapSubPOI *) ref;
          // 放回HEAP
          HEAP[@(refId)] = ref;
      
          methodResult(@(refId));
      },
      
      @"RefClass::asAMapRoutePOI": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          id ref = HEAP[@(refId)];
      
          // 转型
          ref = (AMapRoutePOI *) ref;
          // 放回HEAP
          HEAP[@(refId)] = ref;
      
          methodResult(@(refId));
      },
      
      @"RefClass::asAMapPOI": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          id ref = HEAP[@(refId)];
      
          // 转型
          ref = (AMapPOI *) ref;
          // 放回HEAP
          HEAP[@(refId)] = ref;
      
          methodResult(@(refId));
      },
      
      @"RefClass::asAMapAOI": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          id ref = HEAP[@(refId)];
      
          // 转型
          ref = (AMapAOI *) ref;
          // 放回HEAP
          HEAP[@(refId)] = ref;
      
          methodResult(@(refId));
      },
      
      @"RefClass::asAMapRoad": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          id ref = HEAP[@(refId)];
      
          // 转型
          ref = (AMapRoad *) ref;
          // 放回HEAP
          HEAP[@(refId)] = ref;
      
          methodResult(@(refId));
      },
      
      @"RefClass::asAMapRoadInter": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          id ref = HEAP[@(refId)];
      
          // 转型
          ref = (AMapRoadInter *) ref;
          // 放回HEAP
          HEAP[@(refId)] = ref;
      
          methodResult(@(refId));
      },
      
      @"RefClass::asAMapStreetNumber": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          id ref = HEAP[@(refId)];
      
          // 转型
          ref = (AMapStreetNumber *) ref;
          // 放回HEAP
          HEAP[@(refId)] = ref;
      
          methodResult(@(refId));
      },
      
      @"RefClass::asAMapBusinessArea": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          id ref = HEAP[@(refId)];
      
          // 转型
          ref = (AMapBusinessArea *) ref;
          // 放回HEAP
          HEAP[@(refId)] = ref;
      
          methodResult(@(refId));
      },
      
      @"RefClass::asAMapAddressComponent": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          id ref = HEAP[@(refId)];
      
          // 转型
          ref = (AMapAddressComponent *) ref;
          // 放回HEAP
          HEAP[@(refId)] = ref;
      
          methodResult(@(refId));
      },
      
      @"RefClass::asAMapReGeocode": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          id ref = HEAP[@(refId)];
      
          // 转型
          ref = (AMapReGeocode *) ref;
          // 放回HEAP
          HEAP[@(refId)] = ref;
      
          methodResult(@(refId));
      },
      
      @"RefClass::asAMapGeocode": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          id ref = HEAP[@(refId)];
      
          // 转型
          ref = (AMapGeocode *) ref;
          // 放回HEAP
          HEAP[@(refId)] = ref;
      
          methodResult(@(refId));
      },
      
      @"RefClass::asAMapBusStop": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          id ref = HEAP[@(refId)];
      
          // 转型
          ref = (AMapBusStop *) ref;
          // 放回HEAP
          HEAP[@(refId)] = ref;
      
          methodResult(@(refId));
      },
      
      @"RefClass::asAMapBusLine": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          id ref = HEAP[@(refId)];
      
          // 转型
          ref = (AMapBusLine *) ref;
          // 放回HEAP
          HEAP[@(refId)] = ref;
      
          methodResult(@(refId));
      },
      
      @"RefClass::asAMapDistrict": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          id ref = HEAP[@(refId)];
      
          // 转型
          ref = (AMapDistrict *) ref;
          // 放回HEAP
          HEAP[@(refId)] = ref;
      
          methodResult(@(refId));
      },
      
      @"RefClass::asAMapTMC": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          id ref = HEAP[@(refId)];
      
          // 转型
          ref = (AMapTMC *) ref;
          // 放回HEAP
          HEAP[@(refId)] = ref;
      
          methodResult(@(refId));
      },
      
      @"RefClass::asAMapStep": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          id ref = HEAP[@(refId)];
      
          // 转型
          ref = (AMapStep *) ref;
          // 放回HEAP
          HEAP[@(refId)] = ref;
      
          methodResult(@(refId));
      },
      
      @"RefClass::asAMapPath": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          id ref = HEAP[@(refId)];
      
          // 转型
          ref = (AMapPath *) ref;
          // 放回HEAP
          HEAP[@(refId)] = ref;
      
          methodResult(@(refId));
      },
      
      @"RefClass::asAMapFutureTimeInfoElement": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          id ref = HEAP[@(refId)];
      
          // 转型
          ref = (AMapFutureTimeInfoElement *) ref;
          // 放回HEAP
          HEAP[@(refId)] = ref;
      
          methodResult(@(refId));
      },
      
      @"RefClass::asAMapFutureTimeInfo": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          id ref = HEAP[@(refId)];
      
          // 转型
          ref = (AMapFutureTimeInfo *) ref;
          // 放回HEAP
          HEAP[@(refId)] = ref;
      
          methodResult(@(refId));
      },
      
      @"RefClass::asAMapWalking": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          id ref = HEAP[@(refId)];
      
          // 转型
          ref = (AMapWalking *) ref;
          // 放回HEAP
          HEAP[@(refId)] = ref;
      
          methodResult(@(refId));
      },
      
      @"RefClass::asAMapTaxi": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          id ref = HEAP[@(refId)];
      
          // 转型
          ref = (AMapTaxi *) ref;
          // 放回HEAP
          HEAP[@(refId)] = ref;
      
          methodResult(@(refId));
      },
      
      @"RefClass::asAMapRailwayStation": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          id ref = HEAP[@(refId)];
      
          // 转型
          ref = (AMapRailwayStation *) ref;
          // 放回HEAP
          HEAP[@(refId)] = ref;
      
          methodResult(@(refId));
      },
      
      @"RefClass::asAMapRailwaySpace": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          id ref = HEAP[@(refId)];
      
          // 转型
          ref = (AMapRailwaySpace *) ref;
          // 放回HEAP
          HEAP[@(refId)] = ref;
      
          methodResult(@(refId));
      },
      
      @"RefClass::asAMapRailway": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          id ref = HEAP[@(refId)];
      
          // 转型
          ref = (AMapRailway *) ref;
          // 放回HEAP
          HEAP[@(refId)] = ref;
      
          methodResult(@(refId));
      },
      
      @"RefClass::asAMapSegment": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          id ref = HEAP[@(refId)];
      
          // 转型
          ref = (AMapSegment *) ref;
          // 放回HEAP
          HEAP[@(refId)] = ref;
      
          methodResult(@(refId));
      },
      
      @"RefClass::asAMapTransit": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          id ref = HEAP[@(refId)];
      
          // 转型
          ref = (AMapTransit *) ref;
          // 放回HEAP
          HEAP[@(refId)] = ref;
      
          methodResult(@(refId));
      },
      
      @"RefClass::asAMapRoute": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          id ref = HEAP[@(refId)];
      
          // 转型
          ref = (AMapRoute *) ref;
          // 放回HEAP
          HEAP[@(refId)] = ref;
      
          methodResult(@(refId));
      },
      
      @"RefClass::asAMapDistanceResult": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          id ref = HEAP[@(refId)];
      
          // 转型
          ref = (AMapDistanceResult *) ref;
          // 放回HEAP
          HEAP[@(refId)] = ref;
      
          methodResult(@(refId));
      },
      
      @"RefClass::asAMapLocalWeatherLive": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          id ref = HEAP[@(refId)];
      
          // 转型
          ref = (AMapLocalWeatherLive *) ref;
          // 放回HEAP
          HEAP[@(refId)] = ref;
      
          methodResult(@(refId));
      },
      
      @"RefClass::asAMapLocalDayWeatherForecast": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          id ref = HEAP[@(refId)];
      
          // 转型
          ref = (AMapLocalDayWeatherForecast *) ref;
          // 放回HEAP
          HEAP[@(refId)] = ref;
      
          methodResult(@(refId));
      },
      
      @"RefClass::asAMapLocalWeatherForecast": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          id ref = HEAP[@(refId)];
      
          // 转型
          ref = (AMapLocalWeatherForecast *) ref;
          // 放回HEAP
          HEAP[@(refId)] = ref;
      
          methodResult(@(refId));
      },
      
      @"RefClass::asAMapNearbyUserInfo": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          id ref = HEAP[@(refId)];
      
          // 转型
          ref = (AMapNearbyUserInfo *) ref;
          // 放回HEAP
          HEAP[@(refId)] = ref;
      
          methodResult(@(refId));
      },
      
      @"RefClass::asAMapTrafficEvaluation": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          id ref = HEAP[@(refId)];
      
          // 转型
          ref = (AMapTrafficEvaluation *) ref;
          // 放回HEAP
          HEAP[@(refId)] = ref;
      
          methodResult(@(refId));
      },
      
      @"RefClass::asAMapTrafficRoad": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          id ref = HEAP[@(refId)];
      
          // 转型
          ref = (AMapTrafficRoad *) ref;
          // 放回HEAP
          HEAP[@(refId)] = ref;
      
          methodResult(@(refId));
      },
      
      @"RefClass::asAMapTrafficInfo": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          id ref = HEAP[@(refId)];
      
          // 转型
          ref = (AMapTrafficInfo *) ref;
          // 放回HEAP
          HEAP[@(refId)] = ref;
      
          methodResult(@(refId));
      },
      
      @"RefClass::asAMapCloudImage": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          id ref = HEAP[@(refId)];
      
          // 转型
          ref = (AMapCloudImage *) ref;
          // 放回HEAP
          HEAP[@(refId)] = ref;
      
          methodResult(@(refId));
      },
      
      @"RefClass::asAMapCloudPOI": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          id ref = HEAP[@(refId)];
      
          // 转型
          ref = (AMapCloudPOI *) ref;
          // 放回HEAP
          HEAP[@(refId)] = ref;
      
          methodResult(@(refId));
      },
      
      @"RefClass::asAMapNearbyUploadInfo": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          id ref = HEAP[@(refId)];
      
          // 转型
          ref = (AMapNearbyUploadInfo *) ref;
          // 放回HEAP
          HEAP[@(refId)] = ref;
      
          methodResult(@(refId));
      },
      
      @"RefClass::asAMapNearbySearchManager": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          id ref = HEAP[@(refId)];
      
          // 转型
          ref = (AMapNearbySearchManager *) ref;
          // 放回HEAP
          HEAP[@(refId)] = ref;
      
          methodResult(@(refId));
      },
      
      @"RefClass::asAMapSearchAPI": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          id ref = HEAP[@(refId)];
      
          // 转型
          ref = (AMapSearchAPI *) ref;
          // 放回HEAP
          HEAP[@(refId)] = ref;
      
          methodResult(@(refId));
      },
      
      @"ObjectFactory::createAMapURLSearch": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"ObjectFactory::createAMapURLSearch");
      
          AMapURLSearch* ref = [[AMapURLSearch alloc] init];
          HEAP[@(ref.hash)] = ref;
      
          methodResult(@(ref.hash));
      },
      
      @"ObjectFactory::createAMapNaviConfig": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"ObjectFactory::createAMapNaviConfig");
      
          AMapNaviConfig* ref = [[AMapNaviConfig alloc] init];
          HEAP[@(ref.hash)] = ref;
      
          methodResult(@(ref.hash));
      },
      
      @"ObjectFactory::createAMapRouteConfig": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"ObjectFactory::createAMapRouteConfig");
      
          AMapRouteConfig* ref = [[AMapRouteConfig alloc] init];
          HEAP[@(ref.hash)] = ref;
      
          methodResult(@(ref.hash));
      },
      
      @"ObjectFactory::createAMapPOIConfig": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"ObjectFactory::createAMapPOIConfig");
      
          AMapPOIConfig* ref = [[AMapPOIConfig alloc] init];
          HEAP[@(ref.hash)] = ref;
      
          methodResult(@(ref.hash));
      },
      
      @"ObjectFactory::createAMapServices": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"ObjectFactory::createAMapServices");
      
          AMapServices* ref = [[AMapServices alloc] init];
          HEAP[@(ref.hash)] = ref;
      
          methodResult(@(ref.hash));
      },
      
      @"ObjectFactory::createAMapPOISearchBaseRequest": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"ObjectFactory::createAMapPOISearchBaseRequest");
      
          AMapPOISearchBaseRequest* ref = [[AMapPOISearchBaseRequest alloc] init];
          HEAP[@(ref.hash)] = ref;
      
          methodResult(@(ref.hash));
      },
      
      @"ObjectFactory::createAMapPOIIDSearchRequest": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"ObjectFactory::createAMapPOIIDSearchRequest");
      
          AMapPOIIDSearchRequest* ref = [[AMapPOIIDSearchRequest alloc] init];
          HEAP[@(ref.hash)] = ref;
      
          methodResult(@(ref.hash));
      },
      
      @"ObjectFactory::createAMapPOIKeywordsSearchRequest": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"ObjectFactory::createAMapPOIKeywordsSearchRequest");
      
          AMapPOIKeywordsSearchRequest* ref = [[AMapPOIKeywordsSearchRequest alloc] init];
          HEAP[@(ref.hash)] = ref;
      
          methodResult(@(ref.hash));
      },
      
      @"ObjectFactory::createAMapPOIAroundSearchRequest": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"ObjectFactory::createAMapPOIAroundSearchRequest");
      
          AMapPOIAroundSearchRequest* ref = [[AMapPOIAroundSearchRequest alloc] init];
          HEAP[@(ref.hash)] = ref;
      
          methodResult(@(ref.hash));
      },
      
      @"ObjectFactory::createAMapPOIPolygonSearchRequest": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"ObjectFactory::createAMapPOIPolygonSearchRequest");
      
          AMapPOIPolygonSearchRequest* ref = [[AMapPOIPolygonSearchRequest alloc] init];
          HEAP[@(ref.hash)] = ref;
      
          methodResult(@(ref.hash));
      },
      
      @"ObjectFactory::createAMapPOISearchResponse": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"ObjectFactory::createAMapPOISearchResponse");
      
          AMapPOISearchResponse* ref = [[AMapPOISearchResponse alloc] init];
          HEAP[@(ref.hash)] = ref;
      
          methodResult(@(ref.hash));
      },
      
      @"ObjectFactory::createAMapRoutePOISearchRequest": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"ObjectFactory::createAMapRoutePOISearchRequest");
      
          AMapRoutePOISearchRequest* ref = [[AMapRoutePOISearchRequest alloc] init];
          HEAP[@(ref.hash)] = ref;
      
          methodResult(@(ref.hash));
      },
      
      @"ObjectFactory::createAMapRoutePOISearchResponse": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"ObjectFactory::createAMapRoutePOISearchResponse");
      
          AMapRoutePOISearchResponse* ref = [[AMapRoutePOISearchResponse alloc] init];
          HEAP[@(ref.hash)] = ref;
      
          methodResult(@(ref.hash));
      },
      
      @"ObjectFactory::createAMapInputTipsSearchRequest": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"ObjectFactory::createAMapInputTipsSearchRequest");
      
          AMapInputTipsSearchRequest* ref = [[AMapInputTipsSearchRequest alloc] init];
          HEAP[@(ref.hash)] = ref;
      
          methodResult(@(ref.hash));
      },
      
      @"ObjectFactory::createAMapInputTipsSearchResponse": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"ObjectFactory::createAMapInputTipsSearchResponse");
      
          AMapInputTipsSearchResponse* ref = [[AMapInputTipsSearchResponse alloc] init];
          HEAP[@(ref.hash)] = ref;
      
          methodResult(@(ref.hash));
      },
      
      @"ObjectFactory::createAMapGeocodeSearchRequest": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"ObjectFactory::createAMapGeocodeSearchRequest");
      
          AMapGeocodeSearchRequest* ref = [[AMapGeocodeSearchRequest alloc] init];
          HEAP[@(ref.hash)] = ref;
      
          methodResult(@(ref.hash));
      },
      
      @"ObjectFactory::createAMapGeocodeSearchResponse": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"ObjectFactory::createAMapGeocodeSearchResponse");
      
          AMapGeocodeSearchResponse* ref = [[AMapGeocodeSearchResponse alloc] init];
          HEAP[@(ref.hash)] = ref;
      
          methodResult(@(ref.hash));
      },
      
      @"ObjectFactory::createAMapReGeocodeSearchRequest": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"ObjectFactory::createAMapReGeocodeSearchRequest");
      
          AMapReGeocodeSearchRequest* ref = [[AMapReGeocodeSearchRequest alloc] init];
          HEAP[@(ref.hash)] = ref;
      
          methodResult(@(ref.hash));
      },
      
      @"ObjectFactory::createAMapReGeocodeSearchResponse": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"ObjectFactory::createAMapReGeocodeSearchResponse");
      
          AMapReGeocodeSearchResponse* ref = [[AMapReGeocodeSearchResponse alloc] init];
          HEAP[@(ref.hash)] = ref;
      
          methodResult(@(ref.hash));
      },
      
      @"ObjectFactory::createAMapBusStopSearchRequest": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"ObjectFactory::createAMapBusStopSearchRequest");
      
          AMapBusStopSearchRequest* ref = [[AMapBusStopSearchRequest alloc] init];
          HEAP[@(ref.hash)] = ref;
      
          methodResult(@(ref.hash));
      },
      
      @"ObjectFactory::createAMapBusStopSearchResponse": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"ObjectFactory::createAMapBusStopSearchResponse");
      
          AMapBusStopSearchResponse* ref = [[AMapBusStopSearchResponse alloc] init];
          HEAP[@(ref.hash)] = ref;
      
          methodResult(@(ref.hash));
      },
      
      @"ObjectFactory::createAMapBusLineBaseSearchRequest": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"ObjectFactory::createAMapBusLineBaseSearchRequest");
      
          AMapBusLineBaseSearchRequest* ref = [[AMapBusLineBaseSearchRequest alloc] init];
          HEAP[@(ref.hash)] = ref;
      
          methodResult(@(ref.hash));
      },
      
      @"ObjectFactory::createAMapBusLineNameSearchRequest": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"ObjectFactory::createAMapBusLineNameSearchRequest");
      
          AMapBusLineNameSearchRequest* ref = [[AMapBusLineNameSearchRequest alloc] init];
          HEAP[@(ref.hash)] = ref;
      
          methodResult(@(ref.hash));
      },
      
      @"ObjectFactory::createAMapBusLineIDSearchRequest": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"ObjectFactory::createAMapBusLineIDSearchRequest");
      
          AMapBusLineIDSearchRequest* ref = [[AMapBusLineIDSearchRequest alloc] init];
          HEAP[@(ref.hash)] = ref;
      
          methodResult(@(ref.hash));
      },
      
      @"ObjectFactory::createAMapBusLineSearchResponse": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"ObjectFactory::createAMapBusLineSearchResponse");
      
          AMapBusLineSearchResponse* ref = [[AMapBusLineSearchResponse alloc] init];
          HEAP[@(ref.hash)] = ref;
      
          methodResult(@(ref.hash));
      },
      
      @"ObjectFactory::createAMapDistrictSearchRequest": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"ObjectFactory::createAMapDistrictSearchRequest");
      
          AMapDistrictSearchRequest* ref = [[AMapDistrictSearchRequest alloc] init];
          HEAP[@(ref.hash)] = ref;
      
          methodResult(@(ref.hash));
      },
      
      @"ObjectFactory::createAMapDistrictSearchResponse": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"ObjectFactory::createAMapDistrictSearchResponse");
      
          AMapDistrictSearchResponse* ref = [[AMapDistrictSearchResponse alloc] init];
          HEAP[@(ref.hash)] = ref;
      
          methodResult(@(ref.hash));
      },
      
      @"ObjectFactory::createAMapRouteSearchBaseRequest": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"ObjectFactory::createAMapRouteSearchBaseRequest");
      
          AMapRouteSearchBaseRequest* ref = [[AMapRouteSearchBaseRequest alloc] init];
          HEAP[@(ref.hash)] = ref;
      
          methodResult(@(ref.hash));
      },
      
      @"ObjectFactory::createAMapDrivingRouteSearchRequest": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"ObjectFactory::createAMapDrivingRouteSearchRequest");
      
          AMapDrivingRouteSearchRequest* ref = [[AMapDrivingRouteSearchRequest alloc] init];
          HEAP[@(ref.hash)] = ref;
      
          methodResult(@(ref.hash));
      },
      
      @"ObjectFactory::createAMapWalkingRouteSearchRequest": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"ObjectFactory::createAMapWalkingRouteSearchRequest");
      
          AMapWalkingRouteSearchRequest* ref = [[AMapWalkingRouteSearchRequest alloc] init];
          HEAP[@(ref.hash)] = ref;
      
          methodResult(@(ref.hash));
      },
      
      @"ObjectFactory::createAMapTransitRouteSearchRequest": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"ObjectFactory::createAMapTransitRouteSearchRequest");
      
          AMapTransitRouteSearchRequest* ref = [[AMapTransitRouteSearchRequest alloc] init];
          HEAP[@(ref.hash)] = ref;
      
          methodResult(@(ref.hash));
      },
      
      @"ObjectFactory::createAMapRidingRouteSearchRequest": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"ObjectFactory::createAMapRidingRouteSearchRequest");
      
          AMapRidingRouteSearchRequest* ref = [[AMapRidingRouteSearchRequest alloc] init];
          HEAP[@(ref.hash)] = ref;
      
          methodResult(@(ref.hash));
      },
      
      @"ObjectFactory::createAMapRouteSearchResponse": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"ObjectFactory::createAMapRouteSearchResponse");
      
          AMapRouteSearchResponse* ref = [[AMapRouteSearchResponse alloc] init];
          HEAP[@(ref.hash)] = ref;
      
          methodResult(@(ref.hash));
      },
      
      @"ObjectFactory::createAMapRidingRouteSearchResponse": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"ObjectFactory::createAMapRidingRouteSearchResponse");
      
          AMapRidingRouteSearchResponse* ref = [[AMapRidingRouteSearchResponse alloc] init];
          HEAP[@(ref.hash)] = ref;
      
          methodResult(@(ref.hash));
      },
      
      @"ObjectFactory::createAMapTruckRouteSearchRequest": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"ObjectFactory::createAMapTruckRouteSearchRequest");
      
          AMapTruckRouteSearchRequest* ref = [[AMapTruckRouteSearchRequest alloc] init];
          HEAP[@(ref.hash)] = ref;
      
          methodResult(@(ref.hash));
      },
      
      @"ObjectFactory::createAMapDistanceSearchRequest": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"ObjectFactory::createAMapDistanceSearchRequest");
      
          AMapDistanceSearchRequest* ref = [[AMapDistanceSearchRequest alloc] init];
          HEAP[@(ref.hash)] = ref;
      
          methodResult(@(ref.hash));
      },
      
      @"ObjectFactory::createAMapDistanceSearchResponse": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"ObjectFactory::createAMapDistanceSearchResponse");
      
          AMapDistanceSearchResponse* ref = [[AMapDistanceSearchResponse alloc] init];
          HEAP[@(ref.hash)] = ref;
      
          methodResult(@(ref.hash));
      },
      
      @"ObjectFactory::createAMapWeatherSearchRequest": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"ObjectFactory::createAMapWeatherSearchRequest");
      
          AMapWeatherSearchRequest* ref = [[AMapWeatherSearchRequest alloc] init];
          HEAP[@(ref.hash)] = ref;
      
          methodResult(@(ref.hash));
      },
      
      @"ObjectFactory::createAMapWeatherSearchResponse": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"ObjectFactory::createAMapWeatherSearchResponse");
      
          AMapWeatherSearchResponse* ref = [[AMapWeatherSearchResponse alloc] init];
          HEAP[@(ref.hash)] = ref;
      
          methodResult(@(ref.hash));
      },
      
      @"ObjectFactory::createAMapRoadTrafficSearchBaseRequest": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"ObjectFactory::createAMapRoadTrafficSearchBaseRequest");
      
          AMapRoadTrafficSearchBaseRequest* ref = [[AMapRoadTrafficSearchBaseRequest alloc] init];
          HEAP[@(ref.hash)] = ref;
      
          methodResult(@(ref.hash));
      },
      
      @"ObjectFactory::createAMapRoadTrafficSearchRequest": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"ObjectFactory::createAMapRoadTrafficSearchRequest");
      
          AMapRoadTrafficSearchRequest* ref = [[AMapRoadTrafficSearchRequest alloc] init];
          HEAP[@(ref.hash)] = ref;
      
          methodResult(@(ref.hash));
      },
      
      @"ObjectFactory::createAMapRoadTrafficCircleSearchRequest": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"ObjectFactory::createAMapRoadTrafficCircleSearchRequest");
      
          AMapRoadTrafficCircleSearchRequest* ref = [[AMapRoadTrafficCircleSearchRequest alloc] init];
          HEAP[@(ref.hash)] = ref;
      
          methodResult(@(ref.hash));
      },
      
      @"ObjectFactory::createAMapRoadTrafficSearchResponse": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"ObjectFactory::createAMapRoadTrafficSearchResponse");
      
          AMapRoadTrafficSearchResponse* ref = [[AMapRoadTrafficSearchResponse alloc] init];
          HEAP[@(ref.hash)] = ref;
      
          methodResult(@(ref.hash));
      },
      
      @"ObjectFactory::createAMapNearbySearchRequest": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"ObjectFactory::createAMapNearbySearchRequest");
      
          AMapNearbySearchRequest* ref = [[AMapNearbySearchRequest alloc] init];
          HEAP[@(ref.hash)] = ref;
      
          methodResult(@(ref.hash));
      },
      
      @"ObjectFactory::createAMapNearbySearchResponse": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"ObjectFactory::createAMapNearbySearchResponse");
      
          AMapNearbySearchResponse* ref = [[AMapNearbySearchResponse alloc] init];
          HEAP[@(ref.hash)] = ref;
      
          methodResult(@(ref.hash));
      },
      
      @"ObjectFactory::createAMapCloudSearchBaseRequest": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"ObjectFactory::createAMapCloudSearchBaseRequest");
      
          AMapCloudSearchBaseRequest* ref = [[AMapCloudSearchBaseRequest alloc] init];
          HEAP[@(ref.hash)] = ref;
      
          methodResult(@(ref.hash));
      },
      
      @"ObjectFactory::createAMapCloudPOIAroundSearchRequest": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"ObjectFactory::createAMapCloudPOIAroundSearchRequest");
      
          AMapCloudPOIAroundSearchRequest* ref = [[AMapCloudPOIAroundSearchRequest alloc] init];
          HEAP[@(ref.hash)] = ref;
      
          methodResult(@(ref.hash));
      },
      
      @"ObjectFactory::createAMapCloudPOIPolygonSearchRequest": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"ObjectFactory::createAMapCloudPOIPolygonSearchRequest");
      
          AMapCloudPOIPolygonSearchRequest* ref = [[AMapCloudPOIPolygonSearchRequest alloc] init];
          HEAP[@(ref.hash)] = ref;
      
          methodResult(@(ref.hash));
      },
      
      @"ObjectFactory::createAMapCloudPOIIDSearchRequest": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"ObjectFactory::createAMapCloudPOIIDSearchRequest");
      
          AMapCloudPOIIDSearchRequest* ref = [[AMapCloudPOIIDSearchRequest alloc] init];
          HEAP[@(ref.hash)] = ref;
      
          methodResult(@(ref.hash));
      },
      
      @"ObjectFactory::createAMapCloudPOILocalSearchRequest": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"ObjectFactory::createAMapCloudPOILocalSearchRequest");
      
          AMapCloudPOILocalSearchRequest* ref = [[AMapCloudPOILocalSearchRequest alloc] init];
          HEAP[@(ref.hash)] = ref;
      
          methodResult(@(ref.hash));
      },
      
      @"ObjectFactory::createAMapCloudPOISearchResponse": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"ObjectFactory::createAMapCloudPOISearchResponse");
      
          AMapCloudPOISearchResponse* ref = [[AMapCloudPOISearchResponse alloc] init];
          HEAP[@(ref.hash)] = ref;
      
          methodResult(@(ref.hash));
      },
      
      @"ObjectFactory::createAMapShareSearchBaseRequest": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"ObjectFactory::createAMapShareSearchBaseRequest");
      
          AMapShareSearchBaseRequest* ref = [[AMapShareSearchBaseRequest alloc] init];
          HEAP[@(ref.hash)] = ref;
      
          methodResult(@(ref.hash));
      },
      
      @"ObjectFactory::createAMapLocationShareSearchRequest": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"ObjectFactory::createAMapLocationShareSearchRequest");
      
          AMapLocationShareSearchRequest* ref = [[AMapLocationShareSearchRequest alloc] init];
          HEAP[@(ref.hash)] = ref;
      
          methodResult(@(ref.hash));
      },
      
      @"ObjectFactory::createAMapPOIShareSearchRequest": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"ObjectFactory::createAMapPOIShareSearchRequest");
      
          AMapPOIShareSearchRequest* ref = [[AMapPOIShareSearchRequest alloc] init];
          HEAP[@(ref.hash)] = ref;
      
          methodResult(@(ref.hash));
      },
      
      @"ObjectFactory::createAMapRouteShareSearchRequest": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"ObjectFactory::createAMapRouteShareSearchRequest");
      
          AMapRouteShareSearchRequest* ref = [[AMapRouteShareSearchRequest alloc] init];
          HEAP[@(ref.hash)] = ref;
      
          methodResult(@(ref.hash));
      },
      
      @"ObjectFactory::createAMapNavigationShareSearchRequest": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"ObjectFactory::createAMapNavigationShareSearchRequest");
      
          AMapNavigationShareSearchRequest* ref = [[AMapNavigationShareSearchRequest alloc] init];
          HEAP[@(ref.hash)] = ref;
      
          methodResult(@(ref.hash));
      },
      
      @"ObjectFactory::createAMapShareSearchResponse": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"ObjectFactory::createAMapShareSearchResponse");
      
          AMapShareSearchResponse* ref = [[AMapShareSearchResponse alloc] init];
          HEAP[@(ref.hash)] = ref;
      
          methodResult(@(ref.hash));
      },
      
      @"ObjectFactory::createAMapFutureRouteSearchRequest": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"ObjectFactory::createAMapFutureRouteSearchRequest");
      
          AMapFutureRouteSearchRequest* ref = [[AMapFutureRouteSearchRequest alloc] init];
          HEAP[@(ref.hash)] = ref;
      
          methodResult(@(ref.hash));
      },
      
      @"ObjectFactory::createAMapFutureRouteSearchResponse": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"ObjectFactory::createAMapFutureRouteSearchResponse");
      
          AMapFutureRouteSearchResponse* ref = [[AMapFutureRouteSearchResponse alloc] init];
          HEAP[@(ref.hash)] = ref;
      
          methodResult(@(ref.hash));
      },
      
      @"ObjectFactory::createAMapSearchObject": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"ObjectFactory::createAMapSearchObject");
      
          AMapSearchObject* ref = [[AMapSearchObject alloc] init];
          HEAP[@(ref.hash)] = ref;
      
          methodResult(@(ref.hash));
      },
      
      @"ObjectFactory::createAMapGeoPoint": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"ObjectFactory::createAMapGeoPoint");
      
          AMapGeoPoint* ref = [[AMapGeoPoint alloc] init];
          HEAP[@(ref.hash)] = ref;
      
          methodResult(@(ref.hash));
      },
      
      @"ObjectFactory::createAMapGeoPolygon": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"ObjectFactory::createAMapGeoPolygon");
      
          AMapGeoPolygon* ref = [[AMapGeoPolygon alloc] init];
          HEAP[@(ref.hash)] = ref;
      
          methodResult(@(ref.hash));
      },
      
      @"ObjectFactory::createAMapCity": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"ObjectFactory::createAMapCity");
      
          AMapCity* ref = [[AMapCity alloc] init];
          HEAP[@(ref.hash)] = ref;
      
          methodResult(@(ref.hash));
      },
      
      @"ObjectFactory::createAMapSuggestion": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"ObjectFactory::createAMapSuggestion");
      
          AMapSuggestion* ref = [[AMapSuggestion alloc] init];
          HEAP[@(ref.hash)] = ref;
      
          methodResult(@(ref.hash));
      },
      
      @"ObjectFactory::createAMapTip": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"ObjectFactory::createAMapTip");
      
          AMapTip* ref = [[AMapTip alloc] init];
          HEAP[@(ref.hash)] = ref;
      
          methodResult(@(ref.hash));
      },
      
      @"ObjectFactory::createAMapImage": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"ObjectFactory::createAMapImage");
      
          AMapImage* ref = [[AMapImage alloc] init];
          HEAP[@(ref.hash)] = ref;
      
          methodResult(@(ref.hash));
      },
      
      @"ObjectFactory::createAMapPOIExtension": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"ObjectFactory::createAMapPOIExtension");
      
          AMapPOIExtension* ref = [[AMapPOIExtension alloc] init];
          HEAP[@(ref.hash)] = ref;
      
          methodResult(@(ref.hash));
      },
      
      @"ObjectFactory::createAMapIndoorData": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"ObjectFactory::createAMapIndoorData");
      
          AMapIndoorData* ref = [[AMapIndoorData alloc] init];
          HEAP[@(ref.hash)] = ref;
      
          methodResult(@(ref.hash));
      },
      
      @"ObjectFactory::createAMapSubPOI": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"ObjectFactory::createAMapSubPOI");
      
          AMapSubPOI* ref = [[AMapSubPOI alloc] init];
          HEAP[@(ref.hash)] = ref;
      
          methodResult(@(ref.hash));
      },
      
      @"ObjectFactory::createAMapRoutePOI": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"ObjectFactory::createAMapRoutePOI");
      
          AMapRoutePOI* ref = [[AMapRoutePOI alloc] init];
          HEAP[@(ref.hash)] = ref;
      
          methodResult(@(ref.hash));
      },
      
      @"ObjectFactory::createAMapPOI": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"ObjectFactory::createAMapPOI");
      
          AMapPOI* ref = [[AMapPOI alloc] init];
          HEAP[@(ref.hash)] = ref;
      
          methodResult(@(ref.hash));
      },
      
      @"ObjectFactory::createAMapAOI": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"ObjectFactory::createAMapAOI");
      
          AMapAOI* ref = [[AMapAOI alloc] init];
          HEAP[@(ref.hash)] = ref;
      
          methodResult(@(ref.hash));
      },
      
      @"ObjectFactory::createAMapRoad": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"ObjectFactory::createAMapRoad");
      
          AMapRoad* ref = [[AMapRoad alloc] init];
          HEAP[@(ref.hash)] = ref;
      
          methodResult(@(ref.hash));
      },
      
      @"ObjectFactory::createAMapRoadInter": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"ObjectFactory::createAMapRoadInter");
      
          AMapRoadInter* ref = [[AMapRoadInter alloc] init];
          HEAP[@(ref.hash)] = ref;
      
          methodResult(@(ref.hash));
      },
      
      @"ObjectFactory::createAMapStreetNumber": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"ObjectFactory::createAMapStreetNumber");
      
          AMapStreetNumber* ref = [[AMapStreetNumber alloc] init];
          HEAP[@(ref.hash)] = ref;
      
          methodResult(@(ref.hash));
      },
      
      @"ObjectFactory::createAMapBusinessArea": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"ObjectFactory::createAMapBusinessArea");
      
          AMapBusinessArea* ref = [[AMapBusinessArea alloc] init];
          HEAP[@(ref.hash)] = ref;
      
          methodResult(@(ref.hash));
      },
      
      @"ObjectFactory::createAMapAddressComponent": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"ObjectFactory::createAMapAddressComponent");
      
          AMapAddressComponent* ref = [[AMapAddressComponent alloc] init];
          HEAP[@(ref.hash)] = ref;
      
          methodResult(@(ref.hash));
      },
      
      @"ObjectFactory::createAMapReGeocode": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"ObjectFactory::createAMapReGeocode");
      
          AMapReGeocode* ref = [[AMapReGeocode alloc] init];
          HEAP[@(ref.hash)] = ref;
      
          methodResult(@(ref.hash));
      },
      
      @"ObjectFactory::createAMapGeocode": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"ObjectFactory::createAMapGeocode");
      
          AMapGeocode* ref = [[AMapGeocode alloc] init];
          HEAP[@(ref.hash)] = ref;
      
          methodResult(@(ref.hash));
      },
      
      @"ObjectFactory::createAMapBusStop": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"ObjectFactory::createAMapBusStop");
      
          AMapBusStop* ref = [[AMapBusStop alloc] init];
          HEAP[@(ref.hash)] = ref;
      
          methodResult(@(ref.hash));
      },
      
      @"ObjectFactory::createAMapBusLine": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"ObjectFactory::createAMapBusLine");
      
          AMapBusLine* ref = [[AMapBusLine alloc] init];
          HEAP[@(ref.hash)] = ref;
      
          methodResult(@(ref.hash));
      },
      
      @"ObjectFactory::createAMapDistrict": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"ObjectFactory::createAMapDistrict");
      
          AMapDistrict* ref = [[AMapDistrict alloc] init];
          HEAP[@(ref.hash)] = ref;
      
          methodResult(@(ref.hash));
      },
      
      @"ObjectFactory::createAMapTMC": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"ObjectFactory::createAMapTMC");
      
          AMapTMC* ref = [[AMapTMC alloc] init];
          HEAP[@(ref.hash)] = ref;
      
          methodResult(@(ref.hash));
      },
      
      @"ObjectFactory::createAMapStep": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"ObjectFactory::createAMapStep");
      
          AMapStep* ref = [[AMapStep alloc] init];
          HEAP[@(ref.hash)] = ref;
      
          methodResult(@(ref.hash));
      },
      
      @"ObjectFactory::createAMapPath": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"ObjectFactory::createAMapPath");
      
          AMapPath* ref = [[AMapPath alloc] init];
          HEAP[@(ref.hash)] = ref;
      
          methodResult(@(ref.hash));
      },
      
      @"ObjectFactory::createAMapFutureTimeInfoElement": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"ObjectFactory::createAMapFutureTimeInfoElement");
      
          AMapFutureTimeInfoElement* ref = [[AMapFutureTimeInfoElement alloc] init];
          HEAP[@(ref.hash)] = ref;
      
          methodResult(@(ref.hash));
      },
      
      @"ObjectFactory::createAMapFutureTimeInfo": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"ObjectFactory::createAMapFutureTimeInfo");
      
          AMapFutureTimeInfo* ref = [[AMapFutureTimeInfo alloc] init];
          HEAP[@(ref.hash)] = ref;
      
          methodResult(@(ref.hash));
      },
      
      @"ObjectFactory::createAMapWalking": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"ObjectFactory::createAMapWalking");
      
          AMapWalking* ref = [[AMapWalking alloc] init];
          HEAP[@(ref.hash)] = ref;
      
          methodResult(@(ref.hash));
      },
      
      @"ObjectFactory::createAMapTaxi": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"ObjectFactory::createAMapTaxi");
      
          AMapTaxi* ref = [[AMapTaxi alloc] init];
          HEAP[@(ref.hash)] = ref;
      
          methodResult(@(ref.hash));
      },
      
      @"ObjectFactory::createAMapRailwayStation": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"ObjectFactory::createAMapRailwayStation");
      
          AMapRailwayStation* ref = [[AMapRailwayStation alloc] init];
          HEAP[@(ref.hash)] = ref;
      
          methodResult(@(ref.hash));
      },
      
      @"ObjectFactory::createAMapRailwaySpace": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"ObjectFactory::createAMapRailwaySpace");
      
          AMapRailwaySpace* ref = [[AMapRailwaySpace alloc] init];
          HEAP[@(ref.hash)] = ref;
      
          methodResult(@(ref.hash));
      },
      
      @"ObjectFactory::createAMapRailway": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"ObjectFactory::createAMapRailway");
      
          AMapRailway* ref = [[AMapRailway alloc] init];
          HEAP[@(ref.hash)] = ref;
      
          methodResult(@(ref.hash));
      },
      
      @"ObjectFactory::createAMapSegment": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"ObjectFactory::createAMapSegment");
      
          AMapSegment* ref = [[AMapSegment alloc] init];
          HEAP[@(ref.hash)] = ref;
      
          methodResult(@(ref.hash));
      },
      
      @"ObjectFactory::createAMapTransit": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"ObjectFactory::createAMapTransit");
      
          AMapTransit* ref = [[AMapTransit alloc] init];
          HEAP[@(ref.hash)] = ref;
      
          methodResult(@(ref.hash));
      },
      
      @"ObjectFactory::createAMapRoute": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"ObjectFactory::createAMapRoute");
      
          AMapRoute* ref = [[AMapRoute alloc] init];
          HEAP[@(ref.hash)] = ref;
      
          methodResult(@(ref.hash));
      },
      
      @"ObjectFactory::createAMapDistanceResult": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"ObjectFactory::createAMapDistanceResult");
      
          AMapDistanceResult* ref = [[AMapDistanceResult alloc] init];
          HEAP[@(ref.hash)] = ref;
      
          methodResult(@(ref.hash));
      },
      
      @"ObjectFactory::createAMapLocalWeatherLive": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"ObjectFactory::createAMapLocalWeatherLive");
      
          AMapLocalWeatherLive* ref = [[AMapLocalWeatherLive alloc] init];
          HEAP[@(ref.hash)] = ref;
      
          methodResult(@(ref.hash));
      },
      
      @"ObjectFactory::createAMapLocalDayWeatherForecast": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"ObjectFactory::createAMapLocalDayWeatherForecast");
      
          AMapLocalDayWeatherForecast* ref = [[AMapLocalDayWeatherForecast alloc] init];
          HEAP[@(ref.hash)] = ref;
      
          methodResult(@(ref.hash));
      },
      
      @"ObjectFactory::createAMapLocalWeatherForecast": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"ObjectFactory::createAMapLocalWeatherForecast");
      
          AMapLocalWeatherForecast* ref = [[AMapLocalWeatherForecast alloc] init];
          HEAP[@(ref.hash)] = ref;
      
          methodResult(@(ref.hash));
      },
      
      @"ObjectFactory::createAMapNearbyUserInfo": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"ObjectFactory::createAMapNearbyUserInfo");
      
          AMapNearbyUserInfo* ref = [[AMapNearbyUserInfo alloc] init];
          HEAP[@(ref.hash)] = ref;
      
          methodResult(@(ref.hash));
      },
      
      @"ObjectFactory::createAMapTrafficEvaluation": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"ObjectFactory::createAMapTrafficEvaluation");
      
          AMapTrafficEvaluation* ref = [[AMapTrafficEvaluation alloc] init];
          HEAP[@(ref.hash)] = ref;
      
          methodResult(@(ref.hash));
      },
      
      @"ObjectFactory::createAMapTrafficRoad": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"ObjectFactory::createAMapTrafficRoad");
      
          AMapTrafficRoad* ref = [[AMapTrafficRoad alloc] init];
          HEAP[@(ref.hash)] = ref;
      
          methodResult(@(ref.hash));
      },
      
      @"ObjectFactory::createAMapTrafficInfo": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"ObjectFactory::createAMapTrafficInfo");
      
          AMapTrafficInfo* ref = [[AMapTrafficInfo alloc] init];
          HEAP[@(ref.hash)] = ref;
      
          methodResult(@(ref.hash));
      },
      
      @"ObjectFactory::createAMapCloudImage": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"ObjectFactory::createAMapCloudImage");
      
          AMapCloudImage* ref = [[AMapCloudImage alloc] init];
          HEAP[@(ref.hash)] = ref;
      
          methodResult(@(ref.hash));
      },
      
      @"ObjectFactory::createAMapCloudPOI": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"ObjectFactory::createAMapCloudPOI");
      
          AMapCloudPOI* ref = [[AMapCloudPOI alloc] init];
          HEAP[@(ref.hash)] = ref;
      
          methodResult(@(ref.hash));
      },
      
      @"ObjectFactory::createAMapNearbyUploadInfo": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"ObjectFactory::createAMapNearbyUploadInfo");
      
          AMapNearbyUploadInfo* ref = [[AMapNearbyUploadInfo alloc] init];
          HEAP[@(ref.hash)] = ref;
      
          methodResult(@(ref.hash));
      },
      
      @"ObjectFactory::createAMapNearbySearchManager": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"ObjectFactory::createAMapNearbySearchManager");
      
          AMapNearbySearchManager* ref = [AMapNearbySearchManager alloc];
          HEAP[@(ref.hash)] = ref;
      
          methodResult(@(ref.hash));
      },
      
      @"ObjectFactory::createAMapSearchAPI": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"ObjectFactory::createAMapSearchAPI");
      
          AMapSearchAPI* ref = [[AMapSearchAPI alloc] init];
          HEAP[@(ref.hash)] = ref;
      
          methodResult(@(ref.hash));
      },
      
    };
  }

  return self;
}

+ (void)registerWithRegistrar:(NSObject <FlutterPluginRegistrar> *)registrar {
  // 引用Map
  HEAP = @{}.mutableCopy;

  FlutterMethodChannel *channel = [FlutterMethodChannel
      methodChannelWithName:@"me.yohom/amap_search_fluttify"
            binaryMessenger:[registrar messenger]];

  [registrar addMethodCallDelegate:[[AmapSearchFluttifyPlugin alloc] initWithFlutterPluginRegistrar:registrar]
                           channel:channel];

  // 注册View
  
}

// Method Handlers
- (void)handleMethodCall:(FlutterMethodCall *)methodCall result:(FlutterResult)methodResult {
  NSDictionary<NSString *, id> *args = (NSDictionary<NSString *, id> *) [methodCall arguments];
  if ([@"ObjectFactory::release" isEqualToString:methodCall.method]) {
    [HEAP removeObjectForKey:(NSNumber *) args[@"refId"]];
    methodResult(@"success");
  } else if ([@"ObjectFactory::clearRefMap" isEqualToString:methodCall.method]) {
    [HEAP removeAllObjects];
    methodResult(@"success");
  } else if ([@"ObjectFactory::createCLLocationCoordinate2D" isEqualToString:methodCall.method]) {
    CLLocationDegrees latitude = [args[@"latitude"] doubleValue];
    CLLocationDegrees longitude = [args[@"longitude"] doubleValue];

    CLLocationCoordinate2D data = CLLocationCoordinate2DMake(latitude, longitude);

    NSValue* dataValue = [NSValue value:&data withObjCType:@encode(CLLocationCoordinate2D)];
    HEAP[@(dataValue.hash)] = dataValue;

    methodResult(@(dataValue.hash));
  } else {
    if (_handlerMap[methodCall.method] != nil) {
      _handlerMap[methodCall.method](_registrar, args, methodResult);
    } else {
      methodResult(FlutterMethodNotImplemented);
    }
  }
}

// 委托方法们
- (AMapNearbyUploadInfo*)nearbyInfoForUploading : (AMapNearbySearchManager*)manager
{
  FlutterMethodChannel *channel = [FlutterMethodChannel
      methodChannelWithName:@"AMapNearbySearchManagerDelegate::Callback"
            binaryMessenger:[_registrar messenger]];

  NSLog(@"AMapNearbySearchManagerDelegate::nearbyInfoForUploading");

  HEAP[@(manager.hash)] = manager;

  // 由于flutter无法同步调用method channel, 所以暂不支持有返回值的回调方法
  // 相关issue https://github.com/flutter/flutter/issues/28310
  NSLog(@"暂不支持有返回值的回调方法");
  return nil;
}

- (void)onNearbyInfoUploadedWithError : (NSError*)error
{
  FlutterMethodChannel *channel = [FlutterMethodChannel
      methodChannelWithName:@"AMapNearbySearchManagerDelegate::Callback"
            binaryMessenger:[_registrar messenger]];

  NSLog(@"AMapNearbySearchManagerDelegate::onNearbyInfoUploadedWithError");

  HEAP[@(error.hash)] = error;

  [channel invokeMethod:@"Callback::AMapNearbySearchManagerDelegate::onNearbyInfoUploadedWithError" arguments:@{@"error": @(error.hash)}];
  
}

- (void)onUserInfoClearedWithError : (NSError*)error
{
  FlutterMethodChannel *channel = [FlutterMethodChannel
      methodChannelWithName:@"AMapNearbySearchManagerDelegate::Callback"
            binaryMessenger:[_registrar messenger]];

  NSLog(@"AMapNearbySearchManagerDelegate::onUserInfoClearedWithError");

  HEAP[@(error.hash)] = error;

  [channel invokeMethod:@"Callback::AMapNearbySearchManagerDelegate::onUserInfoClearedWithError" arguments:@{@"error": @(error.hash)}];
  
}

- (void)AMapSearchRequest : (id)request didFailWithError: (NSError*)error
{
  FlutterMethodChannel *channel = [FlutterMethodChannel
      methodChannelWithName:@"AMapSearchDelegate::Callback"
            binaryMessenger:[_registrar messenger]];

  NSLog(@"AMapSearchDelegate::AMapSearchRequestDidFailWithError");

  HEAP[@(error.hash)] = error;

  [channel invokeMethod:@"Callback::AMapSearchDelegate::AMapSearchRequestDidFailWithError" arguments:@{@"request": @(((NSObject*) request).hash), @"error": @(error.hash)}];
  
}

- (void)onPOISearchDone : (AMapPOISearchBaseRequest*)request response: (AMapPOISearchResponse*)response
{
  FlutterMethodChannel *channel = [FlutterMethodChannel
      methodChannelWithName:@"AMapSearchDelegate::Callback"
            binaryMessenger:[_registrar messenger]];

  NSLog(@"AMapSearchDelegate::onPOISearchDoneResponse");

  HEAP[@(request.hash)] = request;
  HEAP[@(response.hash)] = response;

  [channel invokeMethod:@"Callback::AMapSearchDelegate::onPOISearchDoneResponse" arguments:@{@"request": @(request.hash), @"response": @(response.hash)}];
  
}

- (void)onRoutePOISearchDone : (AMapRoutePOISearchRequest*)request response: (AMapRoutePOISearchResponse*)response
{
  FlutterMethodChannel *channel = [FlutterMethodChannel
      methodChannelWithName:@"AMapSearchDelegate::Callback"
            binaryMessenger:[_registrar messenger]];

  NSLog(@"AMapSearchDelegate::onRoutePOISearchDoneResponse");

  HEAP[@(request.hash)] = request;
  HEAP[@(response.hash)] = response;

  [channel invokeMethod:@"Callback::AMapSearchDelegate::onRoutePOISearchDoneResponse" arguments:@{@"request": @(request.hash), @"response": @(response.hash)}];
  
}

- (void)onGeocodeSearchDone : (AMapGeocodeSearchRequest*)request response: (AMapGeocodeSearchResponse*)response
{
  FlutterMethodChannel *channel = [FlutterMethodChannel
      methodChannelWithName:@"AMapSearchDelegate::Callback"
            binaryMessenger:[_registrar messenger]];

  NSLog(@"AMapSearchDelegate::onGeocodeSearchDoneResponse");

  HEAP[@(request.hash)] = request;
  HEAP[@(response.hash)] = response;

  [channel invokeMethod:@"Callback::AMapSearchDelegate::onGeocodeSearchDoneResponse" arguments:@{@"request": @(request.hash), @"response": @(response.hash)}];
  
}

- (void)onReGeocodeSearchDone : (AMapReGeocodeSearchRequest*)request response: (AMapReGeocodeSearchResponse*)response
{
  FlutterMethodChannel *channel = [FlutterMethodChannel
      methodChannelWithName:@"AMapSearchDelegate::Callback"
            binaryMessenger:[_registrar messenger]];

  NSLog(@"AMapSearchDelegate::onReGeocodeSearchDoneResponse");

  HEAP[@(request.hash)] = request;
  HEAP[@(response.hash)] = response;

  [channel invokeMethod:@"Callback::AMapSearchDelegate::onReGeocodeSearchDoneResponse" arguments:@{@"request": @(request.hash), @"response": @(response.hash)}];
  
}

- (void)onInputTipsSearchDone : (AMapInputTipsSearchRequest*)request response: (AMapInputTipsSearchResponse*)response
{
  FlutterMethodChannel *channel = [FlutterMethodChannel
      methodChannelWithName:@"AMapSearchDelegate::Callback"
            binaryMessenger:[_registrar messenger]];

  NSLog(@"AMapSearchDelegate::onInputTipsSearchDoneResponse");

  HEAP[@(request.hash)] = request;
  HEAP[@(response.hash)] = response;

  [channel invokeMethod:@"Callback::AMapSearchDelegate::onInputTipsSearchDoneResponse" arguments:@{@"request": @(request.hash), @"response": @(response.hash)}];
  
}

- (void)onBusStopSearchDone : (AMapBusStopSearchRequest*)request response: (AMapBusStopSearchResponse*)response
{
  FlutterMethodChannel *channel = [FlutterMethodChannel
      methodChannelWithName:@"AMapSearchDelegate::Callback"
            binaryMessenger:[_registrar messenger]];

  NSLog(@"AMapSearchDelegate::onBusStopSearchDoneResponse");

  HEAP[@(request.hash)] = request;
  HEAP[@(response.hash)] = response;

  [channel invokeMethod:@"Callback::AMapSearchDelegate::onBusStopSearchDoneResponse" arguments:@{@"request": @(request.hash), @"response": @(response.hash)}];
  
}

- (void)onBusLineSearchDone : (AMapBusLineBaseSearchRequest*)request response: (AMapBusLineSearchResponse*)response
{
  FlutterMethodChannel *channel = [FlutterMethodChannel
      methodChannelWithName:@"AMapSearchDelegate::Callback"
            binaryMessenger:[_registrar messenger]];

  NSLog(@"AMapSearchDelegate::onBusLineSearchDoneResponse");

  HEAP[@(request.hash)] = request;
  HEAP[@(response.hash)] = response;

  [channel invokeMethod:@"Callback::AMapSearchDelegate::onBusLineSearchDoneResponse" arguments:@{@"request": @(request.hash), @"response": @(response.hash)}];
  
}

- (void)onDistrictSearchDone : (AMapDistrictSearchRequest*)request response: (AMapDistrictSearchResponse*)response
{
  FlutterMethodChannel *channel = [FlutterMethodChannel
      methodChannelWithName:@"AMapSearchDelegate::Callback"
            binaryMessenger:[_registrar messenger]];

  NSLog(@"AMapSearchDelegate::onDistrictSearchDoneResponse");

  HEAP[@(request.hash)] = request;
  HEAP[@(response.hash)] = response;

  [channel invokeMethod:@"Callback::AMapSearchDelegate::onDistrictSearchDoneResponse" arguments:@{@"request": @(request.hash), @"response": @(response.hash)}];
  
}

- (void)onRouteSearchDone : (AMapRouteSearchBaseRequest*)request response: (AMapRouteSearchResponse*)response
{
  FlutterMethodChannel *channel = [FlutterMethodChannel
      methodChannelWithName:@"AMapSearchDelegate::Callback"
            binaryMessenger:[_registrar messenger]];

  NSLog(@"AMapSearchDelegate::onRouteSearchDoneResponse");

  HEAP[@(request.hash)] = request;
  HEAP[@(response.hash)] = response;

  [channel invokeMethod:@"Callback::AMapSearchDelegate::onRouteSearchDoneResponse" arguments:@{@"request": @(request.hash), @"response": @(response.hash)}];
  
}

- (void)onFutureRouteSearchDone : (AMapRouteSearchBaseRequest*)request response: (AMapFutureRouteSearchResponse*)response
{
  FlutterMethodChannel *channel = [FlutterMethodChannel
      methodChannelWithName:@"AMapSearchDelegate::Callback"
            binaryMessenger:[_registrar messenger]];

  NSLog(@"AMapSearchDelegate::onFutureRouteSearchDoneResponse");

  HEAP[@(request.hash)] = request;
  HEAP[@(response.hash)] = response;

  [channel invokeMethod:@"Callback::AMapSearchDelegate::onFutureRouteSearchDoneResponse" arguments:@{@"request": @(request.hash), @"response": @(response.hash)}];
  
}

- (void)onDistanceSearchDone : (AMapDistanceSearchRequest*)request response: (AMapDistanceSearchResponse*)response
{
  FlutterMethodChannel *channel = [FlutterMethodChannel
      methodChannelWithName:@"AMapSearchDelegate::Callback"
            binaryMessenger:[_registrar messenger]];

  NSLog(@"AMapSearchDelegate::onDistanceSearchDoneResponse");

  HEAP[@(request.hash)] = request;
  HEAP[@(response.hash)] = response;

  [channel invokeMethod:@"Callback::AMapSearchDelegate::onDistanceSearchDoneResponse" arguments:@{@"request": @(request.hash), @"response": @(response.hash)}];
  
}

- (void)onWeatherSearchDone : (AMapWeatherSearchRequest*)request response: (AMapWeatherSearchResponse*)response
{
  FlutterMethodChannel *channel = [FlutterMethodChannel
      methodChannelWithName:@"AMapSearchDelegate::Callback"
            binaryMessenger:[_registrar messenger]];

  NSLog(@"AMapSearchDelegate::onWeatherSearchDoneResponse");

  HEAP[@(request.hash)] = request;
  HEAP[@(response.hash)] = response;

  [channel invokeMethod:@"Callback::AMapSearchDelegate::onWeatherSearchDoneResponse" arguments:@{@"request": @(request.hash), @"response": @(response.hash)}];
  
}

- (void)onRoadTrafficSearchDone : (AMapRoadTrafficSearchBaseRequest*)request response: (AMapRoadTrafficSearchResponse*)response
{
  FlutterMethodChannel *channel = [FlutterMethodChannel
      methodChannelWithName:@"AMapSearchDelegate::Callback"
            binaryMessenger:[_registrar messenger]];

  NSLog(@"AMapSearchDelegate::onRoadTrafficSearchDoneResponse");

  HEAP[@(request.hash)] = request;
  HEAP[@(response.hash)] = response;

  [channel invokeMethod:@"Callback::AMapSearchDelegate::onRoadTrafficSearchDoneResponse" arguments:@{@"request": @(request.hash), @"response": @(response.hash)}];
  
}

- (void)onNearbySearchDone : (AMapNearbySearchRequest*)request response: (AMapNearbySearchResponse*)response
{
  FlutterMethodChannel *channel = [FlutterMethodChannel
      methodChannelWithName:@"AMapSearchDelegate::Callback"
            binaryMessenger:[_registrar messenger]];

  NSLog(@"AMapSearchDelegate::onNearbySearchDoneResponse");

  HEAP[@(request.hash)] = request;
  HEAP[@(response.hash)] = response;

  [channel invokeMethod:@"Callback::AMapSearchDelegate::onNearbySearchDoneResponse" arguments:@{@"request": @(request.hash), @"response": @(response.hash)}];
  
}

- (void)onCloudSearchDone : (AMapCloudSearchBaseRequest*)request response: (AMapCloudPOISearchResponse*)response
{
  FlutterMethodChannel *channel = [FlutterMethodChannel
      methodChannelWithName:@"AMapSearchDelegate::Callback"
            binaryMessenger:[_registrar messenger]];

  NSLog(@"AMapSearchDelegate::onCloudSearchDoneResponse");

  HEAP[@(request.hash)] = request;
  HEAP[@(response.hash)] = response;

  [channel invokeMethod:@"Callback::AMapSearchDelegate::onCloudSearchDoneResponse" arguments:@{@"request": @(request.hash), @"response": @(response.hash)}];
  
}

- (void)onShareSearchDone : (AMapShareSearchBaseRequest*)request response: (AMapShareSearchResponse*)response
{
  FlutterMethodChannel *channel = [FlutterMethodChannel
      methodChannelWithName:@"AMapSearchDelegate::Callback"
            binaryMessenger:[_registrar messenger]];

  NSLog(@"AMapSearchDelegate::onShareSearchDoneResponse");

  HEAP[@(request.hash)] = request;
  HEAP[@(response.hash)] = response;

  [channel invokeMethod:@"Callback::AMapSearchDelegate::onShareSearchDoneResponse" arguments:@{@"request": @(request.hash), @"response": @(response.hash)}];
  
}


@end