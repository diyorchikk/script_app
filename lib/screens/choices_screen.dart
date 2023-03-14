import 'package:flutter/material.dart';
import 'package:script_app/resources/styles.dart';
import '../resources/colors.dart';
import '../widgets/buttom.dart';
import '../widgets/w_call_number.dart';
import 'data_user.dart';

class ChoicesScreen extends StatelessWidget {
  const ChoicesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
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
              Padding(
                padding: const EdgeInsets.only(
                  left: 20,
                  bottom: 20,
                ),
                child: Text(
                  "1. Dasturlashdan ma’lumotingiz bormi?",
                  style: Styles.getTitleStyle().copyWith(
                    color: Colors.black,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  bottom: 15,
                  left: 20,
                ),
                child: Bottom(
                  onTab: () {},
                  bottomColor: AppColors.greenWhite,
                  textColor: Colors.black,
                  name: "Ha",
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  left: 20,
                  bottom: 15,
                ),
                child: Bottom(
                  onTab: () {},
                  bottomColor: AppColors.greenWhite,
                  textColor: Colors.black,
                  name: "Yo'q",
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  left: 20,
                  bottom: 15,
                ),
                child: Bottom(
                  onTab: () {},
                  bottomColor: AppColors.greenWhite,
                  textColor: Colors.black,
                  name: "Ma'lumotim kam",
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  left: 20,
                  bottom: 15,
                ),
                child: Bottom(
                  onTab: () {},
                  bottomColor: AppColors.greenWhite,
                  textColor: Colors.black,
                  name: "Ozroq bilaman",
                ),
              ),
            ],
          ),
          GestureDetector(
            onTap: () {
              Navigator.of(context).pop();
            },
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: Text(
                "< orqaga",
                style: Styles.getTitleStyle().copyWith(
                  color: const Color(0xFF676767),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
