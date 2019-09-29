import 'dart:typed_data';

import 'package:amap_search_fluttify/src/ios/ios.export.dart';
import 'package:amap_search_fluttify/src/android/android.export.dart';
import 'package:flutter/services.dart';

// ignore_for_file: non_constant_identifier_names, camel_case_types
class AMapPOIKeywordsSearchRequest extends AMapPOISearchBaseRequest  {
  static final _channel = MethodChannel('me.yohom/amap_search_fluttify');

  // 生成getters
  Future<String> get_keywords() async {
    final result = await _channel.invokeMethod("AMapPOIKeywordsSearchRequest::get_keywords", {'refId': refId});
    return result;
  }
  
  Future<String> get_city() async {
    final result = await _channel.invokeMethod("AMapPOIKeywordsSearchRequest::get_city", {'refId': refId});
    return result;
  }
  
  Future<bool> get_cityLimit() async {
    final result = await _channel.invokeMethod("AMapPOIKeywordsSearchRequest::get_cityLimit", {'refId': refId});
    return result;
  }
  
  Future<AMapGeoPoint> get_location() async {
    final result = await _channel.invokeMethod("AMapPOIKeywordsSearchRequest::get_location", {'refId': refId});
    return AMapGeoPoint()..refId = result;
  }
  

  // 生成setters
  Future<void> set_keywords(String keywords) async {
    await _channel.invokeMethod('AMapPOIKeywordsSearchRequest::set_keywords', {'refId': refId, "keywords": keywords});
  
  
  }
  
  Future<void> set_city(String city) async {
    await _channel.invokeMethod('AMapPOIKeywordsSearchRequest::set_city', {'refId': refId, "city": city});
  
  
  }
  
  Future<void> set_cityLimit(bool cityLimit) async {
    await _channel.invokeMethod('AMapPOIKeywordsSearchRequest::set_cityLimit', {'refId': refId, "cityLimit": cityLimit});
  
  
  }
  
  Future<void> set_location(AMapGeoPoint location) async {
    await _channel.invokeMethod('AMapPOIKeywordsSearchRequest::set_location', {'refId': refId, "location": location.refId});
  
  
  }
  

  // 生成方法们
  
}