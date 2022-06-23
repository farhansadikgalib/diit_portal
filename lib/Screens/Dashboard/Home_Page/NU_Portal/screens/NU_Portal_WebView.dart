import 'dart:async';
import 'package:connectivity/connectivity.dart';
import 'package:diit_portal/Screens/App_Bar/app_bar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:provider/src/provider.dart';
import '../widgets/no_internet.dart';
import '../provider/navigationBarProvider.dart';
import '../widgets/no_internet_widget.dart';
import '../widgets/load_web_view.dart';

class NU_Portal_WebView extends StatefulWidget {
  @override
  State<NU_Portal_WebView> createState() => _NU_Portal_WebViewState();
}

class _NU_Portal_WebViewState extends State<NU_Portal_WebView> with TickerProviderStateMixin {
  String _connectionStatus = 'ConnectivityResult.none';
  final Connectivity _connectivity = Connectivity();
  late StreamSubscription<ConnectivityResult> _connectivitySubscription;
  late AnimationController navigationContainerAnimationController =
      AnimationController(
          vsync: this, duration: const Duration(milliseconds: 500));

  @override
  void initState() {
    super.initState();
    NoInternet.initConnectivity().then((value) => setState(() {
          _connectionStatus = value;
        }));
    _connectivitySubscription =
        _connectivity.onConnectivityChanged.listen((ConnectivityResult result) {
      NoInternet.updateConnectionStatus(result).then((value) => setState(() {
            _connectionStatus = value;
          }));
    });

    Future.delayed(Duration.zero, () {
      context
          .read<NavigationBarProvider>()
          .setAnimationController(navigationContainerAnimationController);
    });
  }

  @override
  void dispose() {
    _connectivitySubscription.cancel();
    navigationContainerAnimationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      backgroundColor: Colors.transparent,
      appBar: AppBar(
         title: Text('NU Portal',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white,fontSize: 22),),centerTitle: true,
        backgroundColor: Colors.blueAccent,
        leading:  InkWell(
            onTap: (){
              Get.back();
            },
            child: Icon(Icons.arrow_back,color: Colors.white,)),
      ),
      body: Column(children: [
        Flexible(
            child: _connectionStatus == 'ConnectivityResult.none'
                ? NoInternetWidget()
                : LoadWebView(
                    'https://www.nu.ac.bd/recent-news-notice.php', true)),
      ]),
    );
  }
}
