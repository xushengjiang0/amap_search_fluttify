import 'dart:typed_data';

import 'package:amap_search_fluttify/src/ios/ios.export.dart';
import 'package:amap_search_fluttify/src/android/android.export.dart';
import 'package:flutter/services.dart';

// ignore_for_file: non_constant_identifier_names, camel_case_types, missing_return, unused_import
class com_amap_api_services_route_RouteSearch_RideRouteQuery extends Ref_Android  {
  static final _channel = MethodChannel('me.yohom/amap_search_fluttify');

  // 生成getters
  

  // 生成setters
  

  // 生成方法们
  Future<com_amap_api_services_route_RouteSearch_FromAndTo> getFromAndTo() async {
    // 日志打印
    print('fluttify-dart: com.amap.api.services.route.RouteSearch.RideRouteQuery@$refId::getFromAndTo([])');
  
    // 调用原生方法
    final result = await _channel.invokeMethod('com.amap.api.services.route.RouteSearch.RideRouteQuery::getFromAndTo', {"refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return com_amap_api_services_route_RouteSearch_FromAndTo()..refId = result;
    }
  }
  
  Future<int> getMode() async {
    // 日志打印
    print('fluttify-dart: com.amap.api.services.route.RouteSearch.RideRouteQuery@$refId::getMode([])');
  
    // 调用原生方法
    final result = await _channel.invokeMethod('com.amap.api.services.route.RouteSearch.RideRouteQuery::getMode', {"refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return result;
    }
  }
  
}