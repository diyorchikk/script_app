import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:script_app/screens/statistika_screen.dart';
import '../resources/app_icons.dart';
import '../resources/colors.dart';
import '../resources/styles.dart';
import '../widgets/pop_menu.dart';
import '../widgets/w_cards.dart';
import 'calling_cards.dart';

class SkriptlarScreen extends StatefulWidget {
  const SkriptlarScreen({Key? key}) : super(key: key);

  @override
  State<SkriptlarScreen> createState() => _SkriptlarScreenState();
}

class _SkriptlarScreenState extends State<SkriptlarScreen> {
  int cardNumber = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: double.infinity,
              color: AppColors.greenBlue,
              padding: const EdgeInsets.only(
                left: 20,
                right: 20,
                bottom: 20,
                top: 20,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Skriptlar",
                    style: Styles.getTitleStyle().copyWith(fontSize: 18),
                  ),
                  Row(
                    children: [
                      GestureDetector(
                        onTap: () {},
                        child: SvgPicture.asset(AppIcons.search),
                      ),
                      const SizedBox(width: 20),
                      GestureDetector(
                        onTap: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) => const StatistikaScreen(),
                            ),
                          );
                        },
                        child: SvgPicture.asset(AppIcons.spidametr),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                GestureDetector(
                  onTap: () {
                    setState(() {
                      cardNumber++;
                    });
                  },
                  child: Container(
                    width: 130,
                    height: 130,
                    decoration: const BoxDecoration(
                      color: Color(0xFFE9E8E8),
                      borderRadius: BorderRadius.all(
                        Radius.circular(15),
                      ),
                    ),
                    child: Center(
                      child: Container(
                        height: 50,
                        width: 50,
                        decoration: const BoxDecoration(
                          color: Color(0xFFC6C6C6),
                          borderRadius: BorderRadius.all(
                            Radius.circular(6),
                          ),
                        ),
                        child: Center(
                          child: SvgPicture.asset("assets/images/svg/plus.svg"),
                        ),
                      ),
                    ),
                  ),
                ),
                 WCards(
                  onTab: () {
                    Navigator.of(context).push(MaterialPageRoute(builder: (context) => const CallingCards(),),);
                  },
                  cardSvg: AppIcons.spidametr,
                  cardInfo: "O'quvchilar bilan ishlash",
                  cardNumber: 200,
                  cardColor: Colors.blue,
                  svgIcon: true,
                ),
              ],
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  children: [
                    ...List.generate(
                      cardNumber,
                      (index) => Column(
                        children: [
                          WCards(
                            onTab: () {
                              Navigator.of(context).push(MaterialPageRoute(builder: (context) => const CallingCards(),),);
                            },
                            cardSvg: AppIcons.search,
                            cardInfo: "Kurs narxlarini aniqlab olish",
                            cardNumber: 200,
                            cardColor: Colors.blue,
                            svgIcon: false,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    ...List.generate(
                      cardNumber,
                      (index) => Column(
                        children: [
                          WCards(
                            onTab: () {
                              Navigator.of(context).push(MaterialPageRoute(builder: (context) => const CallingCards(),),);
                            },
                            cardSvg: "AppIcons.search",
                            cardInfo: "Kurs narxlarini aniqlab olish",
                            cardNumber: 200,
                            cardColor: Colors.blue,
                            svgIcon: false,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
