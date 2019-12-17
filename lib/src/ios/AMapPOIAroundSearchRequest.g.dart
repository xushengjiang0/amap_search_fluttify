// ignore_for_file: non_constant_identifier_names, camel_case_types, missing_return, unused_import, unused_local_variable
//////////////////////////////////////////////////////////
// GENERATED BY FLUTTIFY. DO NOT EDIT IT.
//////////////////////////////////////////////////////////

import 'dart:typed_data';

import 'package:amap_search_fluttify/src/ios/ios.export.g.dart';
import 'package:amap_search_fluttify/src/android/android.export.g.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

class AMapPOIAroundSearchRequest extends AMapPOISearchBaseRequest  {
  

  // generate getters
  Future<String> get_keywords() async {
    final result = await MethodChannel('me.yohom/amap_search_fluttify').invokeMethod("AMapPOIAroundSearchRequest::get_keywords", {'refId': refId});
  
    return result;
  }
  
  Future<AMapGeoPoint> get_location() async {
    final result = await MethodChannel('me.yohom/amap_search_fluttify').invokeMethod("AMapPOIAroundSearchRequest::get_location", {'refId': refId});
    kNativeObjectPool.add(AMapGeoPoint()..refId = result..tag = 'amap_search_fluttify');
    return AMapGeoPoint()..refId = result..tag = 'amap_search_fluttify';
  }
  
  Future<int> get_radius() async {
    final result = await MethodChannel('me.yohom/amap_search_fluttify').invokeMethod("AMapPOIAroundSearchRequest::get_radius", {'refId': refId});
  
    return result;
  }
  
  Future<String> get_city() async {
    final result = await MethodChannel('me.yohom/amap_search_fluttify').invokeMethod("AMapPOIAroundSearchRequest::get_city", {'refId': refId});
  
    return result;
  }
  

  // generate setters
  Future<void> set_keywords(String keywords) async {
    await MethodChannel('me.yohom/amap_search_fluttify').invokeMethod('AMapPOIAroundSearchRequest::set_keywords', {'refId': refId, "keywords": keywords});
  
  
  }
  
  Future<void> set_location(AMapGeoPoint location) async {
    await MethodChannel('me.yohom/amap_search_fluttify').invokeMethod('AMapPOIAroundSearchRequest::set_location', {'refId': refId, "location": location.refId});
  
  
  }
  
  Future<void> set_radius(int radius) async {
    await MethodChannel('me.yohom/amap_search_fluttify').invokeMethod('AMapPOIAroundSearchRequest::set_radius', {'refId': refId, "radius": radius});
  
  
  }
  
  Future<void> set_city(String city) async {
    await MethodChannel('me.yohom/amap_search_fluttify').invokeMethod('AMapPOIAroundSearchRequest::set_city', {'refId': refId, "city": city});
  
  
  }
  

  // generate methods
  
}