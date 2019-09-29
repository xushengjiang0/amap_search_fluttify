import 'dart:typed_data';

import 'package:amap_search_fluttify/src/ios/ios.export.dart';
import 'package:amap_search_fluttify/src/android/android.export.dart';
import 'package:flutter/services.dart';

// ignore_for_file: non_constant_identifier_names, camel_case_types
class AMapTrafficRoad extends AMapSearchObject  {
  static final _channel = MethodChannel('me.yohom/amap_search_fluttify');

  // 生成getters
  Future<String> get_name() async {
    final result = await _channel.invokeMethod("AMapTrafficRoad::get_name", {'refId': refId});
    return result;
  }
  
  Future<int> get_status() async {
    final result = await _channel.invokeMethod("AMapTrafficRoad::get_status", {'refId': refId});
    return result;
  }
  
  Future<String> get_direction() async {
    final result = await _channel.invokeMethod("AMapTrafficRoad::get_direction", {'refId': refId});
    return result;
  }
  
  Future<double> get_angle() async {
    final result = await _channel.invokeMethod("AMapTrafficRoad::get_angle", {'refId': refId});
    return result;
  }
  
  Future<double> get_speed() async {
    final result = await _channel.invokeMethod("AMapTrafficRoad::get_speed", {'refId': refId});
    return result;
  }
  
  Future<String> get_polyline() async {
    final result = await _channel.invokeMethod("AMapTrafficRoad::get_polyline", {'refId': refId});
    return result;
  }
  

  // 生成setters
  Future<void> set_name(String name) async {
    await _channel.invokeMethod('AMapTrafficRoad::set_name', {'refId': refId, "name": name});
  
  
  }
  
  Future<void> set_status(int status) async {
    await _channel.invokeMethod('AMapTrafficRoad::set_status', {'refId': refId, "status": status});
  
  
  }
  
  Future<void> set_direction(String direction) async {
    await _channel.invokeMethod('AMapTrafficRoad::set_direction', {'refId': refId, "direction": direction});
  
  
  }
  
  Future<void> set_angle(double angle) async {
    await _channel.invokeMethod('AMapTrafficRoad::set_angle', {'refId': refId, "angle": angle});
  
  
  }
  
  Future<void> set_speed(double speed) async {
    await _channel.invokeMethod('AMapTrafficRoad::set_speed', {'refId': refId, "speed": speed});
  
  
  }
  
  Future<void> set_polyline(String polyline) async {
    await _channel.invokeMethod('AMapTrafficRoad::set_polyline', {'refId': refId, "polyline": polyline});
  
  
  }
  

  // 生成方法们
  
}