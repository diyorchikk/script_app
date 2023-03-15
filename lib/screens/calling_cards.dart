import 'package:flutter/material.dart';
import '../resources/app_icons.dart';
import '../widgets/w_call_number.dart';
import '../widgets/w_cards.dart';
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
            Column(
              children: [
                ...List.generate(
                  1,
                      (index) => Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Expanded(
                        child: WCards(
                          onTab: () {
                            Navigator.of(context).push(MaterialPageRoute(builder: (context) => const CallingCards(),),);
                          },
                          cardSvg: AppIcons.spidametr,
                          cardInfo: "Kurs narxlarini aniqlab olish",
                          cardNumber: 200,
                          cardColor: Colors.blue,
                          svgIcon: true,
                        ),
                      ),
                      Expanded(
                        child: WCards(
                          onTab: () {
                            Navigator.of(context).push(MaterialPageRoute(builder: (context) => const CallingCards(),),);
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
                ),
              ],
            ),

          ],
        ),
      ),
    );
  }
}
