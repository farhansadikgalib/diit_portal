import 'dart:async';

import 'package:connectivity/connectivity.dart';
import 'package:diit_portal/Screens/Dashboard/Home_Page/NU_Portal/provider/navigationBarProvider.dart';
import 'package:diit_portal/Screens/Dashboard/Home_Page/NU_Portal/widgets/no_internet.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';

class NoInternetConnection extends StatefulWidget {
  const NoInternetConnection({Key? key}) : super(key: key);

  @override
  State<NoInternetConnection> createState() => _NoInternetConnectionState();
}

class _NoInternetConnectionState extends State<NoInternetConnection> {
  bool _isLoading = false;
  String _connectionStatus = 'Unknown';
  final Connectivity _connectivity = Connectivity();
  late StreamSubscription<ConnectivityResult> _connectivitySubscription;

  @override
  void initState() {
    super.initState();
    ConnectivityCheck();
    Future.delayed(Duration.zero, () {
      if (mounted) {
        if (!context
            .read<NavigationBarProvider>()
            .animationController
            .isAnimating) {
          context.read<NavigationBarProvider>().animationController.reverse();
        }
      }
    });
  }

  ConnectivityCheck(){
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
    super.dispose();
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SvgPicture.asset(
              'assets/icons/no_internet.svg',
              height: 100,
              width: 100,
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              'Something went wrong!',
              style: Theme.of(context).appBarTheme.titleTextStyle,
            ),

            Text(
              'Please turn on your internet connection',
              style: Theme.of(context).appBarTheme.titleTextStyle,
            ),
            const SizedBox(
              height: 20,
            ),
            _isLoading
                ? CircularProgressIndicator(
              color: Theme.of(context).primaryColor,
            )
                : TextButton(
              child: const Text('Retry'),
              style: ElevatedButton.styleFrom(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                primary: Theme.of(context).primaryColor,
                onPrimary: Theme.of(context).cardColor,
              ),
              onPressed: () {
                setState(() {
                  _isLoading = true;

                  if(_connectionStatus == 'ConnectivityResult.wifi'||_connectionStatus == 'ConnectivityResult.mobile'){
                    Get.offAndToNamed('/LoginPage');
                  }

                });

                Future.delayed(const Duration(seconds: 3), () {
                  NoInternet.initConnectivity();
                  setState(() {
                    _isLoading = false;
                  });
                });
              },
            )
          ],
        ),
      ),
    );
  }
}
