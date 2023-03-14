import 'package:flutter/material.dart';
import 'package:script_app/resources/styles.dart';

import '../widgets/buttom.dart';
import '../widgets/w_app_bar.dart';
import '../widgets/w_text_field.dart';
import 'end_of_conversation.dart';

class DataUser extends StatefulWidget {
  const DataUser({Key? key}) : super(key: key);

  @override
  State<DataUser> createState() => _DataUserState();
}

class _DataUserState extends State<DataUser> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const WAppBar(
            name: "Ma’lumot",
          ),
          Padding(
            padding: const EdgeInsets.only(
              left: 20,
              bottom: 10,
              top: 20,
            ),
            child: Text(
              "Ism-Familiya",
              style: Styles.getTitleStyle().copyWith(
                color: Colors.blue,
                fontSize: 12,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              bottom: 10,
              left: 20,
              top: 10,
              right: 20,
            ),
            child: WTextField(
              name: "",
              controller: TextEditingController(),
            ),
          ),
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
              onTab: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => const EndOfConversation(),
                  ),
                );
              },
              bottomColor: Color(0xFF0FA3B1),
              textColor: Colors.white,
              name: "Ma’lumotlarni saqlash",
            ),
          ),
        ],
      ),
    );
  }
}
