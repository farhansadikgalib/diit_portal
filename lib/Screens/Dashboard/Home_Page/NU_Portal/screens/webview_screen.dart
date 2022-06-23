import 'dart:async';

import 'package:connectivity/connectivity.dart';
import 'package:flutter/material.dart';
import '../widgets/no_internet.dart';
import '../widgets/no_internet_widget.dart';
import '../widgets/load_web_view.dart';

class WebviewScreen extends StatefulWidget {
  final String title;
  final String content;
  final String url;
  WebviewScreen(this.title, this.content, this.url);

  static const routeName = '/webView';

  @override
  State<WebviewScreen> createState() => _WebviewScreenState();
}

class _WebviewScreenState extends State<WebviewScreen> {
  String _connectionStatus = 'Unknown';
  final Connectivity _connectivity = Connectivity();
  late StreamSubscription<ConnectivityResult> _connectivitySubscription;
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
  }

  @override
  void dispose() {
    _connectivitySubscription.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    String message = Theme.of(context).brightness == Brightness.dark
        ? "<font color='white'>" + widget.content + "</font>"
        : "<font color='black'>" + widget.content + "</font>";
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: widget.url == ''
          ? Container(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: LoadWebView(message, false))
          : _connectionStatus == 'ConnectivityResult.none'
              ? const NoInternetWidget()
              : LoadWebView(widget.url, true),
    );
  }
}
