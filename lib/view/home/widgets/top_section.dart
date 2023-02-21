import 'package:flutter/material.dart';
import 'package:interview_sample/view/home/widgets/spent_recieved_container.dart';

import 'above_widget.dart';
import 'current_balance.dart';

Widget topSection() {
  return Column(
    children: [
      const SizedBox(height: 50),
      aboveWidget(),
      const SizedBox(height: 25),
      currentBalance(),
      const SizedBox(height: 25),
      spentRecievedWidget(),
      const SizedBox(height: 10),
      const Text(
        'In Sepetmber',
        style: TextStyle(
          color: Color(0xFFaa8ee5),
          fontSize: 13,
        ),
      ),
      const SizedBox(height: 20),
    ],
  );
}
