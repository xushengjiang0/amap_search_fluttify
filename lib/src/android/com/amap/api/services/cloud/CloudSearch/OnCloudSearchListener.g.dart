import 'dart:typed_data';

import 'package:amap_search_fluttify/src/ios/ios.export.g.dart';
import 'package:amap_search_fluttify/src/android/android.export.g.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

// ignore_for_file: non_constant_identifier_names, camel_case_types, missing_return, unused_import
mixin com_amap_api_services_cloud_CloudSearch_OnCloudSearchListener on java_lang_Object {
  

  

  @mustCallSuper
  Future<void> onCloudSearched(com_amap_api_services_cloud_CloudResult var1, int var2) {
    kCallbackPool[var1.refId] = var1;
    debugPrint('onCloudSearched::kCallbackPool: $kCallbackPool');
  }
  
  @mustCallSuper
  Future<void> onCloudItemDetailSearched(com_amap_api_services_cloud_CloudItemDetail var1, int var2) {
    kCallbackPool[var1.refId] = var1;
    debugPrint('onCloudItemDetailSearched::kCallbackPool: $kCallbackPool');
  }
  
}