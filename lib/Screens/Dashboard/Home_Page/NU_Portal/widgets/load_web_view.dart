// ignore_for_file: prefer_const_constructors

import 'dart:io';
import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';
import 'package:provider/src/provider.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:webview_cookie_manager/webview_cookie_manager.dart';
import '../provider/navigationBarProvider.dart';
import '../widgets/not_found.dart';


class LoadWebView extends StatefulWidget {
  String url = '';
  bool flag = true;
  LoadWebView(this.url, this.flag);

  @override
  _LoadWebViewState createState() => _LoadWebViewState();
}

class _LoadWebViewState extends State<LoadWebView>
    with SingleTickerProviderStateMixin {
  final GlobalKey webViewKey = GlobalKey();
  late InAppWebViewController _webViewController;
  final Completer<InAppWebViewController> _completer =
      Completer<InAppWebViewController>();
  CookieManager cookieManager = CookieManager.instance();
  String url = '';
  int _previousScrollY = 0;

  bool showErrorPage = false;
  bool slowInternetPage = false;
  late AnimationController animationController;
  late Animation<double> animation;
  final expiresDate =
      DateTime.now().add(Duration(days: 3)).millisecondsSinceEpoch;
  @override
  void initState() {
    super.initState();


    animationController = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 5000),
    )..repeat();
    animation = Tween(begin: 0.0, end: 1.0).animate(animationController)
      ..addListener(() {});
  }

  @override
  void setState(fn) {
    if (mounted) super.setState(fn);
  }

  @override
  void dispose() {
    animationController.dispose();
    super.dispose();
  }

  InAppWebViewGroupOptions options = InAppWebViewGroupOptions(
      crossPlatform: InAppWebViewOptions(
          useShouldOverrideUrlLoading: true,
          mediaPlaybackRequiresUserGesture: false,
          useOnDownloadStart: true,
          javaScriptEnabled: true,
          cacheEnabled: true,
          userAgent:
              "Mozilla/5.0 (Linux; Android 9; LG-H870 Build/PKQ1.190522.001) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/83.0.4103.106 Mobile Safari/537.36",
          verticalScrollBarEnabled: false,
          horizontalScrollBarEnabled: false,
          transparentBackground: true),
      android: AndroidInAppWebViewOptions(
        useHybridComposition: true,
        thirdPartyCookiesEnabled: true,
        allowFileAccess: true,
      ),
      ios: IOSInAppWebViewOptions(
          allowsInlineMediaPlayback: true, sharedCookiesEnabled: true));

  @override
  Widget build(BuildContext context) {
    bool _validURL = Uri.parse(widget.url).host == '' ? false : true;

    return WillPopScope(
      onWillPop: () => _exitApp(context),
      child: !widget.flag
          ? Container(
              color: Colors.transparent,
              child: InAppWebView(
                key: webViewKey,
                initialData: InAppWebViewInitialData(
                    baseUrl: Uri.dataFromString(
                      widget.url,
                    ),
                    data: widget.url,
                    mimeType: 'text/html',
                    encoding: "utf8"),
                initialOptions: InAppWebViewGroupOptions(
                    crossPlatform: InAppWebViewOptions(
                        useShouldOverrideUrlLoading: true,
                        mediaPlaybackRequiresUserGesture: true,
                        useOnDownloadStart: true,
                        cacheEnabled: true,
                        userAgent:
                            "Mozilla/5.0 (Linux; Android 9; LG-H870 Build/PKQ1.190522.001) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/83.0.4103.106 Mobile Safari/537.36",
                        javaScriptEnabled: true,
                        transparentBackground: true),
                    android: AndroidInAppWebViewOptions(
                        useHybridComposition: true, defaultFontSize: 32),
                    ios: IOSInAppWebViewOptions(
                      allowsInlineMediaPlayback: true,
                    )),
               gestureRecognizers: <Factory<OneSequenceGestureRecognizer>>[
                  Factory<OneSequenceGestureRecognizer>(
                    () => EagerGestureRecognizer(),
                  ),
                ].toSet(),
                onWebViewCreated: (controller) {
                  _webViewController = controller;
                },
                onScrollChanged: (controller, x, y) async {
                  int currentScrollY = y;

                  if (currentScrollY > _previousScrollY) {
                    _previousScrollY = currentScrollY;
                    if (!context
                        .read<NavigationBarProvider>()
                        .animationController
                        .isAnimating) {
                      context
                          .read<NavigationBarProvider>()
                          .animationController
                          .forward();
                    }
                  } else {
                    _previousScrollY = currentScrollY;

                    if (!context
                        .read<NavigationBarProvider>()
                        .animationController
                        .isAnimating) {
                      context
                          .read<NavigationBarProvider>()
                          .animationController
                          .reverse();
                    }
                  }
                },
                onLoadStart: (controller, url) {
                  setState(() {
                    this.url = url.toString();
                  });
                },
                onLoadStop: (controller, url) async {
                },
                onLoadError: (controller, url, code, message) {
                  setState(() {
                    slowInternetPage = true;
                  });
                },
                onLoadHttpError: (controller, url, statusCode, description) {
                  setState(() {
                    showErrorPage = true;
                  });
                },
                onProgressChanged: (controller, progress) {
                  if (progress == 100) {
                  }
                  setState(() {
                  });
                },
                shouldOverrideUrlLoading: (controller, navigationAction) async {
                  var url = navigationAction.request.url.toString();
                  var uri = Uri.parse(url);
                  if (Platform.isIOS && url.contains("geo")) {
                    var newUrl =
                        url.replaceFirst('geo://', 'http://maps.apple.com/');

                    if (await canLaunch(newUrl)) {
                      await launch(newUrl);
                      return NavigationActionPolicy.CANCEL;
                    } else {
                      throw 'Could not launch $newUrl';
                    }
                  } else if (url.contains("tel:") ||
                      url.contains("mailto:") ||
                      url.contains("play.google.com") ||
                      url.contains("maps") ||
                      url.contains("messenger.com")) {
                    url = Uri.encodeFull(url);
                    try {
                      if (await canLaunch(url)) {
                        launch(url);
                      } else {
                        launch(url);
                      }
                      return NavigationActionPolicy.CANCEL;
                    } catch (e) {
                      launch(url);
                      return NavigationActionPolicy.CANCEL;
                    }
                  } else if (![
                    "http",
                    "https",
                    "file",
                    "chrome",
                    "data",
                    "javascript",
                    "about"
                  ].contains(uri.scheme)) {
                    if (await canLaunch(url)) {
                      // Launch the App
                      await launch(
                        url,
                      );
                      // and cancel the request
                      return NavigationActionPolicy.CANCEL;
                    }
                  }

                  return NavigationActionPolicy.ALLOW;
                },
              ),
            )
          : Stack(
              children: [
                _validURL
                    ? InAppWebView(
                        key: webViewKey,
                        initialUrlRequest:
                            URLRequest(url: Uri.parse(widget.url)),
                        initialOptions: options,
                        // pullToRefreshController: _pullToRefreshController,
                        gestureRecognizers:
                            <Factory<OneSequenceGestureRecognizer>>[
                          Factory<OneSequenceGestureRecognizer>(
                            () => EagerGestureRecognizer(),
                          ),
                        ].toSet(),
                        onWebViewCreated: (controller) async {
                          _webViewController = controller;

                          await cookieManager.setCookie(
                            url: Uri.parse(widget.url),
                            name: "myCookie",
                            value: "myValue",
                            expiresDate: expiresDate,
                            isHttpOnly: false,
                            isSecure: true,
                          );
                        },
                        onScrollChanged: (controller, x, y) async {
                          int currentScrollY = y;

                          if (currentScrollY > _previousScrollY) {
                            _previousScrollY = currentScrollY;
                            if (!context
                                .read<NavigationBarProvider>()
                                .animationController
                                .isAnimating) {
                              context
                                  .read<NavigationBarProvider>()
                                  .animationController
                                  .forward();
                            }
                          } else {
                            _previousScrollY = currentScrollY;

                            if (!context
                                .read<NavigationBarProvider>()
                                .animationController
                                .isAnimating) {
                              context
                                  .read<NavigationBarProvider>()
                                  .animationController
                                  .reverse();
                            }
                          }
                        },
                        onLoadStart: (controller, url) async {
                          setState(() {
                            this.url = url.toString();
                            // isInitialLoaded = false;
                          });
                        },
                        androidOnGeolocationPermissionsShowPrompt:
                            (controller, origin) async {
                          if (Platform.isAndroid) {
                            await Permission.location.request();
                          }
                        },
                        androidOnPermissionRequest:
                            (controller, origin, resources) async {
                          if (Platform.isAndroid) {
                            if (resources.contains(
                                'android.webkit.resource.AUDIO_CAPTURE')) {
                              await Permission.microphone.request();
                            }
                            if (resources.contains(
                                'android.webkit.resource.VIDEO_CAPTURE')) {
                              await Permission.camera.request();
                            }
                          }
                          return PermissionRequestResponse(
                              resources: resources,
                              action: PermissionRequestResponseAction.GRANT);
                        },
                        onLoadStop: (controller, url) async {
                          // _pullToRefreshController.endRefreshing();
                          if (Platform.isAndroid) {
                            List<Cookie> cookies =
                                await cookieManager.getCookies(url: url!);
                          }
                          if (Platform.isIOS) {
                            cookieManager.ios.getAllCookies();
                          }
                          // Removes header and footer from page
                          if (true == true) {
                            _webViewController
                                .evaluateJavascript(
                                    source: "javascript:(function() { " +
                                        "var head = document.getElementsByTagName('header')[0];" +
                                        "head.parentNode.removeChild(head);" +
                                        "})()")
                                .then((value) => debugPrint(
                                    'Page finished loading Javascript'))
                                .catchError(
                                    (onError) => debugPrint('$onError'));
                          }
                          if (true == true) {
                            _webViewController
                                .evaluateJavascript(
                                    source: "javascript:(function() { " +
                                        "var footer = document.getElementsByTagName('footer')[0];" +
                                        "footer.parentNode.removeChild(footer);" +
                                        "})()")
                                .then((value) => debugPrint(
                                    'Page finished loading Javascript'))
                                .catchError(
                                    (onError) => debugPrint('$onError'));
                          }
                        },
                        onLoadError: (controller, url, code, message) {
                          // _pullToRefreshController.endRefreshing();
                          print(message);
                          setState(() {
                            slowInternetPage = true;
                          });
                        },
                        onLoadHttpError:
                            (controller, url, statusCode, description) {
                          print(description);
                          // _pullToRefreshController.endRefreshing();

                          setState(() {
                            showErrorPage = true;
                          });
                        },
                        onProgressChanged: (controller, progress) {
                          if (progress == 100) {
                            // _pullToRefreshController.endRefreshing();
                          }
                          setState(() {
                            // this.progress = progress / 100;
                            // urlController.text = this.url;
                          });
                        },
                        shouldOverrideUrlLoading:
                            (controller, navigationAction) async {
                          var url = navigationAction.request.url.toString();
                          var uri = Uri.parse(url);
                          if (Platform.isIOS && url.contains("geo")) {
                            var newUrl = url.replaceFirst(
                                'geo://', 'http://maps.apple.com/');

                            if (await canLaunch(newUrl)) {
                              await launch(newUrl);
                              return NavigationActionPolicy.CANCEL;
                            } else {
                              throw 'Could not launch $newUrl';
                            }
                          } else if (url.contains("tel:") ||
                              url.contains("mailto:") ||
                              url.contains("play.google.com") ||
                              url.contains("maps") ||
                              url.contains("messenger.com")) {
                            url = Uri.encodeFull(url);
                            try {
                              if (await canLaunch(url)) {
                                launch(url);
                              } else {
                                launch(url);
                              }
                              return NavigationActionPolicy.CANCEL;
                            } catch (e) {
                              launch(url);
                              return NavigationActionPolicy.CANCEL;
                            }
                          } else if (![
                            "http",
                            "https",
                            "file",
                            "chrome",
                            "data",
                            "javascript",
                            "about"
                          ].contains(uri.scheme)) {
                            if (await canLaunch(url)) {
                              // Launch the App
                              await launch(
                                url,
                              );
                              // and cancel the request
                              return NavigationActionPolicy.CANCEL;
                            }
                          }

                          return NavigationActionPolicy.ALLOW;
                        },
                        onDownloadStart: (controller, url) async {
                          requestPermission().then((status) async {
                            if (status == true) {
                              if (await canLaunch(url.toString())) {
                                // Launch the App
                                await launch(url.toString(),
                                    forceSafariVC: false, forceWebView: false);

                                // and cancel the request
                              }
                            } else {
                              ScaffoldMessenger.of(context)
                                  .showSnackBar(SnackBar(
                                content: const Text('Permision denied'),
                              ));
                            }
                          });
                        },
                        onUpdateVisitedHistory:
                            (controller, url, androidIsReload) {
                          setState(() {});
                        },
                        onCloseWindow: (controller) async {
                            // _webViewController.evaluateJavascript(source:'document.cookie = "token=$token"');
                        },
                      )
                    : Center(
                        child: Text(
                        'Url is not valid',
                        style: Theme.of(context).textTheme.subtitle1,
                      )),
                showErrorPage
                    ? Center(
                        child: NotFound(
                            _webViewController,
                            'Something went wrong!',
                            'Page Not Found'))
                    : SizedBox(height: 0, width: 0),
                slowInternetPage
                    ? Center(
                        child: NotFound(
                            _webViewController,
                            'Something went wrong!',
                            'Page Not Found'))
                    : SizedBox(height: 0, width: 0),
                // SizeTransition(
                //         sizeFactor: animation,
                //         axis: Axis.horizontal,
                //         child: Container(
                //           color: Colors.white,
                //           width: MediaQuery.of(context).size.width,
                //           // decoration: BoxDecoration(
                //           //   gradient: LinearGradient(
                //           //     colors: [
                //           //       Theme.of(context).progressIndicatorTheme.color!,
                //           //       Theme.of(context)
                //           //           .progressIndicatorTheme
                //           //           .refreshBackgroundColor!,
                //           //       Theme.of(context)
                //           //           .progressIndicatorTheme
                //           //           .linearTrackColor!,
                //           //     ],
                //           //     stops: const [0.1, 0.5, 1.0],
                //           //   ),
                //           // ),
                //           child: SizedBox(
                //             height: 1.0,
                //           ),
                //         ),
                //       )
                //     : Container(),
              ],
            ),
    );
  }

  Future<bool> _exitApp(BuildContext context) async {
    if (mounted) {
      if (!context
          .read<NavigationBarProvider>()
          .animationController
          .isAnimating) {
        context.read<NavigationBarProvider>().animationController.reverse();
      }
    }
    if (await _webViewController.canGoBack()) {
      _webViewController.goBack();
      return Future.value(false);
    } else {
      return Future.value(true);
    }
  }

  Future<bool> requestPermission() async {
    final status = await Permission.storage.status;

    if (status == PermissionStatus.granted) {
      return true;
    } else if (status != PermissionStatus.granted) {
      //
      final result = await Permission.storage.request();
      if (result == PermissionStatus.granted) {
        return true;
      } else {
        // await openAppSettings();
        return false;
      }
    }
    return true;
  }
}
