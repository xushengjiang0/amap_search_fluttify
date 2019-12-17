// ignore_for_file: non_constant_identifier_names, camel_case_types, missing_return, unused_import, unused_local_variable
//////////////////////////////////////////////////////////
// GENERATED BY FLUTTIFY. DO NOT EDIT IT.
//////////////////////////////////////////////////////////

import 'dart:typed_data';

import 'package:amap_search_fluttify/src/ios/ios.export.g.dart';
import 'package:amap_search_fluttify/src/android/android.export.g.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

class com_amap_api_services_route_WalkRouteResult extends com_amap_api_services_route_RouteResult with android_os_Parcelable {
  

  // generate getters
  

  // generate setters
  

  // generate methods
  Future<List<com_amap_api_services_route_WalkPath>> getPaths() async {
    // print log
    if (fluttifyLogEnabled) {
      print('fluttify-dart: com.amap.api.services.route.WalkRouteResult@$refId::getPaths([])');
    }
  
    // invoke native method
    final result = await MethodChannel('me.yohom/amap_search_fluttify').invokeMethod('com.amap.api.services.route.WalkRouteResult::getPaths', {"refId": refId});
  
  
    // handle native call
  
  
    // convert native result to dart side object
    if (result == null) {
      return null;
    } else {
      kNativeObjectPool.addAll((result as List).cast<int>().map((it) => com_amap_api_services_route_WalkPath()..refId = it..tag = 'amap_search_fluttify').toList());
      return (result as List).cast<int>().map((it) => com_amap_api_services_route_WalkPath()..refId = it..tag = 'amap_search_fluttify').toList();
    }
  }
  
  Future<void> setPaths(List<com_amap_api_services_route_WalkPath> var1) async {
    // print log
    if (fluttifyLogEnabled) {
      print('fluttify-dart: com.amap.api.services.route.WalkRouteResult@$refId::setPaths([])');
    }
  
    // invoke native method
    final result = await MethodChannel('me.yohom/amap_search_fluttify').invokeMethod('com.amap.api.services.route.WalkRouteResult::setPaths', {"var1": var1.map((it) => it.refId).toList(), "refId": refId});
  
  
    // handle native call
  
  
    // convert native result to dart side object
    if (result == null) {
      return null;
    } else {
    
      return result;
    }
  }
  
  Future<com_amap_api_services_route_RouteSearch_WalkRouteQuery> getWalkQuery() async {
    // print log
    if (fluttifyLogEnabled) {
      print('fluttify-dart: com.amap.api.services.route.WalkRouteResult@$refId::getWalkQuery([])');
    }
  
    // invoke native method
    final result = await MethodChannel('me.yohom/amap_search_fluttify').invokeMethod('com.amap.api.services.route.WalkRouteResult::getWalkQuery', {"refId": refId});
  
  
    // handle native call
  
  
    // convert native result to dart side object
    if (result == null) {
      return null;
    } else {
      kNativeObjectPool.add(com_amap_api_services_route_RouteSearch_WalkRouteQuery()..refId = result..tag = 'amap_search_fluttify');
      return com_amap_api_services_route_RouteSearch_WalkRouteQuery()..refId = result..tag = 'amap_search_fluttify';
    }
  }
  
  Future<void> setWalkQuery(com_amap_api_services_route_RouteSearch_WalkRouteQuery var1) async {
    // print log
    if (fluttifyLogEnabled) {
      print('fluttify-dart: com.amap.api.services.route.WalkRouteResult@$refId::setWalkQuery([])');
    }
  
    // invoke native method
    final result = await MethodChannel('me.yohom/amap_search_fluttify').invokeMethod('com.amap.api.services.route.WalkRouteResult::setWalkQuery', {"var1": var1.refId, "refId": refId});
  
  
    // handle native call
  
  
    // convert native result to dart side object
    if (result == null) {
      return null;
    } else {
    
      return result;
    }
  }
  
}