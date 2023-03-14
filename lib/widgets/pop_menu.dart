import 'package:flutter/material.dart';
import 'package:script_app/resources/app_icons.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../resources/styles.dart';
import 'buttom.dart';

class PopMenu extends StatelessWidget {
  const PopMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      child: Center(
        child: Column(
          children: [
            SvgPicture.asset(AppIcons.smile),
            const SizedBox(height: 20),
            Text(
              "Suhbat jarayonida nosozlik",
              style: Styles.getTitleStyle().copyWith(
                color: Colors.black54,
                fontSize: 15,
              ),
            ),
            const SizedBox(height: 8),
            Text(
              "ro'y berdi.",
              style: Styles.getTitleStyle().copyWith(
                color: Colors.black54,
                fontSize: 15,
              ),
            ),
            const SizedBox(height: 10),
            Text(
              "Ma’lumotlarni saqlab qolishni",
              style: Styles.getTitleStyle().copyWith(
                color: Colors.black,
                fontSize: 15,
              ),
            ),
            const SizedBox(height: 8),
            Text(
              "xohlaysizmi?",
              style: Styles.getTitleStyle().copyWith(
                color: Colors.black,
                fontSize: 15,
              ),
            ),
            const SizedBox(height: 20),
            Container(
              margin: const EdgeInsets.only(
                top: 10,
                left: 20,
                bottom: 20,
                right: 20,
              ),
              height: 45,
              width: double.infinity,
              child: Bottom(
                onTab: () {},
                name: "Ma’lumotlarni saqlash",
                textColor: Colors.white,
                bottomColor: const Color(0xFF0FA3B1),
              ),
            ),
            GestureDetector(
              onTap: () {},
              child: Text(
                "O’chirib yuborish",
                style: Styles.getTitleStyle().copyWith(
                  color: Colors.red,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
