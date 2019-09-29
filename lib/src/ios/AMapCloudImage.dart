import 'dart:typed_data';

import 'package:amap_search_fluttify/src/ios/ios.export.dart';
import 'package:amap_search_fluttify/src/android/android.export.dart';
import 'package:flutter/services.dart';

// ignore_for_file: non_constant_identifier_names, camel_case_types
class AMapCloudImage extends AMapSearchObject  {
  static final _channel = MethodChannel('me.yohom/amap_search_fluttify');

  // 生成getters
  Future<String> get_uid() async {
    final result = await _channel.invokeMethod("AMapCloudImage::get_uid", {'refId': refId});
    return result;
  }
  
  Future<String> get_preurl() async {
    final result = await _channel.invokeMethod("AMapCloudImage::get_preurl", {'refId': refId});
    return result;
  }
  
  Future<String> get_url() async {
    final result = await _channel.invokeMethod("AMapCloudImage::get_url", {'refId': refId});
    return result;
  }
  

  // 生成setters
  Future<void> set_uid(String uid) async {
    await _channel.invokeMethod('AMapCloudImage::set_uid', {'refId': refId, "uid": uid});
  
  
  }
  
  Future<void> set_preurl(String preurl) async {
    await _channel.invokeMethod('AMapCloudImage::set_preurl', {'refId': refId, "preurl": preurl});
  
  
  }
  
  Future<void> set_url(String url) async {
    await _channel.invokeMethod('AMapCloudImage::set_url', {'refId': refId, "url": url});
  
  
  }
  

  // 生成方法们
  
}