import 'package:flutter/material.dart';
import 'package:script_app/resources/app_icons.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:script_app/resources/styles.dart';
import '../widgets/buttom.dart';
import 'Skriptlar_screen.dart';

class EndOfConversation extends StatefulWidget {
  const EndOfConversation({Key? key}) : super(key: key);

  @override
  State<EndOfConversation> createState() => _EndOfConversationState();
}

class _EndOfConversationState extends State<EndOfConversation> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(20),
              child: SvgPicture.asset(AppIcons.illustration),
            ),
            Text(
              "Tabriklaymiz!",
              style: Styles.getTitleStyle().copyWith(
                color: Colors.black,
                fontSize: 18,
              ),
            ),
            const SizedBox(height: 8),
            Text(
              "Suhbat yakunlandi va barcha",
              style: Styles.getTitleStyle().copyWith(
                color: Colors.black,
              ),
            ),
            const SizedBox(height: 5),
            Text(
              "ma’lumotlar saqlab olindi",
              style: Styles.getTitleStyle().copyWith(
                color: Colors.black,
              ),
            ),
            const SizedBox(height: 10),
            SizedBox(
              height: 35,
              child: Bottom(
                onTab: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => const SkriptlarScreen(),
                    ),
                  );
                },
                bottomColor: const Color(0xFF0FA3B1),
                textColor: Colors.white,
                name: "Bosh sahifaga o’tish",
              ),
            ),
          ],
        ),
      ),
    );
  }
}
