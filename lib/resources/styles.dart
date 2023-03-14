import 'package:flutter/cupertino.dart';
import 'colors.dart';

abstract class Styles {
  Styles._();

  static TextStyle getTitleStyle() => const TextStyle(
    fontSize: 14,
    color: CupertinoColors.white,
    fontWeight: FontWeight.w500,
  );
}