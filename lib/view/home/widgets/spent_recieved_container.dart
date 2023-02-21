import 'package:flutter/material.dart';

Widget spentRecievedWidget() {
  return Container(
    width: 190,
    height: 70,
    decoration: BoxDecoration(
      color: const Color(0xFF7f55d9),
      borderRadius: BorderRadius.circular(8),
    ),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        spentRecieved('\$342.56', 'Spent'),
        spentRecieved('\$8931.12', 'Recieved')
      ],
    ),
  );
}

Widget spentRecieved(String text1, String text2) {
  return Column(
    mainAxisAlignment: MainAxisAlignment.center,
    crossAxisAlignment: CrossAxisAlignment.center,
    children: [
      Text(
        text1,
        style: const TextStyle(
            color: Colors.white, fontSize: 17, fontWeight: FontWeight.bold),
      ),
      const SizedBox(height: 3),
      Text(
        text2,
        style: const TextStyle(
          color: Color(0xFFaa8ee5),
        ),
      ),
    ],
  );
}
