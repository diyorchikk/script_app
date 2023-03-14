import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:script_app/resources/styles.dart';

class WCallNumber extends StatelessWidget {
  final String name;
  final String number;
  final GestureTapCallback onTab;

  const WCallNumber({
    Key? key,
    required this.name,
    required this.number,
    required this.onTab,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: const Color(0xFFEDFEFD),
      margin: const EdgeInsets.only(bottom: 20),
      padding: const EdgeInsets.all(20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const CircleAvatar(
            backgroundColor: Colors.green,
          ),
          Column(
            children: [
              Text(
                name,
                style: Styles.getTitleStyle().copyWith(
                  color: const Color(0xFF137F8B),
                ),
              ),
              const SizedBox(height: 6),
              Text(
                number,
                style: Styles.getTitleStyle().copyWith(
                  color: Colors.black,
                ),
              ),
            ],
          ),
          GestureDetector(
              onTap: onTab,
              child: SvgPicture.asset("assets/images/svg/error_man.svg"),),
        ],
      ),
    );
  }
}
