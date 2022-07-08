import 'package:firebase_database/firebase_database.dart';
import 'package:get/get.dart';
import 'package:onesignal_flutter/onesignal_flutter.dart';

class SplashController extends GetxController {
  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    moveToNext();
  }

  Future<void> moveToNext() async {
    await Future.delayed(const Duration(milliseconds: 4000), () {});
    FirebaseDatabase.instance.setPersistenceEnabled(true);
    Get.offAndToNamed('/LoginPage');
  }
}
