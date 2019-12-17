// ignore_for_file: non_constant_identifier_names, camel_case_types, missing_return, unused_import, unused_local_variable
//////////////////////////////////////////////////////////
// GENERATED BY FLUTTIFY. DO NOT EDIT IT.
//////////////////////////////////////////////////////////

import 'dart:typed_data';

import 'package:amap_search_fluttify/src/ios/ios.export.g.dart';
import 'package:amap_search_fluttify/src/android/android.export.g.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

class com_amap_api_services_route_BusRouteResult extends com_amap_api_services_route_RouteResult with android_os_Parcelable {
  

  // generate getters
  

  // generate setters
  

  // generate methods
  Future<double> getTaxiCost() async {
    // print log
    if (fluttifyLogEnabled) {
      print('fluttify-dart: com.amap.api.services.route.BusRouteResult@$refId::getTaxiCost([])');
    }
  
    // invoke native method
    final result = await MethodChannel('me.yohom/amap_search_fluttify').invokeMethod('com.amap.api.services.route.BusRouteResult::getTaxiCost', {"refId": refId});
  
  
    // handle native call
  
  
    // convert native result to dart side object
    if (result == null) {
      return null;
    } else {
    
      return result;
    }
  }
  
  Future<void> setTaxiCost(double var1) async {
    // print log
    if (fluttifyLogEnabled) {
      print('fluttify-dart: com.amap.api.services.route.BusRouteResult@$refId::setTaxiCost([\'var1\':$var1])');
    }
  
    // invoke native method
    final result = await MethodChannel('me.yohom/amap_search_fluttify').invokeMethod('com.amap.api.services.route.BusRouteResult::setTaxiCost', {"var1": var1, "refId": refId});
  
  
    // handle native call
  
  
    // convert native result to dart side object
    if (result == null) {
      return null;
    } else {
    
      return result;
    }
  }
  
  Future<List<com_amap_api_services_route_BusPath>> getPaths() async {
    // print log
    if (fluttifyLogEnabled) {
      print('fluttify-dart: com.amap.api.services.route.BusRouteResult@$refId::getPaths([])');
    }
  
    // invoke native method
    final result = await MethodChannel('me.yohom/amap_search_fluttify').invokeMethod('com.amap.api.services.route.BusRouteResult::getPaths', {"refId": refId});
  
  
    // handle native call
  
  
    // convert native result to dart side object
    if (result == null) {
      return null;
    } else {
      kNativeObjectPool.addAll((result as List).cast<int>().map((it) => com_amap_api_services_route_BusPath()..refId = it..tag = 'amap_search_fluttify').toList());
      return (result as List).cast<int>().map((it) => com_amap_api_services_route_BusPath()..refId = it..tag = 'amap_search_fluttify').toList();
    }
  }
  
  Future<void> setPaths(List<com_amap_api_services_route_BusPath> var1) async {
    // print log
    if (fluttifyLogEnabled) {
      print('fluttify-dart: com.amap.api.services.route.BusRouteResult@$refId::setPaths([])');
    }
  
    // invoke native method
    final result = await MethodChannel('me.yohom/amap_search_fluttify').invokeMethod('com.amap.api.services.route.BusRouteResult::setPaths', {"var1": var1.map((it) => it.refId).toList(), "refId": refId});
  
  
    // handle native call
  
  
    // convert native result to dart side object
    if (result == null) {
      return null;
    } else {
    
      return result;
    }
  }
  
  Future<com_amap_api_services_route_RouteSearch_BusRouteQuery> getBusQuery() async {
    // print log
    if (fluttifyLogEnabled) {
      print('fluttify-dart: com.amap.api.services.route.BusRouteResult@$refId::getBusQuery([])');
    }
  
    // invoke native method
    final result = await MethodChannel('me.yohom/amap_search_fluttify').invokeMethod('com.amap.api.services.route.BusRouteResult::getBusQuery', {"refId": refId});
  
  
    // handle native call
  
  
    // convert native result to dart side object
    if (result == null) {
      return null;
    } else {
      kNativeObjectPool.add(com_amap_api_services_route_RouteSearch_BusRouteQuery()..refId = result..tag = 'amap_search_fluttify');
      return com_amap_api_services_route_RouteSearch_BusRouteQuery()..refId = result..tag = 'amap_search_fluttify';
    }
  }
  
  Future<void> setBusQuery(com_amap_api_services_route_RouteSearch_BusRouteQuery var1) async {
    // print log
    if (fluttifyLogEnabled) {
      print('fluttify-dart: com.amap.api.services.route.BusRouteResult@$refId::setBusQuery([])');
    }
  
    // invoke native method
    final result = await MethodChannel('me.yohom/amap_search_fluttify').invokeMethod('com.amap.api.services.route.BusRouteResult::setBusQuery', {"var1": var1.refId, "refId": refId});
  
  
    // handle native call
  
  
    // convert native result to dart side object
    if (result == null) {
      return null;
    } else {
    
      return result;
    }
  }
  
}