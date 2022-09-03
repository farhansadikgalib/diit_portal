import 'dart:async';

import 'package:connectivity/connectivity.dart';
import 'package:flutter/services.dart';

class NoInternet {
  static final Connectivity _connectivity = Connectivity();

  static String _connectionStatus = 'Unknown';

  static Future<String> initConnectivity() async {
    ConnectivityResult result = ConnectivityResult.none;
    // Platform messages may fail, so we use a try/catch PlatformException.
    try {
      result = await _connectivity.checkConnectivity();
    } on PlatformException catch (e) {
      print(e.toString());
    }

    // If the widget was removed from the tree while the asynchronous platform
    // message was in flight, we want to discard the reply rather than calling
    // setState to update our non-existent appearance.

    // return Future.value(null);

    return updateConnectionStatus(result);
  }

  static Future<String> updateConnectionStatus(
      ConnectivityResult result) async {
    switch (result) {
      case ConnectivityResult.wifi:
      case ConnectivityResult.mobile:
      case ConnectivityResult.none:
        _connectionStatus = result.toString();
        return _connectionStatus;
      // break;
      default:
        _connectionStatus = 'Failed to get connectivity.';
        return _connectionStatus;
      // break;
    }
  }

 
}
