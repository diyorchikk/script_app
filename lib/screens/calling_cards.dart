import 'package:flutter/material.dart';
import '../resources/app_icons.dart';
import '../widgets/w_call_number.dart';
import '../widgets/w_cards.dart';
import 'choices_screen.dart';
import 'data_user.dart';

class CallingCards extends StatefulWidget {
  const CallingCards({Key? key}) : super(key: key);

  @override
  State<CallingCards> createState() => _CallingCardsState();
}

class _CallingCardsState extends State<CallingCards> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            WCallNumber(
              onTab: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => const DataUser(),
                  ),
                );
              },
              name: "Bobobek Turdiyev",
              number: "+998 66 230 00 15",
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  children: [
                    ...List.generate(
                      3,
                          (index) =>  WCards(
                            onTab: () {
                              Navigator.of(context).push(MaterialPageRoute(builder: (context) => const ChoicesScreen(),),);
                            },
                        cardSvg: AppIcons.search,
                        cardInfo: "Kurs narxlarini aniqlab olish",
                        cardNumber: 200,
                        cardColor: Colors.blue,
                        svgIcon: true,
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    ...List.generate(
                      3,
                          (index) => WCards(
                            onTab: () {
                              Navigator.of(context).push(MaterialPageRoute(builder: (context) => const ChoicesScreen(),),);
                            },
                        cardSvg: AppIcons.spidametr,
                        cardInfo: "Online kursga yozilish",
                        cardNumber: 200,
                        cardColor: Colors.blue,
                        svgIcon: true,
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
