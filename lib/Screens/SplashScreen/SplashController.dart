
import 'package:get/get.dart';
import 'package:onesignal_flutter/onesignal_flutter.dart';

class SplashController extends GetxController {
  static final String oneSignalId= "6d6a341b-9a0c-4637-9ba7-fd600bff21a0";

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    intitPlatformState();
    moveToNext();



  }

  Future<void> moveToNext() async {
    await Future.delayed(Duration(milliseconds: 4000), () {});
    Get.offAndToNamed('/LoginPage');
  }

  Future<void> intitPlatformState() async {
    OneSignal.shared.setAppId(oneSignalId);
  }
}
