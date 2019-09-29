import 'dart:typed_data';

import 'package:amap_search_fluttify/src/ios/ios.export.dart';
import 'package:amap_search_fluttify/src/android/android.export.dart';
import 'package:flutter/services.dart';

// ignore_for_file: non_constant_identifier_names, camel_case_types
class AMapStreetNumber extends AMapSearchObject  {
  static final _channel = MethodChannel('me.yohom/amap_search_fluttify');

  // 生成getters
  Future<String> get_street() async {
    final result = await _channel.invokeMethod("AMapStreetNumber::get_street", {'refId': refId});
    return result;
  }
  
  Future<String> get_number() async {
    final result = await _channel.invokeMethod("AMapStreetNumber::get_number", {'refId': refId});
    return result;
  }
  
  Future<AMapGeoPoint> get_location() async {
    final result = await _channel.invokeMethod("AMapStreetNumber::get_location", {'refId': refId});
    return AMapGeoPoint()..refId = result;
  }
  
  Future<int> get_distance() async {
    final result = await _channel.invokeMethod("AMapStreetNumber::get_distance", {'refId': refId});
    return result;
  }
  
  Future<String> get_direction() async {
    final result = await _channel.invokeMethod("AMapStreetNumber::get_direction", {'refId': refId});
    return result;
  }
  

  // 生成setters
  Future<void> set_street(String street) async {
    await _channel.invokeMethod('AMapStreetNumber::set_street', {'refId': refId, "street": street});
  
  
  }
  
  Future<void> set_number(String number) async {
    await _channel.invokeMethod('AMapStreetNumber::set_number', {'refId': refId, "number": number});
  
  
  }
  
  Future<void> set_location(AMapGeoPoint location) async {
    await _channel.invokeMethod('AMapStreetNumber::set_location', {'refId': refId, "location": location.refId});
  
  
  }
  
  Future<void> set_distance(int distance) async {
    await _channel.invokeMethod('AMapStreetNumber::set_distance', {'refId': refId, "distance": distance});
  
  
  }
  
  Future<void> set_direction(String direction) async {
    await _channel.invokeMethod('AMapStreetNumber::set_direction', {'refId': refId, "direction": direction});
  
  
  }
  

  // 生成方法们
  
}