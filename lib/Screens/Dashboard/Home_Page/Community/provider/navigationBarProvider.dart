import 'package:flutter/material.dart';

class NavigationBarProvider with ChangeNotifier {
  late AnimationController _animationController;

  void setAnimationController(AnimationController animationController) {
    _animationController = animationController;
    notifyListeners();
  }

  AnimationController get animationController => _animationController;
}
