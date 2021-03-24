import 'package:flutter/material.dart';
import '../../constants.dart';

class ButtonColor extends MaterialStateColor {
  static const Color _defaultColor = kColorAccent;
  static const Color _pressedColor = kColorAccent;
  static const int _default = 0xcafefeed;

  const ButtonColor() : super(_default);

  @override
  Color resolve(Set<MaterialState> states) {
    if (states.contains(MaterialState.pressed)) {
      return _pressedColor;
    }
    return _defaultColor;
  }
}
