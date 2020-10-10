// ignore_for_file: non_constant_identifier_names, camel_case_types, missing_return, unused_import, unused_local_variable, dead_code, unnecessary_cast
//////////////////////////////////////////////////////////
// GENERATED BY FLUTTIFY. DO NOT EDIT IT.
//////////////////////////////////////////////////////////

import 'dart:typed_data';

import 'package:amap_search_fluttify/src/ios/ios.export.g.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'package:foundation_fluttify/foundation_fluttify.dart';
import 'package:core_location_fluttify/core_location_fluttify.dart';

class AMapTruckRouteSearchRequest extends AMapRouteSearchBaseRequest with NSCoding, NSCopying {
  //region constants
  static const String name__ = 'AMapTruckRouteSearchRequest';

  @override
  final String tag__ = 'amap_search_fluttify';

  
  //endregion

  //region creators
  static Future<AMapTruckRouteSearchRequest> create__({ bool init = true /* ios only */ }) async {
    final refId = await kAmapSearchFluttifyChannel.invokeMethod('ObjectFactory::createAMapTruckRouteSearchRequest', {'init': init});
    final object = AMapTruckRouteSearchRequest()..refId = refId;
    return object;
  }
  
  static Future<List<AMapTruckRouteSearchRequest>> create_batch__(int length, { bool init = true /* ios only */ }) async {
    if (false) {
      return Future.error('all args must have same length!');
    }
    final List resultBatch = await kAmapSearchFluttifyChannel.invokeMethod('ObjectFactory::create_batchAMapTruckRouteSearchRequest', {'length': length, 'init': init});
  
    final List<AMapTruckRouteSearchRequest> typedResult = resultBatch.map((result) => AMapTruckRouteSearchRequest()..refId = result).toList();
    return typedResult;
  }
  
  //endregion

  //region getters
  Future<int> get_strategy() async {
    final __result__ = await kAmapSearchFluttifyChannel.invokeMethod("AMapTruckRouteSearchRequest::get_strategy", {'__this__': this});
    return __result__ == null ? null : (__result__);
  }
  
  Future<List<AMapGeoPoint>> get_waypoints() async {
    final __result__ = await kAmapSearchFluttifyChannel.invokeMethod("AMapTruckRouteSearchRequest::get_waypoints", {'__this__': this});
    return __result__ == null ? null : ((__result__ as List).cast<String>().map((__it__) => AMapGeoPoint()..refId = __it__).toList());
  }
  
  Future<String> get_originId() async {
    final __result__ = await kAmapSearchFluttifyChannel.invokeMethod("AMapTruckRouteSearchRequest::get_originId", {'__this__': this});
    return __result__ == null ? null : (__result__);
  }
  
  Future<String> get_destinationId() async {
    final __result__ = await kAmapSearchFluttifyChannel.invokeMethod("AMapTruckRouteSearchRequest::get_destinationId", {'__this__': this});
    return __result__ == null ? null : (__result__);
  }
  
  Future<String> get_origintype() async {
    final __result__ = await kAmapSearchFluttifyChannel.invokeMethod("AMapTruckRouteSearchRequest::get_origintype", {'__this__': this});
    return __result__ == null ? null : (__result__);
  }
  
  Future<String> get_destinationtype() async {
    final __result__ = await kAmapSearchFluttifyChannel.invokeMethod("AMapTruckRouteSearchRequest::get_destinationtype", {'__this__': this});
    return __result__ == null ? null : (__result__);
  }
  
  Future<String> get_plateProvince() async {
    final __result__ = await kAmapSearchFluttifyChannel.invokeMethod("AMapTruckRouteSearchRequest::get_plateProvince", {'__this__': this});
    return __result__ == null ? null : (__result__);
  }
  
  Future<String> get_plateNumber() async {
    final __result__ = await kAmapSearchFluttifyChannel.invokeMethod("AMapTruckRouteSearchRequest::get_plateNumber", {'__this__': this});
    return __result__ == null ? null : (__result__);
  }
  
  Future<AMapTruckSizeType> get_size() async {
    final __result__ = await kAmapSearchFluttifyChannel.invokeMethod("AMapTruckRouteSearchRequest::get_size", {'__this__': this});
    return __result__ == null ? null : ((__result__ as int).toAMapTruckSizeType());
  }
  
  Future<double> get_height() async {
    final __result__ = await kAmapSearchFluttifyChannel.invokeMethod("AMapTruckRouteSearchRequest::get_height", {'__this__': this});
    return __result__ == null ? null : (__result__);
  }
  
  Future<double> get_width() async {
    final __result__ = await kAmapSearchFluttifyChannel.invokeMethod("AMapTruckRouteSearchRequest::get_width", {'__this__': this});
    return __result__ == null ? null : (__result__);
  }
  
  Future<double> get_load() async {
    final __result__ = await kAmapSearchFluttifyChannel.invokeMethod("AMapTruckRouteSearchRequest::get_load", {'__this__': this});
    return __result__ == null ? null : (__result__);
  }
  
  Future<double> get_weight() async {
    final __result__ = await kAmapSearchFluttifyChannel.invokeMethod("AMapTruckRouteSearchRequest::get_weight", {'__this__': this});
    return __result__ == null ? null : (__result__);
  }
  
  Future<int> get_axis() async {
    final __result__ = await kAmapSearchFluttifyChannel.invokeMethod("AMapTruckRouteSearchRequest::get_axis", {'__this__': this});
    return __result__ == null ? null : (__result__);
  }
  
  //endregion

  //region setters
  Future<void> set_strategy(int strategy) async {
    await kAmapSearchFluttifyChannel.invokeMethod('AMapTruckRouteSearchRequest::set_strategy', <String, dynamic>{'__this__': this, "strategy": strategy});
  
  
  }
  
  Future<void> set_waypoints(List<AMapGeoPoint> waypoints) async {
    await kAmapSearchFluttifyChannel.invokeMethod('AMapTruckRouteSearchRequest::set_waypoints', <String, dynamic>{'__this__': this, "waypoints": waypoints});
  
  
  }
  
  Future<void> set_originId(String originId) async {
    await kAmapSearchFluttifyChannel.invokeMethod('AMapTruckRouteSearchRequest::set_originId', <String, dynamic>{'__this__': this, "originId": originId});
  
  
  }
  
  Future<void> set_destinationId(String destinationId) async {
    await kAmapSearchFluttifyChannel.invokeMethod('AMapTruckRouteSearchRequest::set_destinationId', <String, dynamic>{'__this__': this, "destinationId": destinationId});
  
  
  }
  
  Future<void> set_origintype(String origintype) async {
    await kAmapSearchFluttifyChannel.invokeMethod('AMapTruckRouteSearchRequest::set_origintype', <String, dynamic>{'__this__': this, "origintype": origintype});
  
  
  }
  
  Future<void> set_destinationtype(String destinationtype) async {
    await kAmapSearchFluttifyChannel.invokeMethod('AMapTruckRouteSearchRequest::set_destinationtype', <String, dynamic>{'__this__': this, "destinationtype": destinationtype});
  
  
  }
  
  Future<void> set_plateProvince(String plateProvince) async {
    await kAmapSearchFluttifyChannel.invokeMethod('AMapTruckRouteSearchRequest::set_plateProvince', <String, dynamic>{'__this__': this, "plateProvince": plateProvince});
  
  
  }
  
  Future<void> set_plateNumber(String plateNumber) async {
    await kAmapSearchFluttifyChannel.invokeMethod('AMapTruckRouteSearchRequest::set_plateNumber', <String, dynamic>{'__this__': this, "plateNumber": plateNumber});
  
  
  }
  
  Future<void> set_size(AMapTruckSizeType size) async {
    await kAmapSearchFluttifyChannel.invokeMethod('AMapTruckRouteSearchRequest::set_size', <String, dynamic>{'__this__': this, "size": size.toValue()});
  
  
  }
  
  Future<void> set_height(double height) async {
    await kAmapSearchFluttifyChannel.invokeMethod('AMapTruckRouteSearchRequest::set_height', <String, dynamic>{'__this__': this, "height": height});
  
  
  }
  
  Future<void> set_width(double width) async {
    await kAmapSearchFluttifyChannel.invokeMethod('AMapTruckRouteSearchRequest::set_width', <String, dynamic>{'__this__': this, "width": width});
  
  
  }
  
  Future<void> set_load(double load) async {
    await kAmapSearchFluttifyChannel.invokeMethod('AMapTruckRouteSearchRequest::set_load', <String, dynamic>{'__this__': this, "load": load});
  
  
  }
  
  Future<void> set_weight(double weight) async {
    await kAmapSearchFluttifyChannel.invokeMethod('AMapTruckRouteSearchRequest::set_weight', <String, dynamic>{'__this__': this, "weight": weight});
  
  
  }
  
  Future<void> set_axis(int axis) async {
    await kAmapSearchFluttifyChannel.invokeMethod('AMapTruckRouteSearchRequest::set_axis', <String, dynamic>{'__this__': this, "axis": axis});
  
  
  }
  
  //endregion

  //region methods
  
  //endregion

  @override
  String toString() {
    return 'AMapTruckRouteSearchRequest{refId: $refId, runtimeType: $runtimeType, tag__: $tag__}';
  }
}

extension AMapTruckRouteSearchRequest_Batch on List<AMapTruckRouteSearchRequest> {
  //region getters
  Future<List<int>> get_strategy_batch() async {
    final resultBatch = await kAmapSearchFluttifyChannel.invokeMethod("AMapTruckRouteSearchRequest::get_strategy_batch", [for (final __item__ in this) {'__this__': __item__}]);
  
    final typedResult = (resultBatch as List).cast<int>().map((__result__) => __result__).toList();
    return typedResult;
  }
  
  Future<List<List<AMapGeoPoint>>> get_waypoints_batch() async {
    final resultBatch = await kAmapSearchFluttifyChannel.invokeMethod("AMapTruckRouteSearchRequest::get_waypoints_batch", [for (final __item__ in this) {'__this__': __item__}]);
  
    final typedResult = (resultBatch as List).cast<String>().map((__result__) => (__result__ as List).cast<String>().map((__it__) => AMapGeoPoint()..refId = __it__).toList()).toList();
    return typedResult;
  }
  
  Future<List<String>> get_originId_batch() async {
    final resultBatch = await kAmapSearchFluttifyChannel.invokeMethod("AMapTruckRouteSearchRequest::get_originId_batch", [for (final __item__ in this) {'__this__': __item__}]);
  
    final typedResult = (resultBatch as List).cast<String>().map((__result__) => __result__).toList();
    return typedResult;
  }
  
  Future<List<String>> get_destinationId_batch() async {
    final resultBatch = await kAmapSearchFluttifyChannel.invokeMethod("AMapTruckRouteSearchRequest::get_destinationId_batch", [for (final __item__ in this) {'__this__': __item__}]);
  
    final typedResult = (resultBatch as List).cast<String>().map((__result__) => __result__).toList();
    return typedResult;
  }
  
  Future<List<String>> get_origintype_batch() async {
    final resultBatch = await kAmapSearchFluttifyChannel.invokeMethod("AMapTruckRouteSearchRequest::get_origintype_batch", [for (final __item__ in this) {'__this__': __item__}]);
  
    final typedResult = (resultBatch as List).cast<String>().map((__result__) => __result__).toList();
    return typedResult;
  }
  
  Future<List<String>> get_destinationtype_batch() async {
    final resultBatch = await kAmapSearchFluttifyChannel.invokeMethod("AMapTruckRouteSearchRequest::get_destinationtype_batch", [for (final __item__ in this) {'__this__': __item__}]);
  
    final typedResult = (resultBatch as List).cast<String>().map((__result__) => __result__).toList();
    return typedResult;
  }
  
  Future<List<String>> get_plateProvince_batch() async {
    final resultBatch = await kAmapSearchFluttifyChannel.invokeMethod("AMapTruckRouteSearchRequest::get_plateProvince_batch", [for (final __item__ in this) {'__this__': __item__}]);
  
    final typedResult = (resultBatch as List).cast<String>().map((__result__) => __result__).toList();
    return typedResult;
  }
  
  Future<List<String>> get_plateNumber_batch() async {
    final resultBatch = await kAmapSearchFluttifyChannel.invokeMethod("AMapTruckRouteSearchRequest::get_plateNumber_batch", [for (final __item__ in this) {'__this__': __item__}]);
  
    final typedResult = (resultBatch as List).cast<String>().map((__result__) => __result__).toList();
    return typedResult;
  }
  
  Future<List<AMapTruckSizeType>> get_size_batch() async {
    final resultBatch = await kAmapSearchFluttifyChannel.invokeMethod("AMapTruckRouteSearchRequest::get_size_batch", [for (final __item__ in this) {'__this__': __item__}]);
  
    final typedResult = (resultBatch as List).cast<String>().map((__result__) => (__result__ as int).toAMapTruckSizeType()).toList();
    return typedResult;
  }
  
  Future<List<double>> get_height_batch() async {
    final resultBatch = await kAmapSearchFluttifyChannel.invokeMethod("AMapTruckRouteSearchRequest::get_height_batch", [for (final __item__ in this) {'__this__': __item__}]);
  
    final typedResult = (resultBatch as List).cast<double>().map((__result__) => __result__).toList();
    return typedResult;
  }
  
  Future<List<double>> get_width_batch() async {
    final resultBatch = await kAmapSearchFluttifyChannel.invokeMethod("AMapTruckRouteSearchRequest::get_width_batch", [for (final __item__ in this) {'__this__': __item__}]);
  
    final typedResult = (resultBatch as List).cast<double>().map((__result__) => __result__).toList();
    return typedResult;
  }
  
  Future<List<double>> get_load_batch() async {
    final resultBatch = await kAmapSearchFluttifyChannel.invokeMethod("AMapTruckRouteSearchRequest::get_load_batch", [for (final __item__ in this) {'__this__': __item__}]);
  
    final typedResult = (resultBatch as List).cast<double>().map((__result__) => __result__).toList();
    return typedResult;
  }
  
  Future<List<double>> get_weight_batch() async {
    final resultBatch = await kAmapSearchFluttifyChannel.invokeMethod("AMapTruckRouteSearchRequest::get_weight_batch", [for (final __item__ in this) {'__this__': __item__}]);
  
    final typedResult = (resultBatch as List).cast<double>().map((__result__) => __result__).toList();
    return typedResult;
  }
  
  Future<List<int>> get_axis_batch() async {
    final resultBatch = await kAmapSearchFluttifyChannel.invokeMethod("AMapTruckRouteSearchRequest::get_axis_batch", [for (final __item__ in this) {'__this__': __item__}]);
  
    final typedResult = (resultBatch as List).cast<int>().map((__result__) => __result__).toList();
    return typedResult;
  }
  
  //endregion

  //region setters
  Future<void> set_strategy_batch(List<int> strategy) async {
    await kAmapSearchFluttifyChannel.invokeMethod('AMapTruckRouteSearchRequest::set_strategy_batch', [for (int __i__ = 0; __i__ < this.length; __i__++) {'__this__': this[__i__], "strategy": strategy[__i__]}]);
  
  
  }
  
  Future<void> set_waypoints_batch(List<List<AMapGeoPoint>> waypoints) async {
    await kAmapSearchFluttifyChannel.invokeMethod('AMapTruckRouteSearchRequest::set_waypoints_batch', [for (int __i__ = 0; __i__ < this.length; __i__++) {'__this__': this[__i__], "waypoints": waypoints[__i__]}]);
  
  
  }
  
  Future<void> set_originId_batch(List<String> originId) async {
    await kAmapSearchFluttifyChannel.invokeMethod('AMapTruckRouteSearchRequest::set_originId_batch', [for (int __i__ = 0; __i__ < this.length; __i__++) {'__this__': this[__i__], "originId": originId[__i__]}]);
  
  
  }
  
  Future<void> set_destinationId_batch(List<String> destinationId) async {
    await kAmapSearchFluttifyChannel.invokeMethod('AMapTruckRouteSearchRequest::set_destinationId_batch', [for (int __i__ = 0; __i__ < this.length; __i__++) {'__this__': this[__i__], "destinationId": destinationId[__i__]}]);
  
  
  }
  
  Future<void> set_origintype_batch(List<String> origintype) async {
    await kAmapSearchFluttifyChannel.invokeMethod('AMapTruckRouteSearchRequest::set_origintype_batch', [for (int __i__ = 0; __i__ < this.length; __i__++) {'__this__': this[__i__], "origintype": origintype[__i__]}]);
  
  
  }
  
  Future<void> set_destinationtype_batch(List<String> destinationtype) async {
    await kAmapSearchFluttifyChannel.invokeMethod('AMapTruckRouteSearchRequest::set_destinationtype_batch', [for (int __i__ = 0; __i__ < this.length; __i__++) {'__this__': this[__i__], "destinationtype": destinationtype[__i__]}]);
  
  
  }
  
  Future<void> set_plateProvince_batch(List<String> plateProvince) async {
    await kAmapSearchFluttifyChannel.invokeMethod('AMapTruckRouteSearchRequest::set_plateProvince_batch', [for (int __i__ = 0; __i__ < this.length; __i__++) {'__this__': this[__i__], "plateProvince": plateProvince[__i__]}]);
  
  
  }
  
  Future<void> set_plateNumber_batch(List<String> plateNumber) async {
    await kAmapSearchFluttifyChannel.invokeMethod('AMapTruckRouteSearchRequest::set_plateNumber_batch', [for (int __i__ = 0; __i__ < this.length; __i__++) {'__this__': this[__i__], "plateNumber": plateNumber[__i__]}]);
  
  
  }
  
  Future<void> set_size_batch(List<AMapTruckSizeType> size) async {
    await kAmapSearchFluttifyChannel.invokeMethod('AMapTruckRouteSearchRequest::set_size_batch', [for (int __i__ = 0; __i__ < this.length; __i__++) {'__this__': this[__i__], "size": size[__i__].toValue()}]);
  
  
  }
  
  Future<void> set_height_batch(List<double> height) async {
    await kAmapSearchFluttifyChannel.invokeMethod('AMapTruckRouteSearchRequest::set_height_batch', [for (int __i__ = 0; __i__ < this.length; __i__++) {'__this__': this[__i__], "height": height[__i__]}]);
  
  
  }
  
  Future<void> set_width_batch(List<double> width) async {
    await kAmapSearchFluttifyChannel.invokeMethod('AMapTruckRouteSearchRequest::set_width_batch', [for (int __i__ = 0; __i__ < this.length; __i__++) {'__this__': this[__i__], "width": width[__i__]}]);
  
  
  }
  
  Future<void> set_load_batch(List<double> load) async {
    await kAmapSearchFluttifyChannel.invokeMethod('AMapTruckRouteSearchRequest::set_load_batch', [for (int __i__ = 0; __i__ < this.length; __i__++) {'__this__': this[__i__], "load": load[__i__]}]);
  
  
  }
  
  Future<void> set_weight_batch(List<double> weight) async {
    await kAmapSearchFluttifyChannel.invokeMethod('AMapTruckRouteSearchRequest::set_weight_batch', [for (int __i__ = 0; __i__ < this.length; __i__++) {'__this__': this[__i__], "weight": weight[__i__]}]);
  
  
  }
  
  Future<void> set_axis_batch(List<int> axis) async {
    await kAmapSearchFluttifyChannel.invokeMethod('AMapTruckRouteSearchRequest::set_axis_batch', [for (int __i__ = 0; __i__ < this.length; __i__++) {'__this__': this[__i__], "axis": axis[__i__]}]);
  
  
  }
  
  //endregion

  //region methods
  
  //endregion
}