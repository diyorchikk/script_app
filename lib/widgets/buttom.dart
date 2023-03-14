import 'package:flutter/material.dart';

import '../resources/colors.dart';
import '../resources/styles.dart';

class Bottom extends StatelessWidget {
  final String name;
  final Color bottomColor;
  final GestureTapCallback onTab;
  final Color textColor;

  const Bottom({
    Key? key,
    required this.name,
    required this.onTab,
    required this.bottomColor,
    required this.textColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ButtonStyle(
        backgroundColor:
        MaterialStatePropertyAll(bottomColor),
      ),
      onPressed: onTab ,
      child: Text(
        name,
        style: Styles.getTitleStyle().copyWith(
          color: textColor,
        ),
      ),
    );
  }
}
