import 'dart:developer';

import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:field_service/main.dart';
import 'package:flutter/material.dart'; 

enum ConnectivityStatus { WiFi, Cellular, Offline }

class ConnectivityService {
  static ValueNotifier<bool> onStatusChanged = ValueNotifier(false);

  static void startStreaming() {
    Connectivity().onConnectivityChanged.listen((event) {
      log("-=-=event $event");
      if (event == ConnectivityResult.none ||
          event == ConnectivityResult.other) {
        log("-=-=onStatusChanged.value ${onStatusChanged.value}");
        onStatusChanged.value = false;
        if (navigatorkey.currentContext != null) {
         
          // Helper.goToNext(ShowInternetScreen.route);

          // Helper.createSnackBar(navigatorkey.currentContext!);
        }
      } else {
        log("=-==--=>>>else");
        onStatusChanged.value = true;
        if (navigatorkey.currentContext != null) {
          log("in elseeee key");

          // ScaffoldMessenger.of(navigatorkey.currentContext!).clearSnackBars();
        }
      }

      //  connectivityStatus= _getStatusFromResult(event);
      //  onStatusChanged?.call(connectivityStatus!);
    });
     
  }
}
