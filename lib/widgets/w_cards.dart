import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:script_app/resources/colors.dart';
import '../resources/app_icons.dart';
import '../resources/styles.dart';

class WCards extends StatelessWidget {
  final Color cardColor;
  final GestureTapCallback onTab;
  final bool svgIcon;
  final int cardNumber;
  final String cardInfo;
  final String cardSvg;

  const WCards({
    Key? key,
    required this.cardColor,
    required this.onTab,
    required this.cardSvg,
    required this.cardInfo,
    required this.cardNumber,
    required this.svgIcon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTab,
      child: Container(
        height: 130,
        width: 130,
        decoration: const BoxDecoration(
          color: AppColors.greenWhite,
          borderRadius: BorderRadius.all(
            Radius.circular(8),
          ),
        ),
        margin: const EdgeInsets.all(15),
        padding: const EdgeInsets.only(
          left: 18,
          top: 20,
          bottom: 20,
          right: 20,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            svgIcon == true
                ? SvgPicture.asset(cardSvg)
                : Text(
                    "$cardNumber",
                    style: Styles.getTitleStyle().copyWith(
                      color: Colors.black,
                      fontSize: 18,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
            SizedBox(
              height: svgIcon == true ? 25 : 15,
            ),
            Expanded(
              child: Text(
                cardInfo,
                style: Styles.getTitleStyle().copyWith(
                  color: Colors.black,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
