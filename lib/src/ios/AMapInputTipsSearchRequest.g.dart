// ignore_for_file: non_constant_identifier_names, camel_case_types, missing_return, unused_import, unused_local_variable
//////////////////////////////////////////////////////////
// GENERATED BY FLUTTIFY. DO NOT EDIT IT.
//////////////////////////////////////////////////////////

import 'dart:typed_data';

import 'package:amap_search_fluttify/src/ios/ios.export.g.dart';
import 'package:amap_search_fluttify/src/android/android.export.g.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

class AMapInputTipsSearchRequest extends AMapSearchObject  {
  

  // generate getters
  Future<String> get_keywords() async {
    final result = await MethodChannel('me.yohom/amap_search_fluttify').invokeMethod("AMapInputTipsSearchRequest::get_keywords", {'refId': refId});
  
    return result;
  }
  
  Future<String> get_city() async {
    final result = await MethodChannel('me.yohom/amap_search_fluttify').invokeMethod("AMapInputTipsSearchRequest::get_city", {'refId': refId});
  
    return result;
  }
  
  Future<String> get_types() async {
    final result = await MethodChannel('me.yohom/amap_search_fluttify').invokeMethod("AMapInputTipsSearchRequest::get_types", {'refId': refId});
  
    return result;
  }
  
  Future<bool> get_cityLimit() async {
    final result = await MethodChannel('me.yohom/amap_search_fluttify').invokeMethod("AMapInputTipsSearchRequest::get_cityLimit", {'refId': refId});
  
    return result;
  }
  
  Future<String> get_location() async {
    final result = await MethodChannel('me.yohom/amap_search_fluttify').invokeMethod("AMapInputTipsSearchRequest::get_location", {'refId': refId});
  
    return result;
  }
  

  // generate setters
  Future<void> set_keywords(String keywords) async {
    await MethodChannel('me.yohom/amap_search_fluttify').invokeMethod('AMapInputTipsSearchRequest::set_keywords', {'refId': refId, "keywords": keywords});
  
  
  }
  
  Future<void> set_city(String city) async {
    await MethodChannel('me.yohom/amap_search_fluttify').invokeMethod('AMapInputTipsSearchRequest::set_city', {'refId': refId, "city": city});
  
  
  }
  
  Future<void> set_types(String types) async {
    await MethodChannel('me.yohom/amap_search_fluttify').invokeMethod('AMapInputTipsSearchRequest::set_types', {'refId': refId, "types": types});
  
  
  }
  
  Future<void> set_cityLimit(bool cityLimit) async {
    await MethodChannel('me.yohom/amap_search_fluttify').invokeMethod('AMapInputTipsSearchRequest::set_cityLimit', {'refId': refId, "cityLimit": cityLimit});
  
  
  }
  
  Future<void> set_location(String location) async {
    await MethodChannel('me.yohom/amap_search_fluttify').invokeMethod('AMapInputTipsSearchRequest::set_location', {'refId': refId, "location": location});
  
  
  }
  

  // generate methods
  
}