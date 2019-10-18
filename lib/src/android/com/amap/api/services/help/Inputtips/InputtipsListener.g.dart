import 'dart:typed_data';

import 'package:amap_search_fluttify/src/ios/ios.export.g.dart';
import 'package:amap_search_fluttify/src/android/android.export.g.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

// ignore_for_file: non_constant_identifier_names, camel_case_types, missing_return, unused_import
mixin com_amap_api_services_help_Inputtips_InputtipsListener on java_lang_Object {
  

  

  @mustCallSuper
  Future<void> onGetInputtips(List<com_amap_api_services_help_Tip> var1, int var2) {
    kCallbackPool.addAll(Map.fromIterable(var1, key: (it) => it.refId, value: (it) => it));
    debugPrint('onGetInputtips::kCallbackPool: $kCallbackPool');
  }
  
}