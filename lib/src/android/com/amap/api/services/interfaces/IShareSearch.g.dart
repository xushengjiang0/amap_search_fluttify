// ignore_for_file: non_constant_identifier_names, camel_case_types, missing_return, unused_import, unused_local_variable, dead_code, unnecessary_cast
//////////////////////////////////////////////////////////
// GENERATED BY FLUTTIFY. DO NOT EDIT IT.
//////////////////////////////////////////////////////////

import 'dart:typed_data';

import 'package:amap_search_fluttify/src/android/android.export.g.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'package:foundation_fluttify/foundation_fluttify.dart';
import 'package:core_location_fluttify/core_location_fluttify.dart';



mixin com_amap_api_services_interfaces_IShareSearch on java_lang_Object {
  

  

  @override
  final String tag__ = 'amap_search_fluttify';

  

  

  @mustCallSuper
  Future<void> setOnShareSearchListener(com_amap_api_services_share_ShareSearch_OnShareSearchListener var1) {}
  
  @mustCallSuper
  Future<void> searchPoiShareUrlAsyn(com_amap_api_services_core_PoiItem var1) {}
  
  @mustCallSuper
  Future<void> searchBusRouteShareUrlAsyn(com_amap_api_services_share_ShareSearch_ShareBusRouteQuery var1) {}
  
  @mustCallSuper
  Future<void> searchWalkRouteShareUrlAsyn(com_amap_api_services_share_ShareSearch_ShareWalkRouteQuery var1) {}
  
  @mustCallSuper
  Future<void> searchDrivingRouteShareUrlAsyn(com_amap_api_services_share_ShareSearch_ShareDrivingRouteQuery var1) {}
  
  @mustCallSuper
  Future<void> searchNaviShareUrlAsyn(com_amap_api_services_share_ShareSearch_ShareNaviQuery var1) {}
  
  @mustCallSuper
  Future<void> searchLocationShareUrlAsyn(com_amap_api_services_core_LatLonSharePoint var1) {}
  
  @mustCallSuper
  Future<String> searchPoiShareUrl(com_amap_api_services_core_PoiItem var1) {}
  
  @mustCallSuper
  Future<String> searchNaviShareUrl(com_amap_api_services_share_ShareSearch_ShareNaviQuery var1) {}
  
  @mustCallSuper
  Future<String> searchLocationShareUrl(com_amap_api_services_core_LatLonSharePoint var1) {}
  
  @mustCallSuper
  Future<String> searchBusRouteShareUrl(com_amap_api_services_share_ShareSearch_ShareBusRouteQuery var1) {}
  
  @mustCallSuper
  Future<String> searchDrivingRouteShareUrl(com_amap_api_services_share_ShareSearch_ShareDrivingRouteQuery var1) {}
  
  @mustCallSuper
  Future<String> searchWalkRouteShareUrl(com_amap_api_services_share_ShareSearch_ShareWalkRouteQuery var1) {}
  
}

