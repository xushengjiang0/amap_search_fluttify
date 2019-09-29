import 'dart:typed_data';

import 'package:amap_search_fluttify/src/ios/ios.export.dart';
import 'package:amap_search_fluttify/src/android/android.export.dart';
import 'package:flutter/services.dart';

// ignore_for_file: non_constant_identifier_names, camel_case_types
class AMapGeocodeSearchResponse extends AMapSearchObject  {
  static final _channel = MethodChannel('me.yohom/amap_search_fluttify');

  // 生成getters
  Future<int> get_count() async {
    final result = await _channel.invokeMethod("AMapGeocodeSearchResponse::get_count", {'refId': refId});
    return result;
  }
  
  Future<List<AMapGeocode>> get_geocodes() async {
    final result = await _channel.invokeMethod("AMapGeocodeSearchResponse::get_geocodes", {'refId': refId});
    return (result as List).cast<int>().map((it) => AMapGeocode()..refId = it).toList();
  }
  

  // 生成setters
  Future<void> set_count(int count) async {
    await _channel.invokeMethod('AMapGeocodeSearchResponse::set_count', {'refId': refId, "count": count});
  
  
  }
  

  // 生成方法们
  
}