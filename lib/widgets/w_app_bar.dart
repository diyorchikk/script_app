import 'package:flutter/material.dart';
import 'package:script_app/resources/app_icons.dart';
import 'package:script_app/resources/colors.dart';
import '../resources/styles.dart';
import 'package:flutter_svg/flutter_svg.dart';

class WAppBar extends StatelessWidget {
  final String name;

  const WAppBar({
    Key? key,
    required this.name,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: AppColors.greenBlue,
      padding: const EdgeInsets.only(
        left: 20,
        right: 20,
        bottom: 20,
        top: 20,
      ),
      child: Row(
        children: [
          GestureDetector(
            onTap: () {
              Navigator.of(context).pop();
            },
            child: SvgPicture.asset(AppIcons.arrowLeft),
          ),
          const SizedBox(width: 20),
          Text(
            name,
            style: Styles.getTitleStyle().copyWith(fontSize: 18),
          ),
        ],
      ),
    );
  }
}
