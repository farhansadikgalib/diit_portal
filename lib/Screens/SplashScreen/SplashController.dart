
import 'package:get/get.dart';

class SplashController extends GetxController {
  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    moveToNext();
  }

  Future<void> moveToNext() async {
    await Future.delayed(Duration(milliseconds: 4000), () {});
    Get.offAndToNamed('/LoginPage');
  }
}
