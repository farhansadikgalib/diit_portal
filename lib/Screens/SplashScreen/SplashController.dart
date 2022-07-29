import 'dart:async';

import 'package:connectivity/connectivity.dart';
import 'package:diit_portal/Screens/Dashboard/Home_Page/NU_Portal/widgets/no_internet.dart';
import 'package:diit_portal/Screens/Dashboard/Home_Page/NU_Portal/widgets/no_internet_widget.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:get/get.dart';
import 'package:onesignal_flutter/onesignal_flutter.dart';

class SplashController extends GetxController {
  String _connectionStatus = 'Unknown';
  final Connectivity _connectivity = Connectivity();
  late StreamSubscription<ConnectivityResult> _connectivitySubscription;

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    moveToNext();
    ConnectivityCheck();

  }

  ConnectivityCheck(){
    NoInternet.initConnectivity().then((value) =>
      _connectionStatus = value);
    _connectivitySubscription =
        _connectivity.onConnectivityChanged.listen((ConnectivityResult result) {
          NoInternet.updateConnectionStatus(result).then((value) =>
            _connectionStatus = value);
        });
  }

  Future<void> moveToNext() async {
    await Future.delayed(const Duration(milliseconds: 4000), () {});
    // FirebaseDatabase.instance.setPersistenceEnabled(true);
    if(_connectionStatus == 'ConnectivityResult.none'){
      NoInternetWidget();
    }else{
      Get.offAndToNamed('/LoginPage');

    }

  }



}
