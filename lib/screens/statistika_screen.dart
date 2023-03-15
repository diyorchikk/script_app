import 'package:flutter/material.dart';
import '../widgets/w_app_bar.dart';
import '../widgets/w_cards.dart';

class StatistikaScreen extends StatefulWidget {
  const StatistikaScreen({Key? key}) : super(key: key);

  @override
  State<StatistikaScreen> createState() => _StatistikaScreenState();
}

class _StatistikaScreenState extends State<StatistikaScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const WAppBar(
            name: "Statistika",
          ),
          const SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              ...List.generate(
                2,
                (index) => Expanded(
                  child: WCards(
                    onTab: () {},
                    cardSvg: "",
                    cardInfo: "ta mijoz sotuv qildi",
                    cardNumber: 200,
                    cardColor: Colors.blue,
                    svgIcon: false,
                  ),
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Expanded(
                child: WCards(
                  onTab: () {},
                  cardSvg: "",
                  cardInfo: "ta mijoz bilan gplashadi",
                  cardNumber: 200,
                  cardColor: Colors.blue,
                  svgIcon: false,
                ),
              ),
              const Expanded(
                child: SizedBox(width: 130),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
