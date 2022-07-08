
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../provider/navigationBarProvider.dart';
import 'package:provider/src/provider.dart';

import '../screens/NU_Portal_WebView.dart';

class NU_Portal extends StatefulWidget {
  const NU_Portal();
  @override
  State<NU_Portal> createState() => _NU_PortalState();
}

class _NU_PortalState extends State<NU_Portal> with TickerProviderStateMixin {


  final GlobalKey<NavigatorState> _homeNavigatorKey =
      GlobalKey<NavigatorState>();
  late AnimationController navigationContainerAnimationController =
      AnimationController(
          vsync: this, duration: const Duration(milliseconds: 500));
  @override
  void dispose() {
    navigationContainerAnimationController.dispose();
    super.dispose();

  }

  @override
  void initState() {
    super.initState();



    Future.delayed(Duration.zero, () {
      context
          .read<NavigationBarProvider>()
          .setAnimationController(navigationContainerAnimationController);
    });
  }


  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      // statusBarColor: Theme.of(context).scaffoldBackgroundColor,
      // statusBarIconBrightness: Theme.of(context).brightness == Brightness.dark
      //     ? Brightness.light
      //     : Brightness.dark,
    ));
    return WillPopScope(
      onWillPop: () => _navigateBack(context),
      child: SafeArea(
        child: Scaffold(
          extendBody: false,
          body: Navigator(
            key: _homeNavigatorKey,
            initialRoute: 'home',
            onGenerateRoute: (routeSettings) {
              return MaterialPageRoute(builder: (_) => NU_Portal_WebView());
            },
          ),
        ),
      ),
    );
  }

  Future<bool> _navigateBack(BuildContext context) async {
    if (mounted) {
      if (!context
          .read<NavigationBarProvider>()
          .animationController
          .isAnimating) {
        context.read<NavigationBarProvider>().animationController.reverse();
      }
    }
    final isFirstRouteInCurrentTab =
        !await _homeNavigatorKey.currentState!.maybePop();

    if (!isFirstRouteInCurrentTab) {

      return Future.value(false);
    } else {
      // showDialog(
      //     context: context,
      //     builder: (context) => AlertDialog(
      //           title: const Text('Do you want to exit app?'),
      //           actions: <Widget>[
      //             TextButton(
      //               onPressed: () {
      //                 Navigator.of(context).pop();
      //               },
      //               child: const Text('No'),
      //             ),
      //             TextButton(
      //               onPressed: () {
      //                 SystemNavigator.pop();
      //               },
      //               child: const Text('Yes'),
      //             ),
      //           ],
      //         ));
      // Get.off('/HomePage');


      return Future.value(true);
    }
  }



}
