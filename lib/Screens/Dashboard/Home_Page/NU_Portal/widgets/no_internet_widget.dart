import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:provider/src/provider.dart';
import '../provider/navigationBarProvider.dart';
import '../widgets/no_internet.dart';

class NoInternetWidget extends StatefulWidget {
  const NoInternetWidget({Key? key}) : super(key: key);

  @override
  _NoInternetWidgetState createState() => _NoInternetWidgetState();
}

class _NoInternetWidgetState extends State<NoInternetWidget> {
  bool _isLoading = false;

  @override
  void initState() {
    super.initState();

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

  @override
  void dispose() {
    super.dispose();
  }



  @override
  Widget build(BuildContext context) {
    return Center(
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
    );
  }
}
