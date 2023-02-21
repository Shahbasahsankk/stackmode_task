import 'package:flutter/material.dart';

Widget currentBalance() {
  return Column(
    children: const [
      Text(
        'Current Balance',
        style: TextStyle(
          color: Color(0xffd7caf3),
          fontWeight: FontWeight.w300,
        ),
      ),
      SizedBox(height: 15),
      Text(
        '\$2,33,456',
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 30,
          color: Colors.white,
        ),
      ),
    ],
  );
}
